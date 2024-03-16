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
exports.DoublesService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma.service");
let DoublesService = class DoublesService {
    constructor(prismaService) {
        this.prismaService = prismaService;
    }
    async createDouble(createDoubleDto) {
        const double = await this.prismaService.double.create({
            data: {
                players: {
                    connect: [
                        { id: createDoubleDto.playerOneId },
                        { id: createDoubleDto.playerTwoId },
                    ],
                },
                category: {
                    connect: {
                        id: createDoubleDto.categoryId,
                    },
                },
            },
        });
        return double;
    }
    async findAllDoubles() {
        const doubles = await this.prismaService.double.findMany({
            select: {
                id: true,
                players: true,
                category: true,
            },
        });
        return doubles;
    }
    findOne(id) {
        return `This action returns a #${id} double`;
    }
    update(id, updateDoubleDto) {
        return `This action updates a #${id} double`;
    }
    remove(id) {
        return `This action removes a #${id} double`;
    }
};
exports.DoublesService = DoublesService;
exports.DoublesService = DoublesService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService])
], DoublesService);
//# sourceMappingURL=doubles.service.js.map