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
const categories_service_1 = require("../categories/categories.service");
let EventsService = class EventsService {
    constructor(prismaService, categoriesService) {
        this.prismaService = prismaService;
        this.categoriesService = categoriesService;
    }
    async createEvent(createEventDto) {
        const placesToConnect = createEventDto.placesIds.map((id) => ({ id }));
        const categoriesToConnect = createEventDto.categoriesIds.map((id) => ({
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
            },
            select: {
                id: true,
                categories: true,
                name: true,
                places: true,
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
                eventDoubles: true,
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
        const createdEventDouble = await this.prismaService.eventDouble.create({
            data: {
                eventId: registerDoublesInEventDto.eventId,
                doubleId: doublesToRegister.id,
                categoryId: doublesToRegister.categoryId,
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
                    },
                },
                categories: {
                    select: {
                        id: true,
                        type: true,
                        level: true,
                    },
                },
            },
        });
        return event;
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
};
exports.EventsService = EventsService;
exports.EventsService = EventsService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService,
        categories_service_1.CategoriesService])
], EventsService);
//# sourceMappingURL=events.service.js.map