import { CreateEventDto } from "./dto/create-event.dto";
import { UpdateEventDto } from "./dto/update-event.dto";
import { PrismaService } from "src/prisma.service";
import { RegisterDoublesInEventDto } from "./dto/register-doubles-event.dto";
import { GetEventByIdDto } from "./dto/get-event-by-id.dto";
import { MatchesService } from "src/matches/matches.service";
import { CreateScheduleDto } from "./dto/create-schedule.dto";
import { ActivateEventDto } from "./dto/activate-event.dto";
import { DeleteDoublesInEventDto } from "./dto/delete-doubles.dto";
type Day = {
    day: number;
    timeOfFirstMatch: number;
    timeOfLastMatch: number;
    date: string;
    matchDuration: number;
};
export declare class EventsService {
    private readonly prismaService;
    private readonly matchesService;
    constructor(prismaService: PrismaService, matchesService: MatchesService);
    createEvent(createEventDto: CreateEventDto): Promise<{
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
    updateEvent(updateEventDto: UpdateEventDto): Promise<{
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
            isFinished: boolean;
            eventId: string;
            winner: {
                id: string;
                categoryId: string;
            };
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
        name: string;
        startDate: Date;
        finishDate: Date;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
        matchDurationInMinutes: number;
        isActive: boolean;
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
            isFinished: boolean;
            winnerDoublesId: string;
            eventId: string;
            winner: {
                id: string;
                categoryId: string;
            };
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
        startDate: Date;
        finishDate: Date;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
        matchDurationInMinutes: number;
        isActive: boolean;
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
        courts: {
            id: string;
        }[];
    }>;
    createSchedule(createScheduleDto: CreateScheduleDto): Promise<Day[]>;
    autoPopulate(activateEventDto: ActivateEventDto): Promise<{
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
            isFinished: boolean;
            winnerDoublesId: string;
            eventId: string;
            winner: {
                id: string;
                categoryId: string;
            };
        }[];
    }>;
    activateEvent(activateEventDto: ActivateEventDto): Promise<void>;
    getEventByIdParam(id: string): Promise<{
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
            isFinished: boolean;
            eventId: string;
            winner: {
                id: string;
                categoryId: string;
            };
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
        name: string;
        matchDates: {
            id: string;
            eventId: string;
            matchId: string;
            start: Date;
            finish: Date;
            courtId: string;
        }[];
        startDate: Date;
        finishDate: Date;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
        isActive: boolean;
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
    }>;
    getEventInfoForGenerateMatches(id: string): Promise<{
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
    remove(id: number): Promise<string>;
    findOne(id: number): Promise<string>;
    update(id: number, updateEventDto: UpdateEventDto): Promise<string>;
}
export {};
