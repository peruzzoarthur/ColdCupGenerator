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
        categories: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        }[];
        name: string;
        startDate: Date;
        finishDate: Date;
        places: {
            id: string;
            name: string;
            address: string;
        }[];
    }>;
    getEventById(getEventByIdDto: GetEventByIdDto): Promise<{
        id: string;
        matches: {
            categoryId: string;
            type: import(".prisma/client").$Enums.MatchType;
            players: {
                id: string;
                email: string;
                firstName: string;
                lastName: string;
                role: import(".prisma/client").$Enums.Role;
                position: import(".prisma/client").$Enums.PlayerPosition;
            }[];
            doubles: {
                id: string;
                categoryId: string;
            }[];
            sets: {
                id: string;
                type: import(".prisma/client").$Enums.SetType;
                setWinnerId: string;
                result: string;
                isFinished: boolean;
            }[];
            eventId: string;
            winnerDoublesId: string;
            winner: {
                id: string;
                categoryId: string;
            };
            isFinished: boolean;
        }[];
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
            eventDoubles: {
                double: {
                    categoryId: string;
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
                doubleId: string;
            }[];
        }[];
        startDate: Date;
        finishDate: Date;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
        matchDurationInMinutes: number;
        isActive: boolean;
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
            id: string;
            eventId: string;
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
        matches: {
            number: number;
            category: {
                level: number;
                type: import(".prisma/client").$Enums.CatType;
            };
            categoryId: string;
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
            }[];
            sets: {
                id: string;
                type: import(".prisma/client").$Enums.SetType;
                setWinnerId: string;
                result: string;
                isFinished: boolean;
            }[];
            eventId: string;
            winner: {
                id: string;
                categoryId: string;
            };
            isFinished: boolean;
        }[];
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
        startDate: Date;
        finishDate: Date;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
        matchDurationInMinutes: number;
        isActive: boolean;
        places: {
            id: string;
            name: string;
            address: string;
        }[];
    }[]>;
    findOne(id: string): Promise<{
        id: string;
        matches: {
            number: number;
            category: {
                level: number;
                type: import(".prisma/client").$Enums.CatType;
            };
            matchDate: {
                id: string;
                start: Date;
                finish: Date;
            };
            categoryId: string;
            id: string;
            doubles: {
                categoryId: string;
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
            winner: {
                id: string;
                categoryId: string;
            };
            isFinished: boolean;
        }[];
        eventDoubles: {
            category: {
                id: string;
                level: number;
                type: import(".prisma/client").$Enums.CatType;
            };
            double: {
                categoryId: string;
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
        isActive: boolean;
        places: {
            id: string;
            name: string;
            address: string;
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
