import { DoublesService } from "./doubles.service";
import { CreateDoubleDto } from "./dto/create-double.dto";
import { UpdateDoubleDto } from "./dto/update-double.dto";
import { GetDoublesByIdDto } from "./dto/get-doubles-by-id.dto";
export declare class DoublesController {
    private readonly doublesService;
    constructor(doublesService: DoublesService);
    create(createDoubleDto: CreateDoubleDto): Promise<{
        id: string;
        players: {
            id: string;
            firstName: string;
            lastName: string;
            position: import(".prisma/client").$Enums.PlayerPosition;
        }[];
    }>;
    findAll(): Promise<{
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
            position: import(".prisma/client").$Enums.PlayerPosition;
        }[];
    }[]>;
    getDoublesById(getDoublesByIdDto: GetDoublesByIdDto): Promise<{
        id: string;
        players: {
            id: string;
            firstName: string;
            lastName: string;
            position: import(".prisma/client").$Enums.PlayerPosition;
        }[];
    }>;
    update(id: string, updateDoubleDto: UpdateDoubleDto): Promise<{
        id: string;
        categoryId: string;
    }>;
    remove(id: string): Promise<{
        id: string;
        categoryId: string;
    }>;
}
