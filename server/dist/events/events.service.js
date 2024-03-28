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
const matches_service_1 = require("../matches/matches.service");
let EventsService = class EventsService {
    constructor(prismaService, categoriesService, matchesService) {
        this.prismaService = prismaService;
        this.categoriesService = categoriesService;
        this.matchesService = matchesService;
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
                matches: {
                    select: {
                        categoryId: true,
                        doubles: {
                            select: {
                                players: true,
                                id: true,
                            },
                        },
                        eventId: true,
                    },
                },
                eventDoubles: true,
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
                isActive: true,
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
                matches: {
                    select: {
                        categoryId: true,
                        doubles: true,
                        eventId: true,
                        isFinished: true,
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
            },
        });
        return event;
    }
    async activateEvent(getEventByIdDto) {
        const event = await this.getEventById(getEventByIdDto);
        if (!event.isActive) {
            console.log("not active");
        }
        else {
            console.log("active?");
        }
        const totalCategories = event.categories.length;
        const aCategory = event.categories[0].id;
        const doublesIds = event.categories.flatMap((cat) => cat.eventDoubles.map((ed) => ed.doubleId));
        const eventDoubles = event.categories.flatMap((cat) => cat.eventDoubles);
        for (let i = 0; i < doublesIds.length; i++) {
            for (let j = i + 1; j < doublesIds.length; j++) {
                console.log(`${doublesIds[i]} x ${doublesIds[j]}`);
                const newMatch = await this.matchesService.create({
                    doublesIds: [doublesIds[i], doublesIds[j]],
                    categoryId: aCategory,
                    eventId: event.id,
                });
                console.log(newMatch);
            }
        }
        return eventDoubles;
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
        categories_service_1.CategoriesService,
        matches_service_1.MatchesService])
], EventsService);
//# sourceMappingURL=events.service.js.map