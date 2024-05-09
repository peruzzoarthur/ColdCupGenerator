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
exports.MatchesService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma.service");
const sets_service_1 = require("../sets/sets.service");
let MatchesService = class MatchesService {
    constructor(prismaService, setsService) {
        this.prismaService = prismaService;
        this.setsService = setsService;
    }
    async create(createMatchDto) {
        if (createMatchDto.matchDateId === undefined) {
            console.log("calling without matchDateId");
            const match = await this.prismaService.match.create({
                data: {
                    doubles: { connect: createMatchDto.doublesIds.map((id) => ({ id })) },
                    eventId: createMatchDto.eventId,
                    categoryId: createMatchDto.categoryId,
                },
                select: {
                    id: true,
                    isFinished: true,
                    category: true,
                    categoryId: true,
                    doubles: true,
                    type: true,
                    sets: true,
                },
            });
            const superSet = await this.setsService.create({
                doublesOneGames: 0,
                doublesTwoGames: 0,
                matchId: match.id,
                doublesIds: createMatchDto.doublesIds,
                eventId: createMatchDto.eventId,
            });
            return match;
        }
        console.log("calling without matchDateId");
        const match = await this.prismaService.match.create({
            data: {
                doubles: { connect: createMatchDto.doublesIds.map((id) => ({ id })) },
                eventId: createMatchDto.eventId,
                categoryId: createMatchDto.categoryId,
                matchDate: {
                    connect: {
                        id: createMatchDto.matchDateId ? createMatchDto.matchDateId : null,
                    },
                },
            },
            select: {
                id: true,
                isFinished: true,
                category: true,
                categoryId: true,
                doubles: true,
                type: true,
                sets: true,
            },
        });
        const superSet = await this.setsService.create({
            doublesOneGames: 0,
            doublesTwoGames: 0,
            matchId: match.id,
            doublesIds: createMatchDto.doublesIds,
            eventId: createMatchDto.eventId,
        });
        return match;
    }
    async findAll() {
        return this.prismaService.match.findMany({
            select: {
                id: true,
                isFinished: true,
                category: true,
                winner: true,
                eventId: true,
                type: true,
                sets: true,
                matchDate: {
                    select: {
                        id: true,
                        eventId: true,
                        start: true,
                        finish: true,
                        matchId: true,
                    },
                },
            },
        });
    }
    async findOne(id) {
        const match = this.prismaService.match.findUnique({
            where: { id: id },
            select: {
                number: true,
                id: true,
                isFinished: true,
                type: true,
                doubles: {
                    select: {
                        players: true,
                    },
                },
            },
        });
        if (!match) {
            throw new common_1.HttpException("Match not found", common_1.HttpStatus.NOT_FOUND);
        }
        return match;
    }
    async findResult(id) {
        const match = await this.prismaService.match.findUnique({
            where: { id: id },
            select: {
                id: true,
                isFinished: true,
                doubles: true,
                sets: {
                    select: {
                        games: {
                            select: {
                                winner: true,
                                winnerId: true,
                            },
                        },
                        id: true,
                        winner: true,
                    },
                },
            },
        });
        if (!match) {
            throw new common_1.HttpException("Match not found", common_1.HttpStatus.NOT_FOUND);
        }
        if (match.isFinished === null) {
            return;
        }
        const set = match.sets;
        const doublesAID = match.doubles[0].id;
        const doublesBID = match.doubles[1].id;
        const doublesOne = {
            id: doublesAID,
            gamesWon: set[0].games.filter((g) => g.winnerId === doublesAID).length,
        };
        const doublesTwo = {
            id: doublesBID,
            gamesWon: set[0].games.filter((g) => g.winnerId === doublesBID).length,
        };
        return {
            doublesOneGames: doublesOne.gamesWon,
            doublesTwoGames: doublesTwo.gamesWon,
        };
    }
    async update(id, updateMatchDto) {
        return `This action updates a #${id} match`;
    }
    async updateMatchDate(id, updateMatchDto) {
        console.log(id);
        let match = await this.prismaService.match.findUnique({
            where: {
                id: id,
            },
            select: {
                id: true,
                matchDate: {
                    select: {
                        id: true,
                        start: true,
                    },
                },
            },
        });
        if (match.matchDate === null) {
            await this.prismaService.match.update({
                where: { id: id },
                data: {
                    matchDate: {
                        connect: {
                            id: updateMatchDto.matchDateId,
                        },
                    },
                },
            });
            return;
        }
        if (match.matchDate.id !== null) {
            await this.prismaService.matchDate.update({
                where: {
                    id: match.matchDate.id,
                },
                data: {
                    matchId: null,
                },
            });
        }
        await this.prismaService.match.update({
            where: { id: id },
            data: {
                matchDate: {
                    connect: {
                        id: updateMatchDto.matchDateId,
                    },
                },
            },
        });
        match = await this.prismaService.match.findUnique({
            where: {
                id: id,
            },
            select: {
                id: true,
                matchDate: {
                    select: {
                        id: true,
                        start: true,
                    },
                },
            },
        });
        return match;
    }
    async finishMatch(id, matchFinishedDto) {
        const match = await this.prismaService.match.findUnique({
            where: {
                id: id,
            },
            select: {
                id: true,
                doubles: true,
                sets: true,
            },
        });
        if (!match) {
            throw new common_1.HttpException("Match not found", common_1.HttpStatus.NOT_FOUND);
        }
        for (let i = 0; i < match.sets.length; i++) {
            await this.setsService.finishSet(match.sets[i].id, matchFinishedDto);
        }
        const updatedMatch = await this.prismaService.match.update({
            where: {
                id: id,
            },
            data: {
                isFinished: true,
                winnerDoublesId: matchFinishedDto.winnerDoublesId,
            },
        });
        return updatedMatch;
    }
    remove(id) {
        return `This action removes a #${id} match`;
    }
};
exports.MatchesService = MatchesService;
exports.MatchesService = MatchesService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService,
        sets_service_1.SetsService])
], MatchesService);
//# sourceMappingURL=matches.service.js.map