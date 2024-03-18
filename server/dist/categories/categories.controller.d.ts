import { CategoriesService } from "./categories.service";
import { CreateCategoryDto } from "./dto/create-category.dto";
import { UpdateCategoryDto } from "./dto/update-category.dto";
import { CatType } from "./types/categories.types";
export declare class CategoriesController {
    private readonly categoriesService;
    constructor(categoriesService: CategoriesService);
    findAll(): Promise<{
        id: string;
        level: number;
        type: import(".prisma/client").$Enums.CatType;
    }[]>;
    getCategoryById(level: number, type: CatType): Promise<{
        id: string;
        level: number;
        type: import(".prisma/client").$Enums.CatType;
    }>;
    create(createCategoryDto: CreateCategoryDto): Promise<{
        id: string;
        level: number;
        type: import(".prisma/client").$Enums.CatType;
    }>;
    update(id: string, updateCategoryDto: UpdateCategoryDto): string;
    remove(id: string): string;
}
