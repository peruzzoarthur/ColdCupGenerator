import { PlayerService } from "./player.service";
import { CreatePlayerDto } from "./dto/create-player.dto";
import { UpdatePlayerDto } from "./dto/update-player.dto";
export declare class PlayerController {
    private readonly playerService;
    constructor(playerService: PlayerService);
    getPlayersByCategory({ id }: {
        id: string;
    }): Promise<{
        id: string;
        categories: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        }[];
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
    }[]>;
    getAllPlayers(): Promise<{
        id: string;
        categories: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        }[];
        firstName: string;
        lastName: string;
        position: import(".prisma/client").$Enums.PlayerPosition;
    }[]>;
    createPost(createPlayerDto: CreatePlayerDto): Promise<any>;
    publishPlayer({ id }: {
        id: string;
    }, updatePlayerDto: UpdatePlayerDto): Promise<any>;
    deletePlayer({ id }: {
        id: string;
    }): Promise<any>;
}
