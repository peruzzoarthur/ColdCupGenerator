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
                id: string;
                number: number;
                isFinished: boolean;
                categoryId: string;
                winnerDoublesId: string;
                eventId: string;
                type: import(".prisma/client").$Enums.MatchType;
                courtId: string;
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
        }[];
    }>;
    getPlayersByCategory({ id }: {
        id: string;
    }): Promise<{
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
