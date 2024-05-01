import { HttpException, HttpStatus, Injectable } from "@nestjs/common";
import { CreateEventDto } from "./dto/create-event.dto";
import { UpdateEventDto } from "./dto/update-event.dto";
import { PrismaService } from "src/prisma.service";
import { RegisterDoublesInEventDto } from "./dto/register-doubles-event.dto";
import { CategoriesService } from "src/categories/categories.service";
import { GetEventByIdDto } from "./dto/get-event-by-id.dto";
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

    const eventFirstMatchStart = await this.prismaService.event.findUnique({
      where: {
        id: registerDoublesInEventDto.eventId,
      },
      select: {
        startDate: true,
        timeOfFirstMatch: true,
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

    console.log(eventFirstMatchStart);
    const createdEventDouble = await this.prismaService.eventDouble.create({
      data: {
        eventId: registerDoublesInEventDto.eventId,
        doubleId: doublesToRegister.id,
        categoryId: doublesToRegister.categoryId,
        atRest: new Date(
          eventFirstMatchStart.startDate.valueOf() +
            eventFirstMatchStart.timeOfFirstMatch * 3600000 //! added atRest to doubles when creating them, the value is equal to the first match timestamp
        ),
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
        courts: {
          select: {
            id: true,
          },
        },
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
            atRest: true,
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
                atRest: true,
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
    // console.log(`Days: ${days}`);

    for (let i = 0; i <= days; i++) {
      const date = new Date(firstDay.valueOf() + i * oneDayInMs);
      // console.log(date);
      daysArray.push({
        day: i + 1,
        date: date.toISOString(),
        timeOfFirstMatch: createScheduleDto.timeOfFirstMatch,
        timeOfLastMatch: createScheduleDto.timeOfLastMatch,
        matchDuration: createScheduleDto.matchDurationInMinutes,
      });
    }

    for (let c = 0; c < createScheduleDto.courtIds.length; c++) {
      for (let i = 0; i < daysArray.length; i++) {
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
          await this.prismaService.matchDate.create({
            data: {
              start: new Date(j),
              finish: new Date(j + matchDuration),
              eventId: createScheduleDto.id,
              courtId: createScheduleDto.courtIds[c],
            },
          });
        }
      }
    }
    return daysArray;
  }
  async activateEvent(activateEventDto: ActivateEventDto) {
    // ! get the event that will be activated
    const event = await this.getEventById(activateEventDto);

    // ? THIS IS COMMENTED BECAUSE IM TESTING CREATE MATCHES
    await this.createSchedule({
      id: activateEventDto.id,
      startDate: activateEventDto.startDate,
      finishDate: activateEventDto.finishDate,
      timeOfFirstMatch: Number(activateEventDto.timeOfFirstMatch),
      timeOfLastMatch: Number(activateEventDto.timeOfLastMatch),
      matchDurationInMinutes: Number(activateEventDto.matchDurationInMinutes),
      courtIds: activateEventDto.courtsIds,
    });

    let matchDatesAvailable = (
      await this.getEventById({ id: event.id })
    ).matchDates
      .filter((matchDate) => matchDate.match === null)
      .map((md) => {
        return {
          id: md.id,
          start: md.start,
          finish: md.finish,
        };
      });

    // ! create the schedule for the event

    // !  get doubles, categories and matchDatesAvailable to use in loop to populate matches
    const doubles = event.categories.flatMap((cat) =>
      cat.eventDoubles.map((ed) => {
        return {
          doublesId: ed.doubleId,
          catId: ed.double.categoryId,
          doublesRestState: matchDatesAvailable[0].start, //!
        };
      })
    );
    const categoriesIds = event.categories.flatMap((cat) => cat.id);

    let matchesToAdd: {
      categoryId: string;
      matchId: number;
      doublesA: { doublesId: string; doublesRestState: Date };
      doublesB: { doublesId: string; doublesRestState: Date };
    }[] = [];

    let matchCount: number = 0;

    for (let c = 0; c < categoriesIds.length; c++) {
      const filteredDoublesByCategory = doubles.filter(
        (d) => d.catId === categoriesIds[c]
      );

      for (let i = 0; i < filteredDoublesByCategory.length; i++) {
        for (let j = i + 1; j < filteredDoublesByCategory.length; j++) {
          matchesToAdd.push({
            categoryId: categoriesIds[c],
            matchId: matchCount,
            doublesA: {
              doublesId: filteredDoublesByCategory[i].doublesId,
              doublesRestState: filteredDoublesByCategory[i].doublesRestState,
            },
            doublesB: {
              doublesId: filteredDoublesByCategory[j].doublesId,
              doublesRestState: filteredDoublesByCategory[j].doublesRestState,
            },
          });
          matchCount++;
        }
      }
    }

    for (let m = 0; matchesToAdd.length >= 0; m++) {
      console.log(`Match #${m}`);
      if (matchesToAdd.length === 0) {
        return "done";
      }

      const doublesA = await this.prismaService.eventDouble.findUniqueOrThrow({
        where: {
          eventId_doubleId_categoryId: {
            eventId: event.id,
            categoryId: matchesToAdd[0].categoryId,
            doubleId: matchesToAdd[0].doublesA.doublesId,
          },
        },
        select: {
          doubleId: true,
          atRest: true,
          categoryId: true,
        },
      });

      const doublesB = await this.prismaService.eventDouble.findUniqueOrThrow({
        where: {
          eventId_doubleId_categoryId: {
            eventId: event.id,
            categoryId: matchesToAdd[0].categoryId,
            doubleId: matchesToAdd[0].doublesB.doublesId,
          },
        },
        select: {
          doubleId: true,
          atRest: true,
          categoryId: true,
        },
      });

      if (doublesA === null || doublesB === null) {
        throw new HttpException(
          "One of the doubles is null",
          HttpStatus.BAD_REQUEST
        );
      }

      matchDatesAvailable = (
        await this.getEventById({ id: event.id })
      ).matchDates
        .filter((matchDate) => matchDate.match === null) // ! this is not working yet because im not creating matches... but i guess it's ok for now... loop will only get bigger
        .map((md) => {
          return {
            id: md.id,
            start: md.start,
            finish: md.finish,
          };
        });

      console.log(`MatchDatesAvailable: ${matchDatesAvailable.length}`);

      //! LOOPING OVER MATCH SLOTS
      for (let i = 0; i <= matchDatesAvailable.length; i++) {
        console.log(
          `
          doublesA.atRest: ${doublesA.atRest};
          doublesB.atRest: ${doublesB.atRest};
          matchTime: ${matchDatesAvailable[i].start}
          `
        );

        if (
          doublesA.atRest <= matchDatesAvailable[i].start &&
          doublesB.atRest <= matchDatesAvailable[i].start
        ) {
          await this.matchesService.create({
            doublesIds: [doublesA.doubleId, doublesB.doubleId],
            categoryId: doublesA.categoryId,

            eventId: event.id,
            matchDateId: matchDatesAvailable[i].id,
          });

          matchesToAdd.shift();
          await this.prismaService.eventDouble.updateMany({
            where: {
              OR: [
                {
                  eventId: activateEventDto.id,
                  doubleId: doublesA.doubleId,
                  categoryId: doublesA.categoryId,
                },
                {
                  eventId: activateEventDto.id,
                  doubleId: doublesB.doubleId,
                  categoryId: doublesB.categoryId,
                },
              ],
            },
            data: {
              atRest: new Date(
                matchDatesAvailable[i].finish.valueOf() + 3600000 * 2
              ),
            },
          });
          console.log("🌞goSeeTheSun🌞");
          break;
        }
      }
    }

    // // ! POPULATE MATCHES LOOP k for categories

    // let count: number = 0;
    // for (let k = 0; k < categoriesIds.length; k++) {
    //   const filteredDoublesIds = doubles.filter(
    //     (d) => d.catId === categoriesIds[k]
    //   ); // filter doubles based on it's category.
    //   for (let i = 0; i < filteredDoublesIds.length; i++) {
    //     for (let j = i + 1; j < filteredDoublesIds.length; j++) {
    //       // console.log(`Variables: k=${k} i=${i} j=${j}. ___calling with
    //       // {matchDateId: ${matchDatesAvailable[count]}} for categoryId: ${categoriesIds[k]}`);
    //       // ! inside this loop i will have to handle i++ and j++ differently... or i have to somehow push the doubles that will play against each other to the end of the filtered array... there is the issue of loosing the match pair because of atRestTime...
    //       //!
    //       if (
    //         (filteredDoublesIds[i].doublesRestState === null &&
    //           filteredDoublesIds[j].doublesRestState === null) ||
    //         filteredDoublesIds[i].doublesRestState.valueOf() ||
    //         filteredDoublesIds[j].doublesRestState.valueOf() <=
    //           matchDatesAvailable[count].start.valueOf()
    //       ) {
    //         await this.matchesService.create({
    //           doublesIds: [
    //             filteredDoublesIds[i].doublesId,
    //             filteredDoublesIds[j].doublesId,
    //           ],
    //           categoryId: categoriesIds[k],

    //           eventId: event.id,
    //           matchDateId: matchDatesAvailable[count].id,
    //         });

    //         await this.prismaService.eventDouble.updateMany({
    //           where: {
    //             OR: [
    //               {
    //                 eventId: activateEventDto.id,
    //                 doubleId: filteredDoublesIds[i].doublesId,
    //                 categoryId: categoriesIds[k],
    //               },
    //               {
    //                 eventId: activateEventDto.id,
    //                 doubleId: filteredDoublesIds[j].doublesId,
    //                 categoryId: categoriesIds[k],
    //               },
    //             ],
    //           },
    //           data: {
    //             atRest: new Date(
    //               matchDatesAvailable[count].finish.valueOf() + 3600000 * 2
    //             ),
    //           },
    //         });
    //         count++;
    //       }

    //       // ! check if one of the doubles are at rest... if so skip to next match...
    //       if (
    //         filteredDoublesIds[i].doublesRestState.valueOf() ||
    //         filteredDoublesIds[j].doublesRestState.valueOf() >
    //           matchDatesAvailable[count].start.valueOf()
    //       ) {
    //         console.log("Players at rest...");
    //       }
    // }
    // }
    // }

    // await this.prismaService.event.update({
    //   where: {
    //     id: activateEventDto.id,
    //   },
    //   data: {
    //     isActive: true,
    //   },
    // });

    return matchesToAdd;
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
        startDate: true,
        finishDate: true,
        timeOfFirstMatch: true,
        timeOfLastMatch: true,
        matchDates: true,
        courts: true,
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
            atRest: true,
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
        courts: true,
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
    const courts = eventInfo.courts.length;

    const matchIntervalInHours = eventInfo.matchDurationInMinutes / 60;
    const playtimePerDayInHours =
      eventInfo.timeOfLastMatch - eventInfo.timeOfFirstMatch + 1;
    const availableMatchDates =
      Math.round((playtimePerDayInHours * days) / matchIntervalInHours) *
      courts;
    // console.log(availableMatchDates);

    const categoriesWithTotalMatches = categories.map((cat) => {
      const totalDoubles = cat.eventDoubles.length;
      // console.log(totalDoubles);
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
