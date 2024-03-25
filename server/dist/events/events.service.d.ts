import { CreateEventDto } from "./dto/create-event.dto";
import { UpdateEventDto } from "./dto/update-event.dto";
import { PrismaService } from "src/prisma.service";
import { RegisterDoublesInEventDto } from "./dto/register-doubles-event.dto";
import { CategoriesService } from "src/categories/categories.service";
import { GetEventByIdDto } from "./dto/get-event-by-id.dto";
export declare class EventsService {
    private readonly prismaService;
    private readonly categoriesService;
    constructor(prismaService: PrismaService, categoriesService: CategoriesService);
    createEvent(createEventDto: CreateEventDto): Promise<{
        id: string;
        categories: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        }[];
        name: string;
        places: {
            id: string;
            name: string;
            address: string;
        }[];
    }>;
    findAllEvents(): Promise<{
        id: string;
        eventDoubles: {
            eventId: string;
            doubleId: string;
            categoryId: string;
        }[];
        categories: {
            level: number;
            type: import(".prisma/client").$Enums.CatType;
            id: string;
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
        name: string;
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
        id: string;
        eventDoubles: {
            category: {
                id: string;
                level: number;
                type: import(".prisma/client").$Enums.CatType;
            };
            double: {
                category: {
                    id: string;
                    level: number;
                    type: import(".prisma/client").$Enums.CatType;
                };
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
        categories: {
            level: number;
            type: import(".prisma/client").$Enums.CatType;
            id: string;
        }[];
    }>;
    findOne(id: number): string;
    update(id: number, updateEventDto: UpdateEventDto): string;
    remove(id: number): string;
}
