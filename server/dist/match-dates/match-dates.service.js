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
    create(createMatchDateDto) {
        return this.prismaService.matchDate.create({
            data: {
                eventId: createMatchDateDto.eventId,
                start: createMatchDateDto.startDate,
                finish: createMatchDateDto.finishDate,
            },
        });
    }
    findAll() {
        return this.prismaService.matchDate.findMany({
            select: {
                id: true,
                eventId: true,
                start: true,
                finish: true,
                match: true,
            },
        });
    }
    findOne(id) {
        return `This action returns a #${id} matchDate`;
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