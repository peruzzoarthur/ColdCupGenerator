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
    createScheduleTest(createScheduleDto: CreateScheduleDto): Promise<Day[]>;
    findAllEvents(): Promise<{
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
            isFinished: boolean;
            categoryId: string;
            date: Date;
            category: {
                level: number;
                type: import(".prisma/client").$Enums.CatType;
            };
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
                    date: Date;
                    type: import(".prisma/client").$Enums.MatchType;
                    matchDateId: string;
                }[];
            };
        }[];
    }[]>;
    registerDoublesInEvent(registerDoublesInEventDto: RegisterDoublesInEventDto): Promise<{
        event: {
            id: string;
            name: string;
            isActive: boolean;
            startDate: Date;
            finishDate: Date;
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
                    categoryId: string;
                };
                doubleId: string;
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
            isFinished: boolean;
            categoryId: string;
            winnerDoublesId: string;
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
        }[];
        matchDates: {
            id: string;
            event: {
                id: string;
                name: string;
                isActive: boolean;
                startDate: Date;
                finishDate: Date;
            };
            eventId: string;
            start: Date;
            finish: Date;
            match: {
                id: string;
                number: number;
                isFinished: boolean;
                categoryId: string;
                winnerDoublesId: string;
                eventId: string;
                date: Date;
                type: import(".prisma/client").$Enums.MatchType;
                matchDateId: string;
            };
        }[];
    }>;
    activateEvent(activateEventDto: ActivateEventDto): Promise<{
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
        doubleId: string;
    }[]>;
    findOne(id: number): string;
    update(id: number, updateEventDto: UpdateEventDto): string;
    remove(id: number): string;
    getEventByIdParam(id: string): Promise<{
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
            }[];
            eventId: string;
            isFinished: boolean;
            categoryId: string;
            date: Date;
            category: {
                level: number;
                type: import(".prisma/client").$Enums.CatType;
            };
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
                    date: Date;
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
    }>;
}
export {};
