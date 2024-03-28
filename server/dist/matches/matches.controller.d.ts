import { MatchesService } from './matches.service';
import { CreateMatchDto } from './dto/create-match.dto';
import { UpdateMatchDto } from './dto/update-match.dto';
export declare class MatchesController {
    private readonly matchesService;
    constructor(matchesService: MatchesService);
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
    findOne(id: string): string;
    update(id: string, updateMatchDto: UpdateMatchDto): string;
    remove(id: string): string;
}
