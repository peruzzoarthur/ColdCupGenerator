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
        if (createDoubleDto.playerOneId === createDoubleDto.playerTwoId) {
            throw new common_1.HttpException("Sorry, can't have same player doubles...", common_1.HttpStatus.BAD_REQUEST);
        }
        if (!createDoubleDto.playerOneId || !createDoubleDto.playerTwoId) {
            throw new common_1.HttpException("Select two players...", common_1.HttpStatus.BAD_REQUEST);
        }
        if (!createDoubleDto.categoryId) {
            throw new common_1.HttpException("Please select a category...", common_1.HttpStatus.BAD_REQUEST);
        }
        const playerOne = await this.prismaService.player.findUnique({
            where: {
                id: createDoubleDto.playerOneId,
            },
        });
        const playerTwo = await this.prismaService.player.findUnique({
            where: {
                id: createDoubleDto.playerTwoId,
            },
            select: {
                id: true,
                categories: true,
            },
        });
        const doublesExist = await this.prismaService.double.findFirst({
            where: {
                AND: [
                    {
                        players: {
                            some: { id: playerOne.id },
                        },
                    },
                    { players: { some: { id: playerTwo.id } } },
                ],
            },
        });
        if (doublesExist) {
            throw new common_1.HttpException("Players already registered as doubles.", common_1.HttpStatus.CONFLICT);
        }
        const createDoubles = await this.prismaService.double.create({
            data: {
                players: {
                    connect: [{ id: playerOne.id }, { id: playerTwo.id }],
                },
                category: {
                    connect: {
                        id: createDoubleDto.categoryId,
                    },
                },
            },
            select: {
                id: true,
                players: true,
            },
        });
        return createDoubles;
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
    async getDoublesById(getDoublesByIdDto) {
        const doubles = await this.prismaService.double.findUnique({
            where: {
                id: getDoublesByIdDto.id,
            },
            select: {
                id: true,
                players: true,
            },
        });
        return doubles;
    }
    async updateCategory(doublesId, updateDoubleDto) {
        const getDoubles = await this.prismaService.double.findUnique({
            where: {
                id: doublesId,
            },
        });
        if (!getDoubles) {
            throw new common_1.HttpException("Doubles not found", common_1.HttpStatus.BAD_REQUEST);
        }
        const updateDoubles = this.prismaService.double.update({
            where: {
                id: doublesId,
            },
            data: {
                categoryId: updateDoubleDto.categoryId,
            },
        });
        return updateDoubles;
    }
    async deleteDoubles(doublesId) {
        const getDoubles = await this.prismaService.double.findUnique({
            where: {
                id: doublesId,
            },
        });
        if (!getDoubles) {
            throw new common_1.HttpException("Doubles not found", common_1.HttpStatus.BAD_REQUEST);
        }
        const removeDoubles = await this.prismaService.double.delete({
            where: {
                id: doublesId,
            },
        });
        return removeDoubles;
    }
};
exports.DoublesService = DoublesService;
exports.DoublesService = DoublesService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService])
], DoublesService);
//# sourceMappingURL=doubles.service.js.map