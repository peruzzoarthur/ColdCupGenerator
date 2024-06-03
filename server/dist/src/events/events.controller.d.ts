import { EventsService } from "./events.service";
import { CreateEventDto } from "./dto/create-event.dto";
import { UpdateEventDto } from "./dto/update-event.dto";
import { RegisterDoublesInEventDto } from "./dto/register-doubles-event.dto";
import { GetEventByIdDto } from "./dto/get-event-by-id.dto";
import { ActivateEventDto } from "./dto/activate-event.dto";
import { DeleteDoublesInEventDto } from "./dto/delete-doubles.dto";
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
    update(updateEventDto: UpdateEventDto): Promise<{
        id: string;
        name: string;
        isActive: boolean;
        startDate: Date;
        finishDate: Date;
        matchDurationInMinutes: number;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
        eventType: import(".prisma/client").$Enums.EventType;
    }>;
    getEventById(getEventByIdDto: GetEventByIdDto): Promise<{
        id: string;
        matches: {
            number: number;
            categoryId: string;
            type: import(".prisma/client").$Enums.MatchType;
            id: string;
            players: {
                id: string;
                firstName: string;
                lastName: string;
                categoryId: string;
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
                    firstName: string;
                    lastName: string;
                    categoryId: string;
                    position: import(".prisma/client").$Enums.PlayerPosition;
                }[];
            };
            atRest: {
                id: string;
                eventId: string;
                matchId: string;
                start: Date;
                finish: Date;
                courtId: string;
            };
            atRestId: string;
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
                        firstName: string;
                        lastName: string;
                        categoryId: string;
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
                eventType: import(".prisma/client").$Enums.EventType;
            };
            match: {
                id: string;
                number: number;
                isFinished: boolean;
                categoryId: string;
                winnerDoublesId: string;
                eventId: string;
                type: import(".prisma/client").$Enums.MatchType;
                courtId: string;
            };
            id: string;
            eventId: string;
            start: Date;
            finish: Date;
        }[];
        courts: {
            id: string;
        }[];
    }>;
    activateEventAutoPop(activateEventDto: ActivateEventDto): Promise<void>;
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
            eventType: import(".prisma/client").$Enums.EventType;
        };
        double: {
            players: {
                id: string;
                firstName: string;
                lastName: string;
                categoryId: string;
                position: import(".prisma/client").$Enums.PlayerPosition;
            }[];
        };
    }>;
    deleteDoublesInEvent(deleteDoublesInEventDto: DeleteDoublesInEventDto): Promise<{
        eventId: string;
        doubleId: string;
        categoryId: string;
        atRestId: string;
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
                    firstName: string;
                    lastName: string;
                    categoryId: string;
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
                    firstName: string;
                    lastName: string;
                    categoryId: string;
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
                    courtId: string;
                }[];
            };
            atRest: {
                id: string;
                eventId: string;
                matchId: string;
                start: Date;
                finish: Date;
                courtId: string;
            };
            atRestId: string;
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
                        firstName: string;
                        lastName: string;
                        categoryId: string;
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
        courts: {
            id: string;
            name: string;
            isAvailable: boolean;
            placeId: string;
        }[];
    }[]>;
    findOne(id: string): Promise<{
        id: string;
        matches: {
            number: number;
            category: {
                level: number;
                type: import(".prisma/client").$Enums.CatType;
                matches: {
                    matchDate: {
                        id: string;
                    };
                    id: string;
                    doubles: {
                        id: string;
                        categoryId: string;
                    }[];
                }[];
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
                    firstName: string;
                    lastName: string;
                    categoryId: string;
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
                    firstName: string;
                    lastName: string;
                    categoryId: string;
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
                    courtId: string;
                }[];
                gamesWins: {
                    id: string;
                    setId: string;
                    winnerId: string;
                }[];
            };
            atRest: {
                id: string;
                eventId: string;
                matchId: string;
                start: Date;
                finish: Date;
                courtId: string;
            };
        }[];
        categories: {
            level: number;
            type: import(".prisma/client").$Enums.CatType;
            id: string;
            matches: {
                number: number;
                matchDate: {
                    id: string;
                };
                id: string;
                doubles: {
                    id: string;
                    players: {
                        id: string;
                        firstName: string;
                        lastName: string;
                        categoryId: string;
                        position: import(".prisma/client").$Enums.PlayerPosition;
                    }[];
                }[];
            }[];
            eventDoubles: {
                double: {
                    id: string;
                    players: {
                        id: string;
                        firstName: string;
                        lastName: string;
                        categoryId: string;
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
            courtId: string;
        }[];
        courts: {
            id: string;
            name: string;
            isAvailable: boolean;
            placeId: string;
        }[];
    }>;
    getEventInfo(id: string): Promise<{
        categories: {
            totalMatches: number;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
            id: string;
            eventDoubles: {
                eventId: string;
                doubleId: string;
                categoryId: string;
                atRestId: string;
            }[];
        }[];
        totalMatches: number;
        availableMatchDates: number;
        suitable: boolean;
        startDate: Date;
        finishDate: Date;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
        matchDurationInMinutes: number;
        isActive: boolean;
        eventType: import(".prisma/client").$Enums.EventType;
        courts: {
            id: string;
            name: string;
            isAvailable: boolean;
            placeId: string;
        }[];
    }>;
    remove(id: string): Promise<string>;
}
