import { CreateDoubleDto } from "./dto/create-double.dto";
import { UpdateDoubleDto } from "./dto/update-double.dto";
import { PrismaService } from "src/prisma.service";
import { GetDoublesByIdDto } from "./dto/get-doubles-by-id.dto";
export declare class DoublesService {
    private readonly prismaService;
    constructor(prismaService: PrismaService);
    createDouble(createDoubleDto: CreateDoubleDto): Promise<{
        id: string;
        players: {
            id: string;
            firstName: string;
            lastName: string;
            categoryId: string;
            position: import(".prisma/client").$Enums.PlayerPosition;
        }[];
    }>;
    findAllDoubles(): Promise<{
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
    }[]>;
    getDoublesById(getDoublesByIdDto: GetDoublesByIdDto): Promise<{
        id: string;
        players: {
            id: string;
            firstName: string;
            lastName: string;
            categoryId: string;
            position: import(".prisma/client").$Enums.PlayerPosition;
        }[];
    }>;
    updateCategory(doublesId: string, updateDoubleDto: UpdateDoubleDto): Promise<{
        id: string;
        categoryId: string;
    }>;
    deleteDoubles(doublesId: string): Promise<{
        id: string;
        categoryId: string;
    }>;
    softDeleteDoubles(playerId: string, doublesId: string): Promise<void>;
}
