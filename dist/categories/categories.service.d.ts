import { CreateCategoryDto } from "./dto/create-category.dto";
import { UpdateCategoryDto } from "./dto/update-category.dto";
import { PrismaService } from "../prisma.service";
import { CatType } from "./types/categories.types";
export declare class CategoriesService {
    private readonly prismaService;
    constructor(prismaService: PrismaService);
    create(createCategoryDto: CreateCategoryDto): Promise<{
        id: string;
        level: number;
        type: import(".prisma/client").$Enums.CatType;
    }>;
    findAll(): Promise<{
        id: string;
        level: number;
        type: import(".prisma/client").$Enums.CatType;
    }[]>;
    findOne(id: number): string;
    update(id: number, updateCategoryDto: UpdateCategoryDto): string;
    remove(id: number): string;
    getCategory(level: number, type: CatType): Promise<{
        id: string;
        level: number;
        type: import(".prisma/client").$Enums.CatType;
    }>;
}
