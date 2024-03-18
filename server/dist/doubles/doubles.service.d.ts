import { CreateDoubleDto } from "./dto/create-double.dto";
import { UpdateDoubleDto } from "./dto/update-double.dto";
import { PrismaService } from "src/prisma.service";
export declare class DoublesService {
    private readonly prismaService;
    constructor(prismaService: PrismaService);
    createDouble(createDoubleDto: CreateDoubleDto): Promise<{
        id: string;
        categoryId: string;
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
            email: string;
            firstName: string;
            lastName: string;
            role: import(".prisma/client").$Enums.Role;
            position: import(".prisma/client").$Enums.PlayerPosition;
        }[];
    }[]>;
    findOne(id: number): string;
    update(id: number, updateDoubleDto: UpdateDoubleDto): string;
    remove(id: number): string;
}
