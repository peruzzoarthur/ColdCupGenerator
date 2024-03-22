import { PrismaService } from "src/prisma.service";
import { CreatePlayerDto } from "./dto/create-player.dto";
import { CategoriesService } from "src/categories/categories.service";
export declare class PlayerService {
    private readonly prismaService;
    private readonly categoriesService;
    constructor(prismaService: PrismaService, categoriesService: CategoriesService);
    createPlayer(createPlayerDto: CreatePlayerDto): Promise<any>;
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
    getPlayersByCategory(categoryId: string): Promise<{
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
}
