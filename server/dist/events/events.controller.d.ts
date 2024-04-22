import { EventsService } from "./events.service";
import { CreateEventDto } from "./dto/create-event.dto";
import { UpdateEventDto } from "./dto/update-event.dto";
import { RegisterDoublesInEventDto } from "./dto/register-doubles-event.dto";
import { GetEventByIdDto } from "./dto/get-event-by-id.dto";
import { ActivateEventDto } from "./dto/activate-event.dto";
export declare class EventsController {
    private readonly eventsService;
    constructor(eventsService: EventsService);
    create(createEventDto: CreateEventDto): Promise<{
        id: string;
        name: string;
        startDate: Date;
        finishDate: Date;
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
    getEventById(getEventByIdDto: GetEventByIdDto): Promise<{
        id: string;
        isActive: boolean;
        startDate: Date;
        finishDate: Date;
        matchDurationInMinutes: number;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
        categories: {
            id: string;
            eventDoubles: {
                doubleId: string;
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
                    categoryId: string;
                };
            }[];
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        }[];
        matches: {
            players: {
                id: string;
                email: string;
                firstName: string;
                lastName: string;
                role: import(".prisma/client").$Enums.Role;
                position: import(".prisma/client").$Enums.PlayerPosition;
            }[];
            sets: {
                id: string;
                type: import(".prisma/client").$Enums.SetType;
                setWinnerId: string;
                result: string;
                isFinished: boolean;
            }[];
            type: import(".prisma/client").$Enums.MatchType;
            doubles: {
                id: string;
                categoryId: string;
            }[];
            eventId: string;
            categoryId: string;
            isFinished: boolean;
            winnerDoublesId: string;
            winner: {
                id: string;
                categoryId: string;
            };
        }[];
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
                category: {
                    id: string;
                    level: number;
                    type: import(".prisma/client").$Enums.CatType;
                };
            };
            category: {
                id: string;
                level: number;
                type: import(".prisma/client").$Enums.CatType;
            };
        }[];
        matchDates: {
            event: {
                id: string;
                name: string;
                isActive: boolean;
                startDate: Date;
                finishDate: Date;
                matchDurationInMinutes: number;
                timeOfFirstMatch: number;
                timeOfLastMatch: number;
            };
            id: string;
            eventId: string;
            match: {
                id: string;
                number: number;
                isFinished: boolean;
                categoryId: string;
                winnerDoublesId: string;
                eventId: string;
                type: import(".prisma/client").$Enums.MatchType;
                matchDateId: string;
            };
            start: Date;
            finish: Date;
        }[];
    }>;
    activateEvent(activateEventDto: ActivateEventDto): Promise<void>;
    registerDoublesInEvent(registerDoublesInEventDto: RegisterDoublesInEventDto): Promise<{
        event: {
            id: string;
            name: string;
            isActive: boolean;
            startDate: Date;
            finishDate: Date;
            matchDurationInMinutes: number;
            timeOfFirstMatch: number;
            timeOfLastMatch: number;
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
    findAllEvents(): Promise<{
        id: string;
        name: string;
        isActive: boolean;
        startDate: Date;
        finishDate: Date;
        matchDurationInMinutes: number;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
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
        matches: {
            number: number;
            id: string;
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
            eventId: string;
            categoryId: string;
            category: {
                level: number;
                type: import(".prisma/client").$Enums.CatType;
            };
            isFinished: boolean;
            winner: {
                id: string;
                categoryId: string;
            };
        }[];
        places: {
            id: string;
            name: string;
            address: string;
        }[];
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
                matchesWins: {
                    id: string;
                    number: number;
                    isFinished: boolean;
                    categoryId: string;
                    winnerDoublesId: string;
                    eventId: string;
                    type: import(".prisma/client").$Enums.MatchType;
                    matchDateId: string;
                }[];
            };
            category: {
                id: string;
                level: number;
                type: import(".prisma/client").$Enums.CatType;
            };
        }[];
    }[]>;
    findOne(id: string): Promise<{
        id: string;
        name: string;
        isActive: boolean;
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
        matches: {
            number: number;
            id: string;
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
                categoryId: string;
            }[];
            eventId: string;
            categoryId: string;
            category: {
                level: number;
                type: import(".prisma/client").$Enums.CatType;
            };
            isFinished: boolean;
            winner: {
                id: string;
                categoryId: string;
            };
            matchDate: {
                id: string;
                start: Date;
                finish: Date;
            };
        }[];
        places: {
            id: string;
            name: string;
            address: string;
        }[];
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
                games: {
                    id: string;
                    setId: string;
                    winnerId: string;
                }[];
                categoryId: string;
                matchesWins: {
                    id: string;
                    number: number;
                    isFinished: boolean;
                    categoryId: string;
                    winnerDoublesId: string;
                    eventId: string;
                    type: import(".prisma/client").$Enums.MatchType;
                    matchDateId: string;
                }[];
                gamesWins: {
                    id: string;
                    setId: string;
                    winnerId: string;
                }[];
            };
            category: {
                id: string;
                level: number;
                type: import(".prisma/client").$Enums.CatType;
            };
        }[];
        matchDates: {
            id: string;
            eventId: string;
            matchId: string;
            start: Date;
            finish: Date;
        }[];
    }>;
    update(id: string, updateEventDto: UpdateEventDto): string;
    remove(id: string): string;
}
