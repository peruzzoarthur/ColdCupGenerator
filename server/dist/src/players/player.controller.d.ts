import { PlayerService } from "./player.service";
import { CreatePlayerDto } from "./dto/create-player.dto";
import { UpdatePlayerDto } from "./dto/update-player.dto";
import { JwtPayload } from "src/auth/types/auth.types";
export declare class PlayerController {
    private readonly playerService;
    constructor(playerService: PlayerService);
    getPlayerInvites(req: JwtPayload): Promise<{
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
    getPlayerById({ id }: {
        id: string;
    }): Promise<{
        category: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        };
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
        id: string;
        doubles: {
            eventDouble: {
                eventId: string;
                doubleId: string;
                categoryId: string;
                atRestId: string;
            }[];
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
                court: {
                    place: {
                        id: string;
                        name: string;
                        address: string;
                    };
                    name: string;
                };
                category: {
                    id: string;
                    level: number;
                    type: import(".prisma/client").$Enums.CatType;
                };
                matchDate: {
                    id: string;
                    eventId: string;
                    matchId: string;
                    start: Date;
                    finish: Date;
                    courtId: string;
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
                sets: {
                    games: {
                        winnerId: string;
                    }[];
                    setWinnerId: string;
                }[];
                isFinished: boolean;
                winnerDoublesId: string;
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
        }[];
    }>;
    getPlayersByCategory({ id }: {
        id: string;
    }): Promise<{
        category: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        };
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
        id: string;
    }[]>;
    getAllPlayers(): Promise<{
        category: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        };
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
        id: string;
    }[]>;
    createPost(createPlayerDto: CreatePlayerDto): Promise<{
        id: string;
        firstName: string;
        lastName: string;
        categoryId: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
    }>;
    publishPlayer({ id }: {
        id: string;
    }, updatePlayerDto: UpdatePlayerDto): Promise<any>;
    deletePlayer({ id }: {
        id: string;
    }): Promise<{
        id: string;
        firstName: string;
        lastName: string;
        categoryId: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
    }>;
}
