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
        isActive: boolean;
        startDate: Date;
        finishDate: Date;
        matchDurationInMinutes: number;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
        categories: {
            id: string;
            type: import(".prisma/client").$Enums.CatType;
            eventDoubles: {
                doubleId: string;
                double: {
                    id: string;
                    players: {
                        id: string;
                        firstName: string;
                        lastName: string;
                        position: import(".prisma/client").$Enums.PlayerPosition;
                    }[];
                    categoryId: string;
                };
            }[];
            level: number;
        }[];
        matches: {
            number: number;
            id: string;
            type: import(".prisma/client").$Enums.MatchType;
            players: {
                id: string;
                firstName: string;
                lastName: string;
                position: import(".prisma/client").$Enums.PlayerPosition;
            }[];
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
            atRestId: string;
            double: {
                id: string;
                players: {
                    id: string;
                    firstName: string;
                    lastName: string;
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
            atRest: {
                id: string;
                eventId: string;
                matchId: string;
                start: Date;
                finish: Date;
                courtId: string;
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
                eventType: import(".prisma/client").$Enums.EventType;
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
                courtId: string;
            };
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
        name: string;
        isActive: boolean;
        startDate: Date;
        finishDate: Date;
        matchDurationInMinutes: number;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
        categories: {
            id: string;
            type: import(".prisma/client").$Enums.CatType;
            eventDoubles: {
                double: {
                    id: string;
                    players: {
                        id: string;
                        firstName: string;
                        lastName: string;
                        position: import(".prisma/client").$Enums.PlayerPosition;
                    }[];
                };
            }[];
            level: number;
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
                    firstName: string;
                    lastName: string;
                    position: import(".prisma/client").$Enums.PlayerPosition;
                }[];
            }[];
            eventId: string;
            categoryId: string;
            category: {
                type: import(".prisma/client").$Enums.CatType;
                level: number;
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
            atRestId: string;
            double: {
                players: {
                    id: string;
                    firstName: string;
                    lastName: string;
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
            category: {
                id: string;
                level: number;
                type: import(".prisma/client").$Enums.CatType;
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
        courts: {
            id: string;
            name: string;
            isAvailable: boolean;
            placeId: string;
        }[];
    }[]>;
    findOne(id: string): Promise<{
        id: string;
        name: string;
        isActive: boolean;
        startDate: Date;
        finishDate: Date;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
        categories: {
            id: string;
            type: import(".prisma/client").$Enums.CatType;
            matches: {
                number: number;
                id: string;
                doubles: {
                    id: string;
                    players: {
                        id: string;
                        firstName: string;
                        lastName: string;
                        position: import(".prisma/client").$Enums.PlayerPosition;
                    }[];
                }[];
                matchDate: {
                    id: string;
                };
            }[];
            eventDoubles: {
                double: {
                    id: string;
                    players: {
                        id: string;
                        firstName: string;
                        lastName: string;
                        position: import(".prisma/client").$Enums.PlayerPosition;
                    }[];
                };
            }[];
            level: number;
        }[];
        matches: {
            number: number;
            id: string;
            doubles: {
                id: string;
                players: {
                    id: string;
                    firstName: string;
                    lastName: string;
                    position: import(".prisma/client").$Enums.PlayerPosition;
                }[];
                categoryId: string;
            }[];
            eventId: string;
            categoryId: string;
            category: {
                type: import(".prisma/client").$Enums.CatType;
                matches: {
                    id: string;
                    doubles: {
                        id: string;
                        categoryId: string;
                    }[];
                    matchDate: {
                        id: string;
                    };
                }[];
                level: number;
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
                    firstName: string;
                    lastName: string;
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
                    courtId: string;
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
            atRest: {
                id: string;
                eventId: string;
                matchId: string;
                start: Date;
                finish: Date;
                courtId: string;
            };
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
            id: string;
            type: import(".prisma/client").$Enums.CatType;
            eventDoubles: {
                eventId: string;
                doubleId: string;
                categoryId: string;
                atRestId: string;
            }[];
            level: number;
        }[];
        totalMatches: number;
        availableMatchDates: number;
        suitable: boolean;
        isActive: boolean;
        startDate: Date;
        finishDate: Date;
        matchDurationInMinutes: number;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
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
