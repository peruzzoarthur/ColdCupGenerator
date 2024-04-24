import { CreateEventDto } from "./dto/create-event.dto";
import { UpdateEventDto } from "./dto/update-event.dto";
import { PrismaService } from "src/prisma.service";
import { RegisterDoublesInEventDto } from "./dto/register-doubles-event.dto";
import { CategoriesService } from "src/categories/categories.service";
import { GetEventByIdDto } from "./dto/get-event-by-id.dto";
import { MatchesService } from "src/matches/matches.service";
import { CreateScheduleDto } from "./dto/create-schedule.dto";
import { ActivateEventDto } from "./dto/activate-event.dto";
type Day = {
    day: number;
    timeOfFirstMatch: number;
    timeOfLastMatch: number;
    date: string;
    matchDuration: number;
};
export declare class EventsService {
    private readonly prismaService;
    private readonly categoriesService;
    private readonly matchesService;
    constructor(prismaService: PrismaService, categoriesService: CategoriesService, matchesService: MatchesService);
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
    createSchedule(createScheduleDto: CreateScheduleDto): Promise<Day[]>;
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
                    courtId: string;
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
                matchDateId: string;
                courtId: string;
            };
            id: string;
            eventId: string;
            start: Date;
            finish: Date;
        }[];
    }>;
    activateEvent(activateEventDto: ActivateEventDto): Promise<void>;
    findOne(id: number): string;
    update(id: number, updateEventDto: UpdateEventDto): string;
    remove(id: number): string;
    getEventByIdParam(id: string): Promise<{
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
                    courtId: string;
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
    }>;
}
export {};
