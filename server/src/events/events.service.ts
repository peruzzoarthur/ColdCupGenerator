import { HttpException, HttpStatus, Injectable } from "@nestjs/common";
import { CreateEventDto } from "./dto/create-event.dto";
import { UpdateEventDto } from "./dto/update-event.dto";
import { PrismaService } from "src/prisma.service";
import { RegisterDoublesInEventDto } from "./dto/register-doubles-event.dto";
import { CategoriesService } from "src/categories/categories.service";
import { GetEventByIdDto } from "./dto/get-event-by-id.dto";
import { Category, Double } from "@prisma/client";
import { MatchesService } from "src/matches/matches.service";
import { CreateScheduleDto } from "./dto/create-schedule.dto";
import { ActivateEventDto } from "./dto/activate-event.dto";

type Day = {
  day: number;
  timeOfFirstMatch: number;
  timeOfLastMatch: number;
  date: string;
  matchDuration: number;
};
@Injectable()
export class EventsService {
  constructor(
    private readonly prismaService: PrismaService,
    private readonly categoriesService: CategoriesService,
    private readonly matchesService: MatchesService
  ) {}
  async createEvent(createEventDto: CreateEventDto) {
    const placesToConnect = createEventDto.placesIds.map((id) => ({ id }));
    const categoriesToConnect = createEventDto.categoriesIds.map((id) => ({
      id,
    }));
    const courtsToConnect = createEventDto.courtsIds.map((id) => ({
      id,
    }));

    const event = await this.prismaService.event.create({
      data: {
        name: createEventDto.name,
        categories: {
          connect: categoriesToConnect,
        },
        places: {
          connect: placesToConnect,
        },
        courts: {
          connect: courtsToConnect,
        },
        startDate: createEventDto.startDate,
        finishDate: createEventDto.finishDate,
        timeOfFirstMatch: Number(createEventDto.timeOfFirstMatch),
        timeOfLastMatch: Number(createEventDto.timeOfLastMatch),
        matchDurationInMinutes: Number(createEventDto.matchDurationInMinutes),
      },
      select: {
        id: true,
        categories: true,
        name: true,
        places: true,
        startDate: true,
        finishDate: true,
      },
    });

    return event;
  }

  async createSchedule(createScheduleDto: CreateScheduleDto): Promise<Day[]> {
    let daysArray: Day[] = [];
    const oneDayInMs = 86400000;
    const oneHourInMs = 3600000;
    const oneMinInMs = 60000;
    const firstDay = new Date(createScheduleDto.startDate);
    // console.log(firstDay.valueOf());
    const lastDay = new Date(createScheduleDto.finishDate);
    // console.log(lastDay);

    const days = Math.round(
      (lastDay.valueOf() - firstDay.valueOf()) / oneDayInMs
    );
    console.log(`Days: ${days}`);

    for (let i = 0; i <= days; i++) {
      const date = new Date(firstDay.valueOf() + i * oneDayInMs);
      console.log(date);
      daysArray.push({
        day: i + 1,
        date: date.toISOString(),
        timeOfFirstMatch: createScheduleDto.timeOfFirstMatch,
        timeOfLastMatch: createScheduleDto.timeOfLastMatch,
        matchDuration: createScheduleDto.matchDurationInMinutes,
      });
    }

    for (let i = 0; i < daysArray.length; i++) {
      console.log(new Date(daysArray[i].date).valueOf());
      const initialTime =
        new Date(daysArray[i].date).valueOf() +
        daysArray[i].timeOfFirstMatch * oneHourInMs;
      const hoursPlaying =
        daysArray[i].timeOfLastMatch - daysArray[i].timeOfFirstMatch;
      const matchDuration = daysArray[i].matchDuration * oneMinInMs;
      for (
        let j = initialTime;
        j <= initialTime + oneHourInMs * hoursPlaying;
        j += matchDuration
      ) {
        console.log(new Date(j)); // todo instead of console.log call for this.prismaServe.matchDates.create
        await this.prismaService.matchDate.create({
          data: {
            start: new Date(j),
            finish: new Date(j + matchDuration),
            eventId: createScheduleDto.id,
          },
        });
      }
    }
    return daysArray;
  }

  async findAllEvents() {
    return await this.prismaService.event.findMany({
      select: {
        id: true,
        name: true,
        places: true,
        courts: true,
        startDate: true,
        finishDate: true,
        timeOfFirstMatch: true,
        timeOfLastMatch: true,
        matchDurationInMinutes: true,
        matches: {
          select: {
            number: true,
            id: true,
            winner: true,
            category: {
              select: {
                level: true,
                type: true,
              },
            },
            categoryId: true,
            doubles: {
              select: {
                players: true,
                id: true,
              },
            },
            eventId: true,
            sets: true,
            isFinished: true,
          },
        },
        eventDoubles: {
          select: {
            double: {
              select: {
                players: true,
                matchesWins: true,
              },
            },
            category: true,
          },
        },
        isActive: true,
        categories: {
          select: {
            id: true,
            type: true,
            level: true,
            eventDoubles: {
              select: {
                double: {
                  select: {
                    players: true,
                    id: true,
                  },
                },
              },
            },
          },
        },
      },
    });
  }

  async registerDoublesInEvent(
    registerDoublesInEventDto: RegisterDoublesInEventDto
  ) {
    const doublesToRegister = await this.prismaService.double.findUnique({
      where: { id: registerDoublesInEventDto.doublesId },
      select: {
        categoryId: true,
        id: true,
        players: {
          select: {
            firstName: true,
            lastName: true,
            id: true,
          },
        },
      },
    });

    const isDoubleInEvent = await this.prismaService.event.findUnique({
      where: {
        id: registerDoublesInEventDto.eventId,
        eventDoubles: {
          some: {
            doubleId: registerDoublesInEventDto.doublesId,
            eventId: registerDoublesInEventDto.eventId,
          },
        },
      },
    });

    if (isDoubleInEvent) {
      throw new HttpException(
        "Doubles are already registered in this event",
        HttpStatus.BAD_REQUEST
      );
    }
    const playerOne = doublesToRegister.players[0];
    const playerTwo = doublesToRegister.players[1];

    const isPlayerOneInThisCategory = await this.prismaService.event.findUnique(
      {
        where: {
          id: registerDoublesInEventDto.eventId,
          eventDoubles: {
            some: {
              categoryId: doublesToRegister.categoryId,
            },
          },
          players: {
            some: {
              id: playerOne.id,
            },
          },
        },
      }
    );

    if (isPlayerOneInThisCategory) {
      throw new HttpException(
        "Player one is already registered in this category.",
        HttpStatus.BAD_REQUEST
      );
    }

    const createdEventDouble = await this.prismaService.eventDouble.create({
      data: {
        eventId: registerDoublesInEventDto.eventId,
        doubleId: doublesToRegister.id,
        categoryId: doublesToRegister.categoryId,
      },
      select: {
        double: {
          select: {
            players: true,
          },
        },
        event: true,
      },
    });
    return createdEventDouble;
  }

  async getEventById(getEventByIdDto: GetEventByIdDto) {
    const event = await this.prismaService.event.findUnique({
      where: {
        id: getEventByIdDto.id,
      },
      select: {
        id: true,
        isActive: true,
        timeOfFirstMatch: true,
        timeOfLastMatch: true,
        matchDurationInMinutes: true,
        eventDoubles: {
          select: {
            category: true,
            // categoryId: true,
            double: {
              select: {
                id: true,
                players: true,
                category: true,
              },
            },
            // doubleId: true,
          },
        },
        matches: {
          select: {
            categoryId: true,
            doubles: true,
            eventId: true,
            isFinished: true,
            type: true,
            winner: true,
            winnerDoublesId: true,
            sets: true,
            players: true,
          },
        },
        categories: {
          select: {
            id: true,
            type: true,
            level: true,
            eventDoubles: {
              where: { eventId: getEventByIdDto.id },
              select: {
                double: {
                  select: {
                    id: true,
                    categoryId: true,
                    players: true,
                  },
                },
                doubleId: true,
              },
            },
          },
        },
        matchDates: {
          select: {
            id: true,
            match: true,
            // matchId: true,
            start: true,
            finish: true,
            eventId: true,
            event: true,
          },
        },
        startDate: true,
        finishDate: true,
      },
    });
    return event;
  }

  async activateEvent(activateEventDto: ActivateEventDto) {
    await this.createSchedule({
      id: activateEventDto.id,
      startDate: activateEventDto.startDate,
      finishDate: activateEventDto.finishDate,
      timeOfFirstMatch: Number(activateEventDto.timeOfFirstMatch),
      timeOfLastMatch: Number(activateEventDto.timeOfLastMatch),
      matchDurationInMinutes: Number(activateEventDto.matchDurationInMinutes),
    });
    const event = await this.getEventById(activateEventDto);

    const doublesIds = event.categories.flatMap((cat) =>
      cat.eventDoubles.map((ed) => {
        return {
          doublesId: ed.doubleId,
          catId: ed.double.categoryId,
        };
      })
    );
    const categoriesIds = event.categories.flatMap((cat) => cat.id);

    const matchDatesAvailable = (
      await this.getEventById({ id: event.id })
    ).matchDates
      .filter((matchDate) => matchDate.match === null)
      .map((md) => md.id);

    let count: number = 0;
    for (let k = 0; k < categoriesIds.length; k++) {
      const filteredDoublesIds = doublesIds.filter(
        (d) => d.catId === categoriesIds[k]
      ); // filter doubles based on it's category.
      for (let i = 0; i < filteredDoublesIds.length; i++) {
        for (let j = i + 1; j < filteredDoublesIds.length; j++) {
          // console.log(`${filteredDoublesIds[i]} x ${filteredDoublesIds[j]}`);
          console.log(`Variables: k=${k} i=${i} j=${j}. ___calling with 
          {matchDateId: ${matchDatesAvailable[count]}} for categoryId: ${categoriesIds[k]}`);
          await this.matchesService.create({
            doublesIds: [
              filteredDoublesIds[i].doublesId,
              filteredDoublesIds[j].doublesId,
            ],
            categoryId: categoriesIds[k],

            eventId: event.id,
            matchDateId: matchDatesAvailable[count],
          });
          count++;
        }
      }
    }

    await this.prismaService.event.update({
      where: {
        id: activateEventDto.id,
      },
      data: {
        isActive: true,
      },
    });

    return;
  }

  findOne(id: number) {
    return `This action returns a #${id} event`;
  }

  update(id: number, updateEventDto: UpdateEventDto) {
    return `This action updates a #${id} event`;
  }

  remove(id: number) {
    return `This action removes a #${id} event`;
  }

  async getEventByIdParam(id: string) {
    const event = await this.prismaService.event.findUnique({
      where: {
        id: id,
      },
      select: {
        id: true,
        name: true,
        places: true,
        matchDates: true,
        matches: {
          select: {
            number: true,
            id: true,
            winner: true,
            matchDate: {
              select: {
                start: true,
                finish: true,
                id: true,
              },
            },
            category: {
              select: {
                level: true,
                type: true,
              },
            },
            categoryId: true,
            doubles: {
              select: {
                players: true,
                id: true,
                categoryId: true,
              },
            },
            eventId: true,
            isFinished: true,
          },
        },
        eventDoubles: {
          where: {
            eventId: id,
          },
          select: {
            double: {
              select: {
                players: true,
                id: true,
                categoryId: true,
                matchesWins: {
                  where: {
                    eventId: id,
                  },
                },
                games: {
                  where: {
                    events: {
                      some: {
                        id: id,
                      },
                    },
                  },
                },
                gamesWins: {
                  where: {
                    events: {
                      some: {
                        id: id,
                      },
                    },
                  },
                },
              },
            },
            category: true,
          },
        },
        isActive: true,
        categories: {
          select: {
            id: true,
            type: true,
            level: true,
            eventDoubles: {
              select: {
                double: {
                  select: {
                    players: true,
                    id: true,
                  },
                },
              },
            },
          },
        },
      },
    });
    return event;
  }

  async getEventInfoForGenerateMatches(id: string) {
    const eventInfo = await this.prismaService.event.findUnique({
      where: {
        id: id,
      },
      select: {
        eventType: true,
        startDate: true,
        finishDate: true,
        timeOfFirstMatch: true,
        timeOfLastMatch: true,
        isActive: true,
        matchDurationInMinutes: true,
        categories: {
          select: {
            id: true,
            level: true,
            type: true,
            eventDoubles: {
              where: {
                eventId: id,
              },
            },
          },
        },
      },
    });

    const categories = eventInfo.categories;

    const startDate = new Date(eventInfo.startDate);
    const finishDate = new Date(eventInfo.finishDate);

    const days = 1 + finishDate.getDate() - startDate.getDate();

    // console.log(days);

    const matchIntervalInHours = eventInfo.matchDurationInMinutes / 60;
    const playtimePerDayInHours =
      eventInfo.timeOfLastMatch - eventInfo.timeOfFirstMatch;
    const availableMatchDates = Math.round(
      (playtimePerDayInHours * days) / matchIntervalInHours
    );
    // console.log(availableMatchDates);

    const categoriesWithTotalMatches = categories.map((cat) => {
      const totalDoubles = cat.eventDoubles.length;
      console.log(totalDoubles);
      if (cat.eventDoubles.length === 0) {
        return { ...cat, totalMatches: 0 };
      }
      if (cat.eventDoubles.length === 1) {
        return { ...cat, totalMatches: 0 };
      }
      if (totalDoubles === 2) {
        return { ...cat, totalMatches: 1 };
      }
      // else {
      return {
        ...cat,
        totalMatches: Math.floor(
          (cat.eventDoubles.length * cat.eventDoubles.length - 1) / 2
        ),
      };
      // }
    });

    let totalMatches = categoriesWithTotalMatches
      .flatMap((c) => c.totalMatches)
      .reduce((acc, curr) => acc + curr, 0);

    if (totalMatches === -1) {
      totalMatches = 0;
    }

    const eventWithTotalMatches = {
      ...eventInfo,
      categories: categoriesWithTotalMatches,
      totalMatches: totalMatches,
      availableMatchDates: availableMatchDates,
      suitable: availableMatchDates - totalMatches > 0,
    };

    return eventWithTotalMatches;
  }
}
