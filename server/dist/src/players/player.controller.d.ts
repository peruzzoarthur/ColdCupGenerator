import { PlayerService } from "./player.service";
import { CreatePlayerDto } from "./dto/create-player.dto";
import { UpdatePlayerDto } from "./dto/update-player.dto";
export declare class PlayerController {
    private readonly playerService;
    constructor(playerService: PlayerService);
    getPlayersByCategory({ id }: {
        id: string;
    }): Promise<{
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
        id: string;
        categories: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        }[];
    }[]>;
    getAllPlayers(): Promise<{
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
        id: string;
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
    deletePlayer({ id }: {
        id: string;
    }): Promise<{
        id: string;
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
    }>;
}
