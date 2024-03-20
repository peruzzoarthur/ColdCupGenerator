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
exports.PlayerService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma.service");
const categories_service_1 = require("../categories/categories.service");
const { uniqueNamesGenerator, names, adjectives, } = require("unique-names-generator");
let PlayerService = class PlayerService {
    constructor(prismaService, categoriesService) {
        this.prismaService = prismaService;
        this.categoriesService = categoriesService;
    }
    async createPlayer(createPlayerDto) {
        try {
            const newPlayer = await this.prismaService.player.create({
                data: {
                    position: createPlayerDto.position,
                    email: `${createPlayerDto.firstName}${createPlayerDto.lastName}@proton.me`,
                    firstName: createPlayerDto.firstName,
                    lastName: createPlayerDto.lastName,
                    categories: {
                        connect: {
                            id: createPlayerDto.categoryId,
                        },
                    },
                },
            });
            return newPlayer;
        }
        catch (error) {
            console.error("Error creating player:", error);
            return error;
        }
    }
    async getAllPlayers() {
        const allPlayers = this.prismaService.player.findMany({
            select: {
                id: true,
                firstName: true,
                lastName: true,
                position: true,
                categories: true,
            },
        });
        return allPlayers;
    }
    async getPlayersByCategory(categoryId) {
        const allPlayers = this.prismaService.player.findMany({
            select: {
                id: true,
                firstName: true,
                lastName: true,
                position: true,
                categories: true,
            },
            where: {
                categories: {
                    some: {
                        id: categoryId,
                    },
                },
            },
        });
        return allPlayers;
    }
};
exports.PlayerService = PlayerService;
exports.PlayerService = PlayerService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService,
        categories_service_1.CategoriesService])
], PlayerService);
//# sourceMappingURL=player.service.js.map