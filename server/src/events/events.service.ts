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
import { DeleteDoublesInEventDto } from "./dto/delete-doubles.dto";

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

  async updateEvent(updateEventDto: UpdateEventDto) {
    const event = await this.prismaService.event.findUniqueOrThrow({
      where: {
        id: updateEventDto.eventId,
      },
    });

    const placesToConnect = updateEventDto.placesIds.map((id) => ({ id }));
    const categoriesToConnect = updateEventDto.categoriesIds.map((id) => ({
      id,
    }));
    const courtsToConnect = updateEventDto.courtsIds.map((id) => ({
      id,
    }));

    const updated = await this.prismaService.event.update({
      where: {
        id: event.id,
      },
      data: {
        name: updateEventDto.name,
        categories: {
          connect: categoriesToConnect,
        },
        places: {
          connect: placesToConnect,
        },
        courts: {
          connect: courtsToConnect,
        },
        startDate: updateEventDto.startDate,
        finishDate: updateEventDto.finishDate,
        timeOfFirstMatch: Number(updateEventDto.timeOfFirstMatch),
        timeOfLastMatch: Number(updateEventDto.timeOfLastMatch),
        matchDurationInMinutes: Number(updateEventDto.matchDurationInMinutes),
      },
    });
    return updated;
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
            atRest: true,
            atRestId: true,
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

    const isPlayerTwoInThisCategory = await this.prismaService.event.findUnique(
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
              id: playerTwo.id,
            },
          },
        },
      }
    );

    if (isPlayerTwoInThisCategory) {
      throw new HttpException(
        "Player two is already registered in this category.",
        HttpStatus.BAD_REQUEST
      );
    }

    const createdEventDouble = await this.prismaService.eventDouble.create({
      data: {
        eventId: registerDoublesInEventDto.eventId,
        doubleId: doublesToRegister.id,
        categoryId: doublesToRegister.categoryId,
        atRestId: null,
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

  async deleteDoublesInEvent(deleteDoublesInEventDto: DeleteDoublesInEventDto) {
    const eventDoubles = await this.prismaService.eventDouble.findUnique({
      where: {
        eventId_doubleId_categoryId: {
          doubleId: deleteDoublesInEventDto.doublesId,
          categoryId: deleteDoublesInEventDto.categoryId,
          eventId: deleteDoublesInEventDto.eventId,
        },
      },
    });

    if (!eventDoubles) {
      throw new HttpException(
        "Doubles is not registered in this event.",
        HttpStatus.NOT_FOUND
      );
    }

    const removedDoubles = await this.prismaService.eventDouble.delete({
      where: {
        eventId_doubleId_categoryId: {
          doubleId: eventDoubles.doubleId,
          categoryId: eventDoubles.categoryId,
          eventId: eventDoubles.eventId,
        },
      },
    });
    return removedDoubles;
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
            atRestId: true,
            // doubleId: true,
          },
        },
        matches: {
          select: {
            id: true,
            number: true,
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

  async autoPopulate(activateEventDto: ActivateEventDto) {
    const event = await this.getEventById(activateEventDto);

    let matches = (await this.getEventById({ id: event.id })).matches;

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

    const firstTimeStamp = matchDatesAvailable[0].start.valueOf();

    // let count = 0;
    for (let i = 0; matches.length > 0; ) {
      const match = matches[0];
      console.log(`Calling for Match: #${matches[0].number}`);
      console.log(`👽My name is i, my number is: ${i}👽`);
      // console.log(matches.length);
      // console.log(matchDatesAvailable.length);
      const matchDate = matchDatesAvailable[i];
      const doublesA = await this.prismaService.eventDouble.findUniqueOrThrow({
        where: {
          eventId_doubleId_categoryId: {
            doubleId: match.doubles[0].id,
            eventId: event.id,
            categoryId: match.categoryId,
          },
        },
        select: {
          eventId: true,
          doubleId: true,
          categoryId: true,
          atRestId: true,
          atRest: true,
        },
      });

      const doublesB = await this.prismaService.eventDouble.findUniqueOrThrow({
        where: {
          eventId_doubleId_categoryId: {
            doubleId: match.doubles[1].id,
            eventId: event.id,
            categoryId: match.categoryId,
          },
        },
        select: {
          eventId: true,
          doubleId: true,
          categoryId: true,
          atRestId: true,
          atRest: true,
        },
      });

      if (doublesA.atRestId === null && doublesB.atRestId === null) {
        await this.prismaService.matchDate.update({
          where: { id: matchDate.id },
          data: {
            matchId: match.id,
          },
        });

        await this.prismaService.eventDouble.update({
          where: {
            eventId_doubleId_categoryId: {
              eventId: doublesA.eventId,
              categoryId: doublesA.categoryId,
              doubleId: doublesA.doubleId,
            },
          },
          data: {
            atRestId: matchDatesAvailable[i + 2].id,
          },
        });

        await this.prismaService.eventDouble.update({
          where: {
            eventId_doubleId_categoryId: {
              eventId: doublesB.eventId,
              categoryId: doublesB.categoryId,
              doubleId: doublesB.doubleId,
            },
          },
          data: {
            atRestId: matchDatesAvailable[i + 2].id,
          },
        });

        console.log("🌞🌞 Calling from null - null");
        console.log(` ** Before: matches.length = ${matches.length}`);
        matches = matches.filter((m) => m.id !== match.id);
        console.log(` ** After: matches.length = ${matches.length}`);

        console.log(
          ` ## Before: matchDates.length = ${matchDatesAvailable.length}`
        );
        matchDatesAvailable = matchDatesAvailable.filter(
          (md) => md.id !== matchDate.id
        );
        console.log(
          ` ## After: matchDates.length = ${matchDatesAvailable.length}`
        );
        i = 0;
      }

      // && (doublesA.atRest.start )
      else {
        let doublesAState: number;
        let doublesBState: number;
        if (doublesA.atRestId === null) {
          doublesAState = firstTimeStamp;
        } else {
          doublesAState = doublesA.atRest.start.valueOf();
        }

        if (doublesB.atRestId === null) {
          doublesBState = firstTimeStamp;
        } else {
          doublesBState = doublesA.atRest.start.valueOf();
        }

        if (
          doublesAState <= matchDate.start.valueOf() &&
          doublesBState <= matchDate.start.valueOf()
        ) {
          await this.prismaService.matchDate.update({
            where: { id: matchDate.id },
            data: {
              matchId: match.id,
            },
          });

          await this.prismaService.eventDouble.update({
            where: {
              eventId_doubleId_categoryId: {
                eventId: doublesA.eventId,
                categoryId: doublesA.categoryId,
                doubleId: doublesA.doubleId,
              },
            },
            data: {
              atRestId: matchDatesAvailable[i + 2].id,
            },
          });

          await this.prismaService.eventDouble.update({
            where: {
              eventId_doubleId_categoryId: {
                eventId: doublesB.eventId,
                categoryId: doublesB.categoryId,
                doubleId: doublesB.doubleId,
              },
            },
            data: {
              atRestId: matchDatesAvailable[i + 2].id,
            },
          });

          console.log("🌞🌚Calling from oneNull or two not null");

          console.log(` ** Before: matches.length = ${matches.length}`);
          matches = matches.filter((m) => m.id !== match.id);
          console.log(` ** After: matches.length = ${matches.length}`);

          console.log(
            ` ## Before: matchDates.length = ${matchDatesAvailable.length}`
          );
          matchDatesAvailable = matchDatesAvailable.filter(
            (md) => md.id !== matchDate.id
          );
          console.log(
            ` ## After: matchDates.length = ${matchDatesAvailable.length}`
          );
          i = 0;
        }

        if (
          doublesAState > matchDate.start.valueOf() ||
          doublesBState > matchDate.start.valueOf()
        ) {
          console.log(
            "🌚🌚 At least one of them doubles are at rest... lets i++ 🌚🌚"
          );
          // matches.push(match);
          // matches.shift();
          i++;
        }
      }
    }
    return { matches: matches };
  }

  async activateEvent(activateEventDto: ActivateEventDto) {
    const event = await this.getEventById(activateEventDto);

    await this.createSchedule({
      id: activateEventDto.id,
      startDate: activateEventDto.startDate,
      finishDate: activateEventDto.finishDate,
      timeOfFirstMatch: Number(activateEventDto.timeOfFirstMatch),
      timeOfLastMatch: Number(activateEventDto.timeOfLastMatch),
      matchDurationInMinutes: Number(activateEventDto.matchDurationInMinutes),
      courtIds: activateEventDto.courtsIds,
    });

    const doubles = event.categories.flatMap((cat) =>
      cat.eventDoubles.map((ed) => {
        return {
          doublesId: ed.doubleId,
          catId: ed.double.categoryId,
        };
      })
    );
    const categoriesIds = event.categories.flatMap((cat) => cat.id);

    let matchesToAdd: {
      categoryId: string;
      matchId: number;
      doublesAID: string;
      doublesBID: string;
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
            doublesAID: filteredDoublesByCategory[i].doublesId,
            doublesBID: filteredDoublesByCategory[j].doublesId,
          });
          matchCount++;
        }
      }
    }
    for (let m = 0; m < matchesToAdd.length; m++) {
      await this.matchesService.create({
        categoryId: matchesToAdd[m].categoryId,
        doublesIds: [matchesToAdd[m].doublesAID, matchesToAdd[m].doublesBID],
        eventId: event.id,
        type: "SUPERSET",
        matchDateId: undefined,
      });
    }

    if (activateEventDto.autoPopulate) {
      await this.autoPopulate(activateEventDto);
    }

    await this.prismaService.event.update({
      where: {
        id: event.id,
      },
      data: {
        isActive: true,
      },
    });
    return;
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
        matchDurationInMinutes: true,
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
                matches: {
                  select: {
                    id: true,
                    matchDate: {
                      select: {
                        id: true,
                      },
                    },
                    doubles: true,
                  },
                },
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
            matches: {
              select: {
                number: true,
                id: true,
                matchDate: {
                  select: {
                    id: true,
                  },
                },
                doubles: {
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
      suitable: availableMatchDates - totalMatches >= 0,
    };

    return eventWithTotalMatches;
  }

  async remove(id: number) {
    return `This action removes a #${id} event`;
  }

  async findOne(id: number) {
    return `This action returns a #${id} event`;
  }

  async update(id: number, updateEventDto: UpdateEventDto) {
    return `This action updates a #${id} event`;
  }

  // async oldActivateEventWithAutoPopulate(activateEventDto: ActivateEventDto) {
  //   // ! get the event that will be activated
  //   const event = await this.getEventById(activateEventDto);

  //   // ? THIS IS COMMENTED BECAUSE IM TESTING CREATE MATCHES
  //   // ! create the schedule for the event
  //   await this.createSchedule({
  //     id: activateEventDto.id,
  //     startDate: activateEventDto.startDate,
  //     finishDate: activateEventDto.finishDate,
  //     timeOfFirstMatch: Number(activateEventDto.timeOfFirstMatch),
  //     timeOfLastMatch: Number(activateEventDto.timeOfLastMatch),
  //     matchDurationInMinutes: Number(activateEventDto.matchDurationInMinutes),
  //     courtIds: activateEventDto.courtsIds,
  //   });

  //   let matchDatesAvailable = (
  //     await this.getEventById({ id: event.id })
  //   ).matchDates
  //     .filter((matchDate) => matchDate.match === null)
  //     .map((md) => {
  //       return {
  //         id: md.id,
  //         start: md.start,
  //         finish: md.finish,
  //       };
  //     });

  //   // !  get doubles, categories and matchDatesAvailable to use in loop to populate matches
  //   const doubles = event.categories.flatMap((cat) =>
  //     cat.eventDoubles.map((ed) => {
  //       return {
  //         doublesId: ed.doubleId,
  //         catId: ed.double.categoryId,
  //         doublesRestState: matchDatesAvailable[0].start, //!
  //       };
  //     })
  //   );
  //   const categoriesIds = event.categories.flatMap((cat) => cat.id);

  //   let matchesToAdd: {
  //     categoryId: string;
  //     matchId: number;
  //     doublesA: { doublesId: string; doublesRestState: Date };
  //     doublesB: { doublesId: string; doublesRestState: Date };
  //   }[] = [];

  //   let matchCount: number = 0;

  //   for (let c = 0; c < categoriesIds.length; c++) {
  //     const filteredDoublesByCategory = doubles.filter(
  //       (d) => d.catId === categoriesIds[c]
  //     );

  //     for (let i = 0; i < filteredDoublesByCategory.length; i++) {
  //       for (let j = i + 1; j < filteredDoublesByCategory.length; j++) {
  //         matchesToAdd.push({
  //           categoryId: categoriesIds[c],
  //           matchId: matchCount,
  //           doublesA: {
  //             doublesId: filteredDoublesByCategory[i].doublesId,
  //             doublesRestState: filteredDoublesByCategory[i].doublesRestState,
  //           },
  //           doublesB: {
  //             doublesId: filteredDoublesByCategory[j].doublesId,
  //             doublesRestState: filteredDoublesByCategory[j].doublesRestState,
  //           },
  //         });
  //         matchCount++;
  //       }
  //     }
  //   }

  //   for (let m = 0; matchesToAdd.length >= 0; m++) {
  //     console.log(`Match #${m}`);
  //     if (matchesToAdd.length === 0) {
  //       return "done";
  //     }

  //     const doublesA = await this.prismaService.eventDouble.findUniqueOrThrow({
  //       where: {
  //         eventId_doubleId_categoryId: {
  //           eventId: event.id,
  //           categoryId: matchesToAdd[0].categoryId,
  //           doubleId: matchesToAdd[0].doublesA.doublesId,
  //         },
  //       },
  //       select: {
  //         doubleId: true,
  //         atRest: true,
  //         categoryId: true,
  //       },
  //     });

  //     const doublesB = await this.prismaService.eventDouble.findUniqueOrThrow({
  //       where: {
  //         eventId_doubleId_categoryId: {
  //           eventId: event.id,
  //           categoryId: matchesToAdd[0].categoryId,
  //           doubleId: matchesToAdd[0].doublesB.doublesId,
  //         },
  //       },
  //       select: {
  //         doubleId: true,
  //         atRest: true,
  //         categoryId: true,
  //       },
  //     });

  //     if (doublesA === null || doublesB === null) {
  //       throw new HttpException(
  //         "One of the doubles is null",
  //         HttpStatus.BAD_REQUEST
  //       );
  //     }

  //     matchDatesAvailable = (
  //       await this.getEventById({ id: event.id })
  //     ).matchDates
  //       .filter((matchDate) => matchDate.match === null) // ! this is not working yet because im not creating matches... but i guess it's ok for now... loop will only get bigger
  //       .map((md) => {
  //         return {
  //           id: md.id,
  //           start: md.start,
  //           finish: md.finish,
  //         };
  //       });

  //     console.log(`MatchDatesAvailable: ${matchDatesAvailable.length}`);

  //     //! LOOPING OVER MATCH SLOTS
  //     for (let i = 0; i <= matchDatesAvailable.length; i++) {
  //       console.log(
  //         `
  //         doublesA.atRest: ${doublesA.atRest};
  //         doublesB.atRest: ${doublesB.atRest};
  //         matchTime: ${matchDatesAvailable[i].start}
  //         `
  //       );

  //       if (
  //         doublesA.atRest <= matchDatesAvailable[i].start &&
  //         doublesB.atRest <= matchDatesAvailable[i].start
  //       ) {
  //         await this.matchesService.create({
  //           doublesIds: [doublesA.doubleId, doublesB.doubleId],
  //           categoryId: doublesA.categoryId,

  //           eventId: event.id,
  //           matchDateId: matchDatesAvailable[i].id,
  //         });

  //         matchesToAdd.shift();
  //         await this.prismaService.eventDouble.updateMany({
  //           where: {
  //             OR: [
  //               {
  //                 eventId: activateEventDto.id,
  //                 doubleId: doublesA.doubleId,
  //                 categoryId: doublesA.categoryId,
  //               },
  //               {
  //                 eventId: activateEventDto.id,
  //                 doubleId: doublesB.doubleId,
  //                 categoryId: doublesB.categoryId,
  //               },
  //             ],
  //           },
  //           data: {
  //             atRest: new Date(
  //               matchDatesAvailable[i].finish.valueOf() + 3600000 * 2
  //             ),
  //           },
  //         });
  //         console.log("🌞goSeeTheSun🌞");
  //         break;
  //       }
  //     }
  //   }
  //   return matchesToAdd;
  // }
}
