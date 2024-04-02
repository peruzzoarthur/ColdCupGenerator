import { CategoriesService } from "./categories.service";
import { CreateCategoryDto } from "./dto/create-category.dto";
import { UpdateCategoryDto } from "./dto/update-category.dto";
import { CatType } from "./types/categories.types";
import { GetCategoryByIdDto } from "./dto/get-category-by-id.dto";
export declare class CategoriesController {
    private readonly categoriesService;
    constructor(categoriesService: CategoriesService);
    findAll(): Promise<{
        id: string;
        level: number;
        type: import(".prisma/client").$Enums.CatType;
    }[]>;
    getCategoryById(getCategoryByIdDto: GetCategoryByIdDto): Promise<{
        level: number;
        type: import(".prisma/client").$Enums.CatType;
        id: string;
    }>;
    getCategoryByQuery(level: number, type: CatType): Promise<{
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
