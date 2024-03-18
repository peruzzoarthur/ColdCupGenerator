import { DoublesService } from "./doubles.service";
import { CreateDoubleDto } from "./dto/create-double.dto";
import { UpdateDoubleDto } from "./dto/update-double.dto";
export declare class DoublesController {
    private readonly doublesService;
    constructor(doublesService: DoublesService);
    create(createDoubleDto: CreateDoubleDto): Promise<{
        id: string;
        categoryId: string;
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
            email: string;
            firstName: string;
            lastName: string;
            role: import(".prisma/client").$Enums.Role;
            position: import(".prisma/client").$Enums.PlayerPosition;
        }[];
    }[]>;
    findOne(id: string): string;
    update(id: string, updateDoubleDto: UpdateDoubleDto): string;
    remove(id: string): string;
}
