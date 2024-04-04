import { MatchesService } from "./matches.service";
import { CreateMatchDto } from "./dto/create-match.dto";
import { UpdateMatchDto } from "./dto/update-match.dto";
import { MatchFinishedDto } from "./dto/match-finished.dto";
export declare class MatchesController {
    private readonly matchesService;
    constructor(matchesService: MatchesService);
    create(createMatchDto: CreateMatchDto): Promise<{
        sets: {
            id: string;
            type: import(".prisma/client").$Enums.SetType;
            setWinnerId: string;
            result: string;
            isFinished: boolean;
        }[];
        id: string;
        type: import(".prisma/client").$Enums.MatchType;
        isFinished: boolean;
        doubles: {
            id: string;
            categoryId: string;
        }[];
        categoryId: string;
        category: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        };
    }>;
    findAll(): Promise<{
        sets: {
            id: string;
            type: import(".prisma/client").$Enums.SetType;
            setWinnerId: string;
            result: string;
            isFinished: boolean;
        }[];
        id: string;
        type: import(".prisma/client").$Enums.MatchType;
        isFinished: boolean;
        winner: {
            id: string;
            categoryId: string;
        };
        eventId: string;
        date: Date;
        category: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        };
    }[]>;
    findResult(id: string): Promise<{
        doublesOneGames: number;
        doublesTwoGames: number;
    }>;
    findOne(id: string): Promise<{
        id: string;
        type: import(".prisma/client").$Enums.MatchType;
        isFinished: boolean;
        doubles: {
            id: string;
            categoryId: string;
        }[];
    }>;
    update(id: string, updateMatchDto: UpdateMatchDto): Promise<string>;
    matchFinished(id: string, matchFinishedDto: MatchFinishedDto): Promise<{
        id: string;
        number: number;
        isFinished: boolean;
        categoryId: string;
        winnerDoublesId: string;
        eventId: string;
        date: Date;
        type: import(".prisma/client").$Enums.MatchType;
    }>;
    remove(id: string): string;
}
