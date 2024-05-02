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
exports.MatchDatesService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma.service");
let MatchDatesService = class MatchDatesService {
    constructor(prismaService) {
        this.prismaService = prismaService;
    }
    async create(createMatchDateDto) {
        return await this.prismaService.matchDate.create({
            data: {
                eventId: createMatchDateDto.eventId,
                start: createMatchDateDto.startDate,
                finish: createMatchDateDto.finishDate,
                courtId: createMatchDateDto.courtId,
            },
        });
    }
    async findAll() {
        return await this.prismaService.matchDate.findMany({
            select: {
                id: true,
                eventId: true,
                start: true,
                finish: true,
                matchId: true,
                match: true,
                court: true,
            },
        });
    }
    async findMatchDatesInOrderByEventId(eventId) {
        const matchDates = await this.prismaService.matchDate.findMany({
            where: {
                eventId: eventId,
            },
            orderBy: {
                start: "asc",
            },
            select: {
                start: true,
                finish: true,
                court: true,
                matchId: true,
                id: true,
                match: {
                    select: {
                        number: true,
                        doubles: {
                            select: {
                                players: true,
                            },
                        },
                    },
                },
            },
        });
        return matchDates;
    }
    async findOne(id) {
        return await this.prismaService.matchDate.findUniqueOrThrow({
            where: {
                id: id,
            },
            select: {
                start: true,
                finish: true,
                id: true,
                court: true,
            },
        });
    }
    update(id, updateMatchDateDto) {
        return `This action updates a #${id} matchDate`;
    }
    remove(id) {
        return `This action removes a #${id} matchDate`;
    }
};
exports.MatchDatesService = MatchDatesService;
exports.MatchDatesService = MatchDatesService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService])
], MatchDatesService);
//# sourceMappingURL=match-dates.service.js.map