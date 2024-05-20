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
            categoryId: string;
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
            id: string;
            level: number;
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
        }[];
        name: string;
        isActive: boolean;
        startDate: Date;
        finishDate: Date;
        matchDurationInMinutes: number;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
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
            id: string;
            type: import(".prisma/client").$Enums.MatchType;
            players: {
                id: string;
                firstName: string;
                lastName: string;
                position: import(".prisma/client").$Enums.PlayerPosition;
            }[];
            doubles: {
                id: string;
                categoryId: string;
            }[];
            categoryId: string;
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
            winnerDoublesId: string;
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
            id: string;
            level: number;
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
                    categoryId: string;
                };
                doubleId: string;
            }[];
        }[];
        isActive: boolean;
        startDate: Date;
        finishDate: Date;
        matchDurationInMinutes: number;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
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
    createSchedule(createScheduleDto: CreateScheduleDto): Promise<Day[]>;
    autoPopulate(activateEventDto: ActivateEventDto): Promise<{
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
            doubles: {
                id: string;
                categoryId: string;
            }[];
            categoryId: string;
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
            winnerDoublesId: string;
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
            categoryId: string;
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
                id: string;
                players: {
                    id: string;
                    firstName: string;
                    lastName: string;
                    position: import(".prisma/client").$Enums.PlayerPosition;
                }[];
                categoryId: string;
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
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
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
                        position: import(".prisma/client").$Enums.PlayerPosition;
                    }[];
                };
            }[];
        }[];
        name: string;
        isActive: boolean;
        startDate: Date;
        finishDate: Date;
        timeOfFirstMatch: number;
        timeOfLastMatch: number;
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
    getEventInfoForGenerateMatches(id: string): Promise<{
        categories: {
            totalMatches: number;
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
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
    remove(id: number): Promise<string>;
    findOne(id: number): Promise<string>;
    update(id: number, updateEventDto: UpdateEventDto): Promise<string>;
}
export {};
