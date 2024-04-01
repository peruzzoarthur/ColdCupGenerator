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
        });
        console.log(superSet);
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
                date: true,
                type: true,
                sets: true,
            },
        });
    }
    async findOne(id) {
        const match = this.prismaService.match.findUnique({
            where: { id: id },
            select: {
                id: true,
                isFinished: true,
                type: true,
                doubles: true,
            },
        });
        if (!match) {
            throw new common_1.HttpException("Match not found", common_1.HttpStatus.NOT_FOUND);
        }
        return match;
    }
    async update(id, updateMatchDto) {
        return `This action updates a #${id} match`;
    }
    async matchFinished(id, matchFinishedDto) {
        const match = await this.prismaService.match.findUnique({
            where: {
                id: id,
            },
        });
        console.log(matchFinishedDto);
        if (!match) {
            throw new common_1.HttpException("Match not found", common_1.HttpStatus.NOT_FOUND);
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