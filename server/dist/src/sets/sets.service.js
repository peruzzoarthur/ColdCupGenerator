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
exports.SetsService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma.service");
const games_service_1 = require("../games/games.service");
let SetsService = class SetsService {
    constructor(prismaService, gamesService) {
        this.prismaService = prismaService;
        this.gamesService = gamesService;
    }
    async create(createSetDto) {
        const newSet = await this.prismaService.set.create({
            data: {
                match: {
                    connect: {
                        id: createSetDto.matchId,
                    },
                },
                doubles: {
                    connect: createSetDto.doublesIds.map((id) => ({ id })),
                },
                events: {
                    connect: {
                        id: createSetDto.eventId,
                    },
                },
            },
        });
        return newSet;
    }
    async findAll() {
        return await this.prismaService.set.findMany({
            select: {
                match: true,
                id: true,
                isFinished: true,
                result: true,
                doubles: true,
                games: true,
                _count: true,
            },
        });
    }
    async findOne(id) {
        const set = this.prismaService.set.findUnique({
            where: { id: id },
            select: {
                id: true,
                isFinished: true,
                type: true,
                doubles: true,
            },
        });
        if (!set) {
            throw new common_1.HttpException("Set not found", common_1.HttpStatus.NOT_FOUND);
        }
        return set;
    }
    update(id, updateSetDto) {
        return `This action updates a #${id} set`;
    }
    async finishSet(id, setFinishedDto) {
        const set = await this.prismaService.set.findUnique({
            where: {
                id: id,
            },
        });
        if (!set) {
            throw new common_1.HttpException("Set not found", common_1.HttpStatus.NOT_FOUND);
        }
        if (set.isFinished) {
            throw new common_1.HttpException("This set is finished", common_1.HttpStatus.BAD_REQUEST);
        }
        for (let i = 0; i < setFinishedDto.doublesOneGames; i++) {
            await this.gamesService.create({
                setId: set.id,
                winnerDoublesId: setFinishedDto.doublesOneId,
                doublesOneId: setFinishedDto.doublesOneId,
                doublesTwoId: setFinishedDto.doublesTwoId,
                eventId: setFinishedDto.eventId,
            });
        }
        for (let i = 0; i < setFinishedDto.doublesTwoGames; i++) {
            await this.gamesService.create({
                setId: set.id,
                winnerDoublesId: setFinishedDto.doublesTwoId,
                doublesOneId: setFinishedDto.doublesOneId,
                doublesTwoId: setFinishedDto.doublesTwoId,
                eventId: setFinishedDto.eventId,
            });
        }
        const updatedSet = await this.prismaService.set.update({
            where: {
                id: id,
            },
            data: {
                isFinished: true,
                result: `${setFinishedDto.doublesOneGames}x${setFinishedDto.doublesTwoGames}`,
                winner: {
                    connect: {
                        id: setFinishedDto.winnerDoublesId,
                    },
                },
            },
        });
        return updatedSet;
    }
    remove(id) {
        return `This action removes a #${id} set`;
    }
};
exports.SetsService = SetsService;
exports.SetsService = SetsService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService,
        games_service_1.GamesService])
], SetsService);
//# sourceMappingURL=sets.service.js.map