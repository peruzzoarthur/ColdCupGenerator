import { EventsService } from "./events.service";
import { CreateEventDto } from "./dto/create-event.dto";
import { UpdateEventDto } from "./dto/update-event.dto";
import { RegisterDoublesInEventDto } from "./dto/register-doubles-event.dto";
export declare class EventsController {
    private readonly eventsService;
    constructor(eventsService: EventsService);
    create(createEventDto: CreateEventDto): Promise<{
        id: string;
        name: string;
        isActive: boolean;
    }>;
    registerDoublesInEvent(registerDoublesInEventDto: RegisterDoublesInEventDto): Promise<{
        eventId: string;
        doubleId: string;
        categoryId: string;
    }>;
    findAllEvents(): Promise<{
        places: {
            id: string;
            name: string;
            address: string;
        }[];
        id: string;
        name: string;
        categories: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
            eventDoubles: {
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
        }[];
    }[]>;
    findOne(id: string): string;
    update(id: string, updateEventDto: UpdateEventDto): string;
    remove(id: string): string;
}
