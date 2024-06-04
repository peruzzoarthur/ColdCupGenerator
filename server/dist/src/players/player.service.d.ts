import { PrismaService } from "src/prisma.service";
import { CreatePlayerDto } from "./dto/create-player.dto";
import { CategoriesService } from "src/categories/categories.service";
export declare class PlayerService {
    private readonly prismaService;
    private readonly categoriesService;
    constructor(prismaService: PrismaService, categoriesService: CategoriesService);
    createPlayer(createPlayerDto: CreatePlayerDto): Promise<{
        id: string;
        firstName: string;
        lastName: string;
        categoryId: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
    }>;
    getAllPlayers(): Promise<{
        id: string;
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
        category: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        };
    }[]>;
    getPlayersByCategory(categoryId: string): Promise<{
        id: string;
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
        category: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        };
    }[]>;
    deletePlayer(playerId: string): Promise<{
        id: string;
        firstName: string;
        lastName: string;
        categoryId: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
    }>;
    getPlayerInvites(userId: string): Promise<{
        id: string;
        invites: {
            id: string;
            inviteType: import(".prisma/client").$Enums.InviteType;
            eventId: string;
            matchId: string;
            inviterId: string;
            invitedId: string;
            createdAt: Date;
        }[];
    }>;
    getPlayerById(playerId: string): Promise<{
        id: string;
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
        category: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        };
        doubles: {
            id: string;
            category: {
                id: string;
                level: number;
                type: import(".prisma/client").$Enums.CatType;
            };
            matches: {
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
                category: {
                    id: string;
                    level: number;
                    type: import(".prisma/client").$Enums.CatType;
                };
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
                    games: {
                        winnerId: string;
                    }[];
                    setWinnerId: string;
                }[];
                isFinished: boolean;
                winnerDoublesId: string;
                matchDate: {
                    id: string;
                    eventId: string;
                    matchId: string;
                    start: Date;
                    finish: Date;
                    courtId: string;
                };
                court: {
                    name: string;
                    place: {
                        id: string;
                        name: string;
                        address: string;
                    };
                };
            }[];
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
            eventDouble: {
                eventId: string;
                doubleId: string;
                categoryId: string;
                atRestId: string;
            }[];
        }[];
    }>;
}
