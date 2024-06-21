import { HttpException, HttpStatus, Injectable } from "@nestjs/common";
import { CreateEventDto } from "./dto/create-event.dto";
import { UpdateEventDto } from "./dto/update-event.dto";
import { PrismaService } from "src/prisma.service";
import { RegisterDoublesInEventDto } from "./dto/register-doubles-event.dto";
import { GetEventByIdDto } from "./dto/get-event-by-id.dto";
import { MatchesService } from "src/matches/matches.service";
import { CreateScheduleDto } from "./dto/create-schedule.dto";
import { ActivateEventDto } from "./dto/activate-event.dto";
import { DeleteDoublesInEventDto } from "./dto/delete-doubles.dto";
import { HandleDoublesRequestToEventDto } from "./dto/handle-request.dto";
import { Double, EventDouble, EventMatchType, MatchType } from "@prisma/client";
import { TreeLevelColumn } from "typeorm";

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
        eventType: createEventDto.eventType ?? "ALLxALL",
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
        eventType: true,
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
        categoriesGroups: {
          select: {
            id: true,
            category: true,
            groups: {
              select: {
                id: true,
                key: true,
                eventDoubles: {
                  select: {
                    double: {
                      select: {
                        id: true,
                        players: true,
                      },
                    },
                  },
                },
              },
            },
          },
        },
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
      console.log(`Calling for Match: #${matches[0].id}`);
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

    if (activateEventDto.eventType === "ALLxALL") {
      await this.createMatchesAllxAll(activateEventDto);
    }

    if (activateEventDto.eventType === "GROUPS") {
      await this.createCategoriesGroups(activateEventDto);
      await this.createGroupsMatches(event.id);
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

    const eventUpdated = await this.prismaService.event.findUniqueOrThrow({
      where: { id: event.id },
      select: {
        categoriesGroups: {
          select: {
            id: true,
            category: true,
            groups: {
              select: {
                id: true,
                key: true,
                groupMatches: true,
              },
            },
          },
        },
      },
    });

    return eventUpdated;
  }

  async createMatchesAllxAll(activateEventDto: ActivateEventDto) {
    const event = await this.getEventById(activateEventDto);
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
      const match = await this.matchesService.create({
        categoryId: matchesToAdd[m].categoryId,
        doublesIds: [matchesToAdd[m].doublesAID, matchesToAdd[m].doublesBID],
        eventId: event.id,
        matchType: "SUPERSET",
        matchDateId: null, //! check if it is working
      });

      const newEventMatch = await this.prismaService.eventMatch.create({
        data: {
          type: EventMatchType.UNCLASSIFIED,
          event: {
            connect: { id: event.id },
          },
          match: {
            connect: { id: match.id },
          },
        },
      });
    }
  }

  async createCategoriesGroups(activateEventDto: ActivateEventDto) {
    const event = await this.getEventById(activateEventDto);

    const numberOfDoublesPerGroup = 3;

    for (let i = 0; i < event.categories.length; i++) {
      const categoryId = event.categories[i].id;

      const newCategoryGroup = await this.prismaService.categoryGroup.create({
        data: {
          category: {
            connect: {
              id: categoryId,
            },
          },
          event: {
            connect: { id: activateEventDto.id },
          },
        },
        select: {
          id: true,
          event: true,
          category: true,
          groups: true,
        },
      });

      const numberOfGroups = Math.ceil(
        event.categories[i].eventDoubles.length / numberOfDoublesPerGroup
      );
      const doubles = event.categories[i].eventDoubles;

      for (let i = 0; i < numberOfGroups; i++) {
        const key = indexToLetter(i);

        await this.prismaService.doublesGroup.create({
          data: {
            key: key,
            categoryGroup: {
              connect: {
                id: newCategoryGroup.id,
              },
            },
          },
          select: {
            id: true,
            key: true,
            eventDoubles: {
              select: {
                double: true,
              },
            },
          },
        });
      }

      const doublesGroupIdsQuery =
        await this.prismaService.categoryGroup.findUniqueOrThrow({
          where: {
            id: newCategoryGroup.id,
          },
          select: {
            groups: true,
          },
        });

      const doublesGroupsIds = doublesGroupIdsQuery.groups.flatMap((g) => g.id);

      while (doubles.length > 0) {
        for (
          let j = 0;
          j < doublesGroupsIds.length && doubles.length > 0;
          j++
        ) {
          const totalDoubles = doubles.length;
          const randomDoubleIndex = Math.floor(Math.random() * totalDoubles);
          const doublesToPush = doubles[randomDoubleIndex].double;

          await this.prismaService.doublesGroup.update({
            where: { id: doublesGroupsIds[j] },
            data: {
              eventDoubles: {
                connect: {
                  eventId_doubleId_categoryId: {
                    categoryId: categoryId,
                    doubleId: doublesToPush.id,
                    eventId: event.id,
                  },
                },
              },
            },
          });
          doubles.splice(randomDoubleIndex, 1);
        }
      }

      // const categoryGroupUpdated =
      //   await this.prismaService.categoryGroup.findUniqueOrThrow({
      //     where: { id: newCategoryGroup.id },
      //     select: {
      //       id: true,
      //       category: true,
      //       groups: {
      //         select: {
      //           id: true,
      //           key: true,
      //           doubles: {
      //             select: {
      //               id: true,
      //               players: true,
      //             },
      //           },
      //         },
      //       },
      //     },
      //   });
    }
    return event;
  }

  async createGroupsMatches(eventId: string) {
    const event = await this.prismaService.event.findUniqueOrThrow({
      where: {
        id: eventId,
      },
      select: {
        id: true,
        matchType: true,
        categoriesGroups: {
          select: {
            categoryId: true,
            groups: {
              select: {
                id: true,
                eventDoubles: {
                  select: {
                    double: true,
                  },
                },
              },
            },
          },
        },
      },
    });

    for (let i = 0; i < event.categoriesGroups.length; i++) {
      const groups = event.categoriesGroups[i].groups;

      const categoryId = event.categoriesGroups[i].categoryId;

      for (let j = 0; j < groups.length; j++) {
        const doubles = groups[j].eventDoubles;
        const groupId = groups[j].id;

        for (let k = 0; k < doubles.length; k++) {
          for (let l = k + 1; l < doubles.length; l++) {
            const doubles1 = doubles[k];
            const doubles2 = doubles[l];

            const match = await this.matchesService.create({
              categoryId: categoryId,
              doublesIds: [doubles1.double.id, doubles2.double.id],
              eventId: event.id,
              matchType: event.matchType,
              matchDateId: null,
            });

            await this.prismaService.eventMatch.create({
              data: {
                event: {
                  connect: { id: event.id },
                },
                match: {
                  connect: { id: match.id },
                },
                doublesGroup: { connect: { id: groupId } },
              },
            });
          }
        }
      }
    }
    const eventUpdated = await this.prismaService.event.findUniqueOrThrow({
      where: {
        id: eventId,
      },
      select: {
        id: true,
        matchType: true,
        eventMatches: true,
        categoriesGroups: {
          select: {
            categoryId: true,
            groups: true,
          },
        },
      },
    });

    return eventUpdated;
  }

  async endGroupsStage(eventId: string) {
    // check if all matches are finished and create logic for placing 1st and 2nd places to finals
    type EventDoubles = {
      double: {
        id: string;
        games: {
          id: string;
          setId: string;
          winnerId: string;
        }[];
        categoryId: string;
        matchesWins: {
          id: string;
          isFinished: boolean;
          categoryId: string;
          winnerDoublesId: string;
          eventId: string;
          type: MatchType;
          courtId: string;
        }[];
        gamesWins: {
          id: string;
          setId: string;
          winnerId: string;
        }[];
      };
    };
    const event = await this.prismaService.event.findUniqueOrThrow({
      where: { id: eventId },
      select: {
        id: true,
        categoriesGroups: {
          select: {
            id: true,
            category: true,
            groups: {
              select: {
                id: true,
                key: true,
                groupFinished: true,
                eventDoubles: {
                  select: {
                    double: {
                      select: {
                        id: true,
                        categoryId: true,
                        matchesWins: true,
                        games: true,
                        gamesWins: true,
                      },
                    },
                  },
                },
                groupMatches: {
                  select: {
                    number: true,
                    match: {
                      select: {
                        id: true,
                        isFinished: true,
                        eventId: true,
                        sets: {
                          select: {
                            games: {
                              select: {
                                doubles: true,
                                winnerId: true,
                              },
                            },
                          },
                        },
                      },
                    },
                  },
                },
              },
            },
          },
        },
      },
    });

    const categoriesGroups = event.categoriesGroups;

    if (!categoriesGroups) {
      throw new HttpException(
        "Event with no groups created",
        HttpStatus.BAD_REQUEST
      );
    }

    for (let i = 0; i < categoriesGroups.length; i++) {
      const groups = categoriesGroups[i].groups;
      const categoryId = categoriesGroups[i].category.id;
      const eventMatchesInCategory = groups.flatMap((g) => g.groupMatches);
      const pendingEventMatchesInCategory = eventMatchesInCategory.filter(
        (em) => em.match.isFinished === false
      );
      if (pendingEventMatchesInCategory.length !== 0) {
        throw new HttpException(
          `${pendingEventMatchesInCategory.length} matches are unfinished at category ${categoriesGroups[i].category.level} ${categoriesGroups[i].category.type}`,
          HttpStatus.BAD_REQUEST
        );
      }

      if (pendingEventMatchesInCategory.length === 0) {
        // Set first and second place
        for (let j = 0; j < groups.length; j++) {
          const group = groups[j];
          if (group.groupFinished) {
            continue;
          }
          console.log(
            "#########################################################"
          );
          console.log(`Group ${group.key}`);
          console.log(
            "---------------------------------------------------------"
          );

          let firstPlaceDoubles: EventDoubles;
          let secondPlaceDoubles = null;
          let maxMatchesWon = -1;
          let secondMaxMatchesWon = -1;
          let maxGamesDiff = -1;
          let secondMaxGamesDiff = -1;

          let doublesGroups: {
            id: string;
            matchesWon: number;
            gamesDiff: number;
          }[] = [];

          for (let k = 0; k < group.eventDoubles.length; k++) {
            const doubles = group.eventDoubles[k];
            console.log(doubles.double.id);

            const matchesWon = doubles.double.matchesWins.filter(
              (m) => m.eventId === event.id
            ).length;

            const groupSets = group.groupMatches.flatMap((g) => g.match.sets);
            const groupGames = groupSets.flatMap((s) => s.games);

            const filteredGamesByDoubles = groupGames.filter((g) =>
              g.doubles.some((d) => d.id === doubles.double.id)
            );

            const filterGamesWonByDoubles = filteredGamesByDoubles.filter(
              (g) => g.winnerId === doubles.double.id
            );

            const gamesDiff =
              filterGamesWonByDoubles.length -
              (filteredGamesByDoubles.length - filterGamesWonByDoubles.length);

            doublesGroups.push({
              id: doubles.double.id,
              matchesWon: matchesWon,
              gamesDiff: gamesDiff,
            });
            console.log(`Doubles: ${doubles.double.id}`);
            console.log(`Matches W: ${matchesWon}`);
            console.log(`Games Diff: ${gamesDiff}`);
            console.log(
              "---------------------------------------------------------"
            );

            if (
              matchesWon > maxMatchesWon ||
              (matchesWon === maxMatchesWon && gamesDiff > maxGamesDiff)
            ) {
              secondPlaceDoubles = firstPlaceDoubles;
              secondMaxMatchesWon = maxMatchesWon;
              secondMaxGamesDiff = maxGamesDiff;
              firstPlaceDoubles = doubles;
              maxMatchesWon = matchesWon;
              maxGamesDiff = gamesDiff;
            } else if (
              matchesWon > secondMaxMatchesWon ||
              (matchesWon === secondMaxMatchesWon &&
                gamesDiff > secondMaxGamesDiff)
            ) {
              secondPlaceDoubles = doubles;
              secondMaxMatchesWon = matchesWon;
              secondMaxGamesDiff = gamesDiff;
            }
          }

          if (isGroupTied(doublesGroups)) {
            let random = Math.floor(Math.random() * doublesGroups.length);
            const firstPlace = await this.prismaService.eventDouble.findUnique({
              where: {
                eventId_doubleId_categoryId: {
                  categoryId: categoryId,
                  eventId: event.id,
                  doubleId: doublesGroups[random].id,
                },
              },
              select: {
                double: {
                  select: {
                    id: true,
                    categoryId: true,
                    matchesWins: true,
                    games: true,
                    gamesWins: true,
                  },
                },
              },
            });
            firstPlaceDoubles = firstPlace;
            doublesGroups.splice(random, 1);

            random = Math.floor(Math.random() * doublesGroups.length);
            const secondPlace = await this.prismaService.eventDouble.findUnique(
              {
                where: {
                  eventId_doubleId_categoryId: {
                    categoryId: categoryId,
                    eventId: event.id,
                    doubleId: doublesGroups[random].id,
                  },
                },
                select: {
                  double: {
                    select: {
                      id: true,
                      categoryId: true,
                      matchesWins: true,
                      games: true,
                      gamesWins: true,
                    },
                  },
                },
              }
            );
            secondPlaceDoubles = secondPlace;
          }

          if (firstPlaceDoubles) {
            const firstPlaceAtGroup =
              await this.prismaService.doublesGroup.update({
                where: { id: group.id },
                data: {
                  firstPlace: {
                    connect: {
                      id: firstPlaceDoubles.double.id,
                    },
                  },
                },
              });
            console.log(firstPlaceAtGroup);
            console.log(
              `First Place Doubles: ${firstPlaceDoubles.double.id} with ${maxMatchesWon} matches won and ${maxGamesDiff} games diff`
            );
          } else {
            throw new HttpException(
              "Unable to define first place at group",
              HttpStatus.NOT_FOUND
            );
          }

          if (secondPlaceDoubles) {
            const secondPlaceAtGroup =
              await this.prismaService.doublesGroup.update({
                where: { id: group.id },
                data: {
                  groupFinished: true,
                  secondPlace: {
                    connect: {
                      id: secondPlaceDoubles.double.id,
                    },
                  },
                },
              });
            console.log(secondPlaceAtGroup);
            console.log(
              `Second Place Doubles: ${secondPlaceDoubles.double.id} with ${secondMaxMatchesWon} matches won and ${secondMaxGamesDiff} games diff`
            );
          } else {
            throw new HttpException(
              "Unable to define second place at group",
              HttpStatus.NOT_FOUND
            );
          }

          console.log(
            "#########################################################"
          );
        }

        await this.prismaService.categoryGroup.update({
          where: {
            id: categoriesGroups[i].id,
          },
          data: {
            groupsStageFinished: true,
          },
        });

        const updateEvent = await this.prismaService.event.update({
          where: {
            id: event.id,
          },
          data: {
            isGroupMatchesFinished: true,
          },
          select: {
            id: true,
            name: true,
            isActive: true,
            isFinished: true,
            startDate: true,
            finishDate: true,
            matchDurationInMinutes: true,
            timeOfFirstMatch: true,
            timeOfLastMatch: true,
            eventType: true,
            matchType: true,
            isGroupMatchesFinished: true,
            categoriesGroups: {
              select: {
                groupsStageFinished: true,
                groups: true,
              },
            },
          },
        });
        return updateEvent;
      }
    }
  }

  async createFinalsMatches(eventId: string) {
    const event = await this.prismaService.event.findUniqueOrThrow({
      where: { id: eventId },
      select: {
        id: true,
        matchType: true,
        categoriesGroups: {
          select: {
            id: true,
            category: true,
            finalMatches: true,
            groupsStageFinished: true,
            groups: {
              select: {
                id: true,
                key: true,
                groupMatches: true,
                firstPlaceDoublesId: true,
                secondPlaceDoublesId: true,
              },
            },
          },
        },
      },
    });

    for (let i = 0; i < event.categoriesGroups.length; i++) {
      const groups = event.categoriesGroups[i].groups;
      console.log(groups);
      const numberOfGroups = groups.length;
      const categoryId = event.categoriesGroups[i].category.id;
      const categoryGroupId = event.categoriesGroups[i].id;
      console.log(categoryGroupId);

      if (!event.categoriesGroups[i].groupsStageFinished) {
        throw new HttpException(
          "Groups stage not finished for this category.",
          HttpStatus.BAD_REQUEST
        );
      }

      if (numberOfGroups <= 2) {
        // !matchType: 2 ROUND_OF_4
        // !matchType: 1 FINAL
      }

      if (numberOfGroups <= 4) {
        // matchType: 4 ROUND_OF_8
        const groupsByKeys: string[] = ["A", "B", "C", "D"];

        const groupResults = await Promise.all(
          groupsByKeys.map(async (key) => {
            return this.prismaService.doublesGroup.findUnique({
              where: {
                categoryGroupId_key: {
                  categoryGroupId: categoryGroupId,
                  key: key,
                },
              },
              select: {
                id: true,
                firstPlaceDoublesId: true,
                secondPlaceDoublesId: true,
              },
            });
          })
        );

        const [groupA, groupB, groupC, groupD] = groupResults;

        const groups = {
          A: groupA,
          B: groupB,
          C: groupC,
          D: groupD,
        };

        const getDoublesToConnect = (firstPlace: string, secondPlace: string) =>
          [
            firstPlace ? firstPlace : null,
            secondPlace ? secondPlace : null,
          ].filter((item) => item !== null);

        const createMatch = async (
          eventMatchType: EventMatchType,
          firstPlace?: string,
          secondPlace?: string
        ) => {
          const doublesToConnect = getDoublesToConnect(firstPlace, secondPlace);
          const match = await this.matchesService.create({
            categoryId: categoryId,
            doublesIds: doublesToConnect,
            eventId: event.id,
            matchDateId: null,
            matchType: event.matchType,
          });

          if (doublesToConnect.length === 1) {
            //* Bye case
            return this.prismaService.match.update({
              where: { id: match.id },
              data: {
                isFinished: true,
                winner: {
                  connect: { id: doublesToConnect[0] },
                },
                eventMatch: {
                  create: {
                    type: eventMatchType,
                    event: {
                      connect: {
                        id: event.id,
                      },
                    },
                    categoryGroup: {
                      connect: {
                        id: categoryGroupId,
                      },
                    },
                  },
                },
              },
              select: {
                id: true,
                doubles: true,
              },
            });
          }
          return this.prismaService.match.update({
            where: { id: match.id },
            data: {
              eventMatch: {
                create: {
                  type: eventMatchType,
                  event: {
                    connect: {
                      id: event.id,
                    },
                  },
                  categoryGroup: {
                    connect: {
                      id: categoryGroupId,
                    },
                  },
                },
              },
            },
            select: {
              id: true,
              doubles: true,
            },
          });
        };

        const match1Ax2D = await createMatch(
          "ROUND_OF_8",
          groups.A?.firstPlaceDoublesId,
          groups.D?.secondPlaceDoublesId
        );
        console.log(`1A x 2D`);
        console.log(match1Ax2D);
        console.log("------------------------------------------");

        const match2Ax1D = await createMatch(
          "ROUND_OF_8",
          groups.A?.secondPlaceDoublesId,
          groups.D?.firstPlaceDoublesId
        );
        console.log(`2A x 1D`);
        console.log(match2Ax1D);
        console.log("------------------------------------------");

        const match1Bx2C = await createMatch(
          "ROUND_OF_8",
          groups.B?.firstPlaceDoublesId,
          groups.C?.secondPlaceDoublesId
        );
        console.log(`1B x 2C`);
        console.log(match1Bx2C);
        console.log("------------------------------------------");

        const match2Bx1C = await createMatch(
          "ROUND_OF_8",
          groups.B?.secondPlaceDoublesId,
          groups.C?.firstPlaceDoublesId
        );
        console.log(`2B x 1C`);
        console.log(match2Bx1C);
        console.log("------------------------------------------");

        const createMatchByReference = async (
          matchAId: string,
          matchBId: string,
          eventMatchType: EventMatchType,
          categoryGroupId: string
        ) => {
          const match = await createMatch(eventMatchType);

          return this.prismaService.matchesReferenced.create({
            data: {
              categoryGroup: {
                connect: {
                  id: categoryGroupId,
                },
              },
              matchA: {
                connect: {
                  id: matchAId,
                },
              },
              matchB: {
                connect: {
                  id: matchBId,
                },
              },
              refMatch: {
                connect: {
                  id: match.id,
                },
              },
            },
            select: {
              matchA: {
                select: {
                  eventMatch: {
                    select: {
                      type: true,
                    },
                  },
                },
              },
              matchB: {
                select: {
                  eventMatch: {
                    select: {
                      type: true,
                    },
                  },
                },
              },
              refMatch: {
                select: {
                  id: true,
                  eventMatch: {
                    select: {
                      type: true,
                    },
                  },
                },
              },
            },
          });
        };

        const sf1 = await createMatchByReference(
          match1Ax2D.id,
          match1Bx2C.id,
          EventMatchType.ROUND_OF_4,
          categoryGroupId
        );
        console.log("sf-1");
        console.log(sf1);

        const sf2 = await createMatchByReference(
          match2Ax1D.id,
          match2Bx1C.id,
          EventMatchType.ROUND_OF_4,
          categoryGroupId
        );
        console.log("sf-2");
        console.log(sf2);

        const final = await createMatchByReference(
          sf1.refMatch.id,
          sf2.refMatch.id,
          EventMatchType.FINAL,
          categoryGroupId
        );
        console.log("final");
        console.log(final);
      }
    }
    const updatedEvent = await this.prismaService.event.findUniqueOrThrow({
      where: { id: eventId },
      select: {
        id: true,
        matchType: true,
        categoriesGroups: {
          select: {
            id: true,
            category: {
              select: {
                id: true,
                level: true,
                type: true,
              },
            },
            finalMatches: {
              select: {
                number: true,
                type: true,
                eventId: true,
                categoryGroupId: true,
                match: {
                  select: {
                    doubles: {
                      select: {
                        players: {
                          select: {
                            firstName: true,
                            lastName: true,
                          },
                        },
                      },
                    },
                    matchRef: {
                      select: {
                        matchA: {
                          select: {
                            id: true,
                            isFinished: true,
                            doubles: true,
                            eventMatch: {
                              select: {
                                number: true,
                                type: true,
                              },
                            },
                          },
                        },
                        matchB: {
                          select: {
                            id: true,
                            isFinished: true,
                            doubles: true,
                            eventMatch: {
                              select: {
                                number: true,
                                type: true,
                              },
                            },
                          },
                        },
                      },
                    },
                  },
                },
              },
            },
          },
        },
      },
    });

    return updatedEvent;
  }

  async checkAndUpdateReferencedMatches(eventId: string) {
    type ResponseMatches = {
      id: string;
      isFinished: boolean;
      eventMatch: {
        number: number;
        type: EventMatchType;
      };
    }[];

    const referencedMatches =
      await this.prismaService.matchesReferenced.findMany({
        where: {
          categoryGroup: {
            eventId: eventId,
          },
          isUpdated: false,
        },
      });

    let notReadyMatches: ResponseMatches = [];

    let updatedMatches: ResponseMatches = [];

    for (let i = 0; i < referencedMatches.length; i++) {
      const { matchAId, matchBId, refMatchId } = referencedMatches[i];

      const matchA = await this.prismaService.match.findUniqueOrThrow({
        where: { id: matchAId },
        select: {
          id: true,
          isFinished: true,
          winnerDoublesId: true,
          eventMatch: {
            select: {
              type: true,
              number: true,
            },
          },
        },
      });

      if (!matchA.isFinished) {
        notReadyMatches.push(matchA);
      }

      if (matchA.isFinished) {
        updatedMatches.push(matchA);
      }

      const matchB = await this.prismaService.match.findUniqueOrThrow({
        where: { id: matchBId },
        select: {
          id: true,
          isFinished: true,
          winnerDoublesId: true,
          eventMatch: {
            select: {
              type: true,
              number: true,
            },
          },
        },
      });

      if (!matchB.isFinished) {
        notReadyMatches.push(matchB);
      }

      if (matchB.isFinished) {
        updatedMatches.push(matchB);
      }

      if (matchA.isFinished && matchB.isFinished) {
        await this.prismaService.match.update({
          where: {
            id: refMatchId,
          },
          data: {
            doubles: {
              connect: [
                { id: matchA.winnerDoublesId },
                { id: matchB.winnerDoublesId },
              ],
            },
          },
        });

        await this.prismaService.matchesReferenced.update({
          where: {
            matchAId_matchBId_refMatchId: {
              matchAId: matchAId,
              matchBId: matchBId,
              refMatchId: refMatchId,
            },
          },
          data: {
            isUpdated: true,
          },
        });
      }
    }

    return { updated: updatedMatches, notReady: notReadyMatches };
  }

  async endCategoryGroups(eventId: string) {
    const event = await this.prismaService.event.findUniqueOrThrow({
      where: { id: eventId },
      select: {
        categoriesGroups: {
          select: {
            id: true,
            groupsStageFinished: true,
            categoryFinished: true,
            finalMatches: {
              select: {
                number: true,
                type: true,
                match: {
                  select: {
                    id: true,
                    isFinished: true,
                  },
                },
              },
            },
          },
        },
      },
    });

    const categoriesGroups = event.categoriesGroups;

    for (let i = 0; i < categoriesGroups.length; i++) {
      if (!categoriesGroups[i].groupsStageFinished) {
        throw new HttpException(
          "Groups stage not finished yet",
          HttpStatus.BAD_REQUEST
        );
      }

      if (categoriesGroups[i].categoryFinished) {
        continue;
      }

      const finalMatches = categoriesGroups[i].finalMatches;
      console.log(finalMatches);
      const areMatchesFinished = finalMatches.every(
        (em) => em.match.isFinished === true
      );

      if (!areMatchesFinished) {
        throw new HttpException(
          "One or more matches aren't finished",
          HttpStatus.BAD_REQUEST
        );
      } else {
        const getFinal = finalMatches.filter((fm) => fm.type === "FINAL");
        if (getFinal.length !== 1) {
          throw new HttpException(
            "There is more than one 'FINAL' registered in this category",
            HttpStatus.CONFLICT
          );
        }
        const finalId = getFinal[0].match.id;
        const final = await this.prismaService.match.findUniqueOrThrow({
          where: { id: finalId },
          select: {
            winnerDoublesId: true,
            doubles: true,
          },
        });
        const winnerId = final.winnerDoublesId;

        if (final.doubles.length !== 2) {
          //! Verify if possible to restrict number of arrays in db to 2...
          throw new HttpException(
            "Wrong number of doubles assigned to match",
            HttpStatus.CONFLICT
          );
        }

        const secondPlaceId = final.doubles.filter((d) => d.id !== winnerId)[0]
          .id;
        console.log(final);
        console.log(secondPlaceId);
        await this.prismaService.event.update({
          where: { id: eventId },
          data: {
            categoriesGroups: {
              update: {
                where: {
                  id: categoriesGroups[i].id,
                },
                data: {
                  categoryFinished: true,
                  firstPlace: {
                    connect: {
                      id: winnerId,
                    },
                  },
                  secondPlace: {
                    connect: {
                      id: secondPlaceId,
                    },
                  },
                },
              },
            },
          },
        });
      }
    }

    const updatedEvent = await this.prismaService.event.findUniqueOrThrow({
      where: { id: eventId },
      select: {
        categoriesGroups: {
          select: {
            id: true,
            groupsStageFinished: true,
            categoryFinished: true,
            firstPlace: true,
            secondPlace: true,
          },
        },
      },
    });
    return updatedEvent;
  }
  async endEvent(eventId: string) {
    const event = await this.prismaService.event.findUniqueOrThrow({
      where: { id: eventId },
      select: {
        matches: true,
        categoriesGroups: true,
      },
    });

    const areMatchesFinished = event.matches.every(
      (match) => match.isFinished === true
    );

    if (!areMatchesFinished) {
      const notFinishedMatches = event.matches.filter(
        (m) => m.isFinished === false
      );

      if (notFinishedMatches.length === 1) {
        throw new HttpException(
          `Unfinished match ${notFinishedMatches[0].id} in this tournament`,
          HttpStatus.BAD_REQUEST
        );
      } else {
        throw new HttpException(
          `Unfinished matches [${notFinishedMatches.map((m) => m.id).join(", ")}] in this tournament`,
          HttpStatus.BAD_REQUEST
        );
      }
    }

    const areCategoriesFinished = event.categoriesGroups.every(
      (cg) => cg.groupsStageFinished && cg.categoryFinished
    );

    if (!areCategoriesFinished) {
      const notFinishedGroups = event.categoriesGroups.filter(
        (cg) => cg.categoryFinished === false
      );

      if (notFinishedGroups.length === 1) {
        throw new HttpException(
          `Unfinished category ${notFinishedGroups[0].id} in this tournament`,
          HttpStatus.BAD_REQUEST
        );
      } else {
        throw new HttpException(
          `Unfinished categories [${notFinishedGroups.map((m) => m.id).join(", ")}] in this tournament`,
          HttpStatus.BAD_REQUEST
        );
      }
    }

    const updatedEvent = await this.prismaService.event.update({
      where: { id: eventId },
      data: {
        isActive: false,
        isFinished: true,
      },
    });

    return updatedEvent;
  }

  async getEventByIdParam(id: string) {
    const event = await this.prismaService.event.findUnique({
      where: {
        id: id,
      },
      select: {
        id: true,
        eventMatches: {
          select: {
            match: {
              select: {
                id: true,
                category: true,
                winner: true,
                matchDate: true,
                doubles: {
                  select: {
                    id: true,
                    players: true,
                  },
                },
                isFinished: true,
              },
            },
            matchId: true,
            eventId: true,
            number: true,
            type: true,
            doublesGroup: true,
          },
        },
        categoriesGroups: {
          select: {
            id: true,
            category: {
              select: {
                id: true,
                type: true,
                level: true,
              },
            },
            groupsStageFinished: true,
            groups: {
              select: {
                id: true,
                key: true,
                groupMatches: true,
                eventDoubles: {
                  select: {
                    double: {
                      select: {
                        id: true,
                        players: true,
                      },
                    },
                  },
                },
              },
            },
          },
        },
        eventType: true,
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
            doublesGroupId: true,
            atRest: true,
          },
        },
        isActive: true,
        isFinished: true,
        isGroupMatchesFinished: true,
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

  async doublesRequestToEvent(
    doublesRequestToEventDto: RegisterDoublesInEventDto
  ) {
    const doubles = await this.prismaService.double.findUniqueOrThrow({
      where: { id: doublesRequestToEventDto.doublesId },
    });

    const event = await this.prismaService.event.findUniqueOrThrow({
      where: { id: doublesRequestToEventDto.eventId },
      select: {
        id: true,
        eventDoubles: true,
      },
    });

    const eventDoublesIds = event.eventDoubles.flatMap((d) => d.doubleId);

    if (eventDoublesIds.includes(doubles.id)) {
      throw new HttpException(
        "Doubles already registered at this event...",
        HttpStatus.CONFLICT
      );
    }

    const createRequest = await this.prismaService.event.update({
      where: { id: event.id },
      data: {
        eventRequests: {
          create: {
            doubleId: doubles.id,
            categoryId: doubles.categoryId,
          },
        },
      },
      select: {
        id: true,
        name: true,
        eventRequests: true,
      },
    });

    return createRequest;
  }

  async getEventRequests(id: string) {
    const eventRequests = await this.prismaService.event.findUniqueOrThrow({
      where: {
        id: id,
      },
      select: {
        id: true,
        eventRequests: {
          select: {
            event: true,
            eventId: true,
            double: {
              select: {
                id: true,
                players: true,
              },
            },
            doubleId: true,
            category: true,
            categoryId: true,
          },
        },
      },
    });
    return eventRequests;
  }

  async handleRequest(
    handleDoublesRequestToEventDto: HandleDoublesRequestToEventDto
  ) {
    const eventRequest =
      await this.prismaService.eventRequest.findUniqueOrThrow({
        where: {
          eventId_doubleId_categoryId: {
            eventId: handleDoublesRequestToEventDto.eventId,
            categoryId: handleDoublesRequestToEventDto.categoryId,
            doubleId: handleDoublesRequestToEventDto.doubleId,
          },
        },
      });

    if (handleDoublesRequestToEventDto.accepted) {
      const registerDoubles = await this.prismaService.event.update({
        where: {
          id: handleDoublesRequestToEventDto.eventId,
        },
        data: {
          eventDoubles: {
            create: {
              doubleId: eventRequest.doubleId,
              categoryId: eventRequest.categoryId,
            },
          },
        },
      });
      await this.prismaService.eventRequest.delete({
        where: {
          eventId_doubleId_categoryId: {
            eventId: eventRequest.eventId,
            categoryId: eventRequest.categoryId,
            doubleId: eventRequest.doubleId,
          },
        },
      });
      return registerDoubles;
    }

    if (!handleDoublesRequestToEventDto.accepted) {
      return await this.prismaService.eventRequest.delete({
        where: {
          eventId_doubleId_categoryId: {
            eventId: eventRequest.eventId,
            categoryId: eventRequest.categoryId,
            doubleId: eventRequest.doubleId,
          },
        },
      });
    }
    return;
  }
}

const indexToLetter = (index: number) => {
  const charCode = "A".charCodeAt(0) + index;
  return String.fromCharCode(charCode);
};

const isGroupTied = (
  group: { id: string; matchesWon: number; gamesDiff: number }[]
): boolean => {
  if (group.length === 0) {
    return false;
  }

  const { matchesWon, gamesDiff } = group[0];

  for (let i = 1; i < group.length; i++) {
    if (
      group[i].matchesWon !== matchesWon ||
      group[i].gamesDiff !== gamesDiff
    ) {
      return false;
    }
  }

  return true;
};
