"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.EventsService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma.service");
const matches_service_1 = require("../matches/matches.service");
let EventsService = class EventsService {
    constructor(prismaService, matchesService) {
        this.prismaService = prismaService;
        this.matchesService = matchesService;
    }
    async createEvent(createEventDto) {
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
    async registerDoublesInEvent(registerDoublesInEventDto) {
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
            throw new common_1.HttpException("Doubles are already registered in this event", common_1.HttpStatus.BAD_REQUEST);
        }
        const playerOne = doublesToRegister.players[0];
        const playerTwo = doublesToRegister.players[1];
        const isPlayerOneInThisCategory = await this.prismaService.event.findUnique({
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
        });
        if (isPlayerOneInThisCategory) {
            throw new common_1.HttpException("Player one is already registered in this category.", common_1.HttpStatus.BAD_REQUEST);
        }
        console.log(eventFirstMatchStart);
        const createdEventDouble = await this.prismaService.eventDouble.create({
            data: {
                eventId: registerDoublesInEventDto.eventId,
                doubleId: doublesToRegister.id,
                categoryId: doublesToRegister.categoryId,
                atRest: new Date(eventFirstMatchStart.startDate.valueOf() +
                    eventFirstMatchStart.timeOfFirstMatch * 3600000),
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
    async getEventById(getEventByIdDto) {
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
                        double: {
                            select: {
                                id: true,
                                players: true,
                                category: true,
                            },
                        },
                        atRest: true,
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
    async createSchedule(createScheduleDto) {
        let daysArray = [];
        const oneDayInMs = 86400000;
        const oneHourInMs = 3600000;
        const oneMinInMs = 60000;
        const firstDay = new Date(createScheduleDto.startDate);
        const lastDay = new Date(createScheduleDto.finishDate);
        const days = Math.round((lastDay.valueOf() - firstDay.valueOf()) / oneDayInMs);
        for (let i = 0; i <= days; i++) {
            const date = new Date(firstDay.valueOf() + i * oneDayInMs);
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
                const initialTime = new Date(daysArray[i].date).valueOf() +
                    daysArray[i].timeOfFirstMatch * oneHourInMs;
                const hoursPlaying = daysArray[i].timeOfLastMatch - daysArray[i].timeOfFirstMatch;
                const matchDuration = daysArray[i].matchDuration * oneMinInMs;
                for (let j = initialTime; j <= initialTime + oneHourInMs * hoursPlaying; j += matchDuration) {
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
    async activateEvent(activateEventDto) {
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
        let matchDatesAvailable = (await this.getEventById({ id: event.id })).matchDates
            .filter((matchDate) => matchDate.match === null)
            .map((md) => {
            return {
                id: md.id,
                start: md.start,
                finish: md.finish,
            };
        });
        const doubles = event.categories.flatMap((cat) => cat.eventDoubles.map((ed) => {
            return {
                doublesId: ed.doubleId,
                catId: ed.double.categoryId,
                doublesRestState: matchDatesAvailable[0].start,
            };
        }));
        const categoriesIds = event.categories.flatMap((cat) => cat.id);
        let matchesToAdd = [];
        let matchCount = 0;
        for (let c = 0; c < categoriesIds.length; c++) {
            const filteredDoublesByCategory = doubles.filter((d) => d.catId === categoriesIds[c]);
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
                throw new common_1.HttpException("One of the doubles is null", common_1.HttpStatus.BAD_REQUEST);
            }
            matchDatesAvailable = (await this.getEventById({ id: event.id })).matchDates
                .filter((matchDate) => matchDate.match === null)
                .map((md) => {
                return {
                    id: md.id,
                    start: md.start,
                    finish: md.finish,
                };
            });
            console.log(`MatchDatesAvailable: ${matchDatesAvailable.length}`);
            for (let i = 0; i <= matchDatesAvailable.length; i++) {
                console.log(`
          doublesA.atRest: ${doublesA.atRest};
          doublesB.atRest: ${doublesB.atRest};
          matchTime: ${matchDatesAvailable[i].start}
          `);
                if (doublesA.atRest <= matchDatesAvailable[i].start &&
                    doublesB.atRest <= matchDatesAvailable[i].start) {
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
                            atRest: new Date(matchDatesAvailable[i].finish.valueOf() + 3600000 * 2),
                        },
                    });
                    console.log("🌞goSeeTheSun🌞");
                    break;
                }
            }
        }
        return matchesToAdd;
    }
    findOne(id) {
        return `This action returns a #${id} event`;
    }
    update(id, updateEventDto) {
        return `This action updates a #${id} event`;
    }
    remove(id) {
        return `This action removes a #${id} event`;
    }
    async getEventByIdParam(id) {
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
    async getEventInfoForGenerateMatches(id) {
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
        const courts = eventInfo.courts.length;
        const matchIntervalInHours = eventInfo.matchDurationInMinutes / 60;
        const playtimePerDayInHours = eventInfo.timeOfLastMatch - eventInfo.timeOfFirstMatch + 1;
        const availableMatchDates = Math.round((playtimePerDayInHours * days) / matchIntervalInHours) *
            courts;
        const categoriesWithTotalMatches = categories.map((cat) => {
            const totalDoubles = cat.eventDoubles.length;
            if (cat.eventDoubles.length === 0) {
                return { ...cat, totalMatches: 0 };
            }
            if (cat.eventDoubles.length === 1) {
                return { ...cat, totalMatches: 0 };
            }
            if (totalDoubles === 2) {
                return { ...cat, totalMatches: 1 };
            }
            return {
                ...cat,
                totalMatches: Math.floor((cat.eventDoubles.length * cat.eventDoubles.length - 1) / 2),
            };
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
};
exports.EventsService = EventsService;
exports.EventsService = EventsService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService,
        matches_service_1.MatchesService])
], EventsService);
//# sourceMappingURL=events.service.js.map