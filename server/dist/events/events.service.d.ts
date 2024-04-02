import { CreateEventDto } from "./dto/create-event.dto";
import { UpdateEventDto } from "./dto/update-event.dto";
import { PrismaService } from "src/prisma.service";
import { RegisterDoublesInEventDto } from "./dto/register-doubles-event.dto";
import { CategoriesService } from "src/categories/categories.service";
import { GetEventByIdDto } from "./dto/get-event-by-id.dto";
import { MatchesService } from "src/matches/matches.service";
export declare class EventsService {
    private readonly prismaService;
    private readonly categoriesService;
    private readonly matchesService;
    constructor(prismaService: PrismaService, categoriesService: CategoriesService, matchesService: MatchesService);
    createEvent(createEventDto: CreateEventDto): Promise<{
        id: string;
        name: string;
        categories: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        }[];
        places: {
            id: string;
            name: string;
            address: string;
        }[];
    }>;
    findAllEvents(): Promise<{
        matches: {
            isFinished: boolean;
            categoryId: string;
            eventId: string;
            date: Date;
            category: {
                type: import(".prisma/client").$Enums.CatType;
                level: number;
            };
            winner: {
                id: string;
                categoryId: string;
            };
            sets: {
                id: string;
                type: import(".prisma/client").$Enums.SetType;
                setWinnerId: string;
                result: string;
                isFinished: boolean;
            }[];
            doubles: {
                id: string;
                players: {
                    id: string;
                    email: string;
                    firstName: string;
                    lastName: string;
                    role: import(".prisma/client").$Enums.Role;
                    position: import(".prisma/client").$Enums.PlayerPosition;
                }[];
            }[];
        }[];
        id: string;
        name: string;
        eventDoubles: {
            category: {
                id: string;
                level: number;
                type: import(".prisma/client").$Enums.CatType;
            };
            double: {
                players: {
                    id: string;
                    email: string;
                    firstName: string;
                    lastName: string;
                    role: import(".prisma/client").$Enums.Role;
                    position: import(".prisma/client").$Enums.PlayerPosition;
                }[];
            };
        }[];
        isActive: boolean;
        categories: {
            id: string;
            type: import(".prisma/client").$Enums.CatType;
            level: number;
            eventDoubles: {
                double: {
                    id: string;
                    players: {
                        id: string;
                        email: string;
                        firstName: string;
                        lastName: string;
                        role: import(".prisma/client").$Enums.Role;
                        position: import(".prisma/client").$Enums.PlayerPosition;
                    }[];
                };
            }[];
        }[];
        places: {
            id: string;
            name: string;
            address: string;
        }[];
    }[]>;
    registerDoublesInEvent(registerDoublesInEventDto: RegisterDoublesInEventDto): Promise<{
        event: {
            id: string;
            name: string;
            isActive: boolean;
            startDate: Date;
            finishDate: Date;
        };
        double: {
            players: {
                id: string;
                email: string;
                firstName: string;
                lastName: string;
                role: import(".prisma/client").$Enums.Role;
                position: import(".prisma/client").$Enums.PlayerPosition;
            }[];
        };
    }>;
    getEventById(getEventByIdDto: GetEventByIdDto): Promise<{
        matches: {
            isFinished: boolean;
            categoryId: string;
            winnerDoublesId: string;
            eventId: string;
            type: import(".prisma/client").$Enums.MatchType;
            players: {
                id: string;
                email: string;
                firstName: string;
                lastName: string;
                role: import(".prisma/client").$Enums.Role;
                position: import(".prisma/client").$Enums.PlayerPosition;
            }[];
            winner: {
                id: string;
                categoryId: string;
            };
            sets: {
                id: string;
                type: import(".prisma/client").$Enums.SetType;
                setWinnerId: string;
                result: string;
                isFinished: boolean;
            }[];
            doubles: {
                id: string;
                categoryId: string;
            }[];
        }[];
        id: string;
        eventDoubles: {
            category: {
                id: string;
                level: number;
                type: import(".prisma/client").$Enums.CatType;
            };
            double: {
                id: string;
                players: {
                    id: string;
                    email: string;
                    firstName: string;
                    lastName: string;
                    role: import(".prisma/client").$Enums.Role;
                    position: import(".prisma/client").$Enums.PlayerPosition;
                }[];
                category: {
                    id: string;
                    level: number;
                    type: import(".prisma/client").$Enums.CatType;
                };
            };
        }[];
        isActive: boolean;
        categories: {
            id: string;
            type: import(".prisma/client").$Enums.CatType;
            level: number;
            eventDoubles: {
                double: {
                    id: string;
                    categoryId: string;
                    players: {
                        id: string;
                        email: string;
                        firstName: string;
                        lastName: string;
                        role: import(".prisma/client").$Enums.Role;
                        position: import(".prisma/client").$Enums.PlayerPosition;
                    }[];
                };
                doubleId: string;
            }[];
        }[];
    }>;
    activateEvent(getEventByIdDto: GetEventByIdDto): Promise<{
        double: {
            id: string;
            categoryId: string;
            players: {
                id: string;
                email: string;
                firstName: string;
                lastName: string;
                role: import(".prisma/client").$Enums.Role;
                position: import(".prisma/client").$Enums.PlayerPosition;
            }[];
        };
        doubleId: string;
    }[]>;
    findOne(id: number): string;
    update(id: number, updateEventDto: UpdateEventDto): string;
    remove(id: number): string;
}
