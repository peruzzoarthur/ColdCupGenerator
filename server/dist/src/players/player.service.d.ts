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
        position: import(".prisma/client").$Enums.PlayerPosition;
    }>;
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
    getPlayersByCategory(categoryId: string): Promise<{
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
    deletePlayer(playerId: string): Promise<{
        id: string;
        firstName: string;
        lastName: string;
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
    }>;
}
