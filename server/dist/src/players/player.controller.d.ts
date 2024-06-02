import { PlayerService } from "./player.service";
import { CreatePlayerDto } from "./dto/create-player.dto";
import { UpdatePlayerDto } from "./dto/update-player.dto";
import { JwtPayload } from "src/auth/types/auth.types";
export declare class PlayerController {
    private readonly playerService;
    constructor(playerService: PlayerService);
    getPlayerInvites(req: JwtPayload): Promise<{
        invites: {
            id: string;
            inviteType: import(".prisma/client").$Enums.InviteType;
            eventId: string;
            matchId: string;
            inviterId: string;
            invitedId: string;
            createdAt: Date;
        }[];
        id: string;
    }>;
    getPlayersByCategory({ id }: {
        id: string;
    }): Promise<{
        id: string;
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
        categories: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        }[];
    }[]>;
    getAllPlayers(): Promise<{
        id: string;
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
        categories: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        }[];
    }[]>;
    createPost(createPlayerDto: CreatePlayerDto): Promise<{
        id: string;
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
    }>;
    publishPlayer({ id }: {
        id: string;
    }, updatePlayerDto: UpdatePlayerDto): Promise<any>;
    getPlayerById({ id }: {
        id: string;
    }): Promise<{
        id: string;
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
    }>;
    deletePlayer({ id }: {
        id: string;
    }): Promise<{
        id: string;
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
    }>;
}
