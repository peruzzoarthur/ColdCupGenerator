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
        const isPlayerTwoInThisCategory = await this.prismaService.event.findUnique({
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
        });
        if (isPlayerTwoInThisCategory) {
            throw new common_1.HttpException("Player two is already registered in this category.", common_1.HttpStatus.BAD_REQUEST);
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
                        atRestId: true,
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
    async activateEventWithAutoPopulate(activateEventDto) {
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
        const doubles = event.categories.flatMap((cat) => cat.eventDoubles.map((ed) => {
            return {
                doublesId: ed.doubleId,
                catId: ed.double.categoryId,
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
        let matches = (await this.getEventById({ id: event.id })).matches;
        let matchDatesAvailable = (await this.getEventById({ id: event.id })).matchDates
            .filter((matchDate) => matchDate.match === null)
            .map((md) => {
            return {
                id: md.id,
                start: md.start,
                finish: md.finish,
            };
        });
        const firstTimeStamp = matchDatesAvailable[0].start.valueOf();
        for (let i = 0; matches.length > 0;) {
            const match = matches[0];
            console.log(`Calling for Match: #${matches[0].number}`);
            console.log(`👽My name is i, my number is: ${i}👽`);
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
                console.log(` ## Before: matchDates.length = ${matchDatesAvailable.length}`);
                matchDatesAvailable = matchDatesAvailable.filter((md) => md.id !== matchDate.id);
                console.log(` ## After: matchDates.length = ${matchDatesAvailable.length}`);
                i = 0;
            }
            else {
                let doublesAState;
                let doublesBState;
                if (doublesA.atRestId === null) {
                    doublesAState = firstTimeStamp;
                }
                else {
                    doublesAState = doublesA.atRest.start.valueOf();
                }
                if (doublesB.atRestId === null) {
                    doublesBState = firstTimeStamp;
                }
                else {
                    doublesBState = doublesA.atRest.start.valueOf();
                }
                if (doublesAState <= matchDate.start.valueOf() &&
                    doublesBState <= matchDate.start.valueOf()) {
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
                    console.log(` ## Before: matchDates.length = ${matchDatesAvailable.length}`);
                    matchDatesAvailable = matchDatesAvailable.filter((md) => md.id !== matchDate.id);
                    console.log(` ## After: matchDates.length = ${matchDatesAvailable.length}`);
                    i = 0;
                }
                if (doublesAState > matchDate.start.valueOf() ||
                    doublesBState > matchDate.start.valueOf()) {
                    console.log("🌚🌚 At least one of them doubles are at rest... lets i++ 🌚🌚");
                    i++;
                }
            }
        }
        return { matches: matches };
    }
    async activateEventWithoutAutoPopulate(activateEventDto) {
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
        const doubles = event.categories.flatMap((cat) => cat.eventDoubles.map((ed) => {
            return {
                doublesId: ed.doubleId,
                catId: ed.double.categoryId,
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
        return;
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
    async remove(id) {
        return `This action removes a #${id} event`;
    }
    async findOne(id) {
        return `This action returns a #${id} event`;
    }
    async update(id, updateEventDto) {
        return `This action updates a #${id} event`;
    }
};
exports.EventsService = EventsService;
exports.EventsService = EventsService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService,
        matches_service_1.MatchesService])
], EventsService);
//# sourceMappingURL=events.service.js.map