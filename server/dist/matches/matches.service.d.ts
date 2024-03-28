import { CreateMatchDto } from "./dto/create-match.dto";
import { UpdateMatchDto } from "./dto/update-match.dto";
import { PrismaService } from "src/prisma.service";
export declare class MatchesService {
    private readonly prismaService;
    constructor(prismaService: PrismaService);
    create(createMatchDto: CreateMatchDto): Promise<{
        category: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        };
        categoryId: string;
        id: string;
        doubles: {
            id: string;
            categoryId: string;
        }[];
        isFinished: boolean;
    }>;
    findAll(): string;
    findOne(id: number): string;
    update(id: number, updateMatchDto: UpdateMatchDto): string;
    remove(id: number): string;
}
