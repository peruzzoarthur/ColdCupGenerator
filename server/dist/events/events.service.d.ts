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
        name: string;
        isActive: boolean;
    }>;
    findAllEvents(): Promise<{
        id: string;
        name: string;
        categories: {
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
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        }[];
        places: {
            id: string;
            name: string;
            address: string;
        }[];
        eventDoubles: {
            eventId: string;
            doubleId: string;
            categoryId: string;
        }[];
    }[]>;
    registerDoublesInEvent(registerDoublesInEventDto: RegisterDoublesInEventDto): Promise<{
        eventId: string;
        doubleId: string;
        categoryId: string;
    }>;
    getEventById(getEventByIdDto: GetEventByIdDto): Promise<{
        id: string;
        categories: {
            eventDoubles: {
                eventId: string;
                doubleId: string;
                categoryId: string;
            }[];
            level: number;
            type: import(".prisma/client").$Enums.CatType;
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
        eventDoubles: {
            eventId: string;
            doubleId: string;
            categoryId: string;
        }[];
    }>;
    findOne(id: number): string;
    update(id: number, updateEventDto: UpdateEventDto): string;
    remove(id: number): string;
}
