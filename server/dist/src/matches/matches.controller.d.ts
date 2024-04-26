import { MatchesService } from "./matches.service";
import { CreateMatchDto } from "./dto/create-match.dto";
import { UpdateMatchDto } from "./dto/update-match.dto";
import { MatchFinishedDto } from "./dto/match-finished.dto";
export declare class MatchesController {
    private readonly matchesService;
    constructor(matchesService: MatchesService);
    create(createMatchDto: CreateMatchDto): Promise<{
        category: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        };
        id: string;
        type: import(".prisma/client").$Enums.MatchType;
        doubles: {
            id: string;
            categoryId: string;
        }[];
        categoryId: string;
        sets: {
            id: string;
            type: import(".prisma/client").$Enums.SetType;
            setWinnerId: string;
            result: string;
            isFinished: boolean;
        }[];
        isFinished: boolean;
    }>;
    findAll(): Promise<{
        category: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        };
        matchDate: {
            id: string;
            eventId: string;
            start: Date;
            finish: Date;
            matchId: string;
        };
        id: string;
        type: import(".prisma/client").$Enums.MatchType;
        sets: {
            id: string;
            type: import(".prisma/client").$Enums.SetType;
            setWinnerId: string;
            result: string;
            isFinished: boolean;
        }[];
        eventId: string;
        winner: {
            id: string;
            categoryId: string;
        };
        isFinished: boolean;
    }[]>;
    findResult(id: string): Promise<{
        doublesOneGames: number;
        doublesTwoGames: number;
    }>;
    findOne(id: string): Promise<{
        id: string;
        type: import(".prisma/client").$Enums.MatchType;
        doubles: {
            id: string;
            categoryId: string;
        }[];
        isFinished: boolean;
    }>;
    update(id: string, updateMatchDto: UpdateMatchDto): Promise<string>;
    matchFinished(id: string, matchFinishedDto: MatchFinishedDto): Promise<{
        id: string;
        number: number;
        isFinished: boolean;
        categoryId: string;
        winnerDoublesId: string;
        eventId: string;
        type: import(".prisma/client").$Enums.MatchType;
        matchDateId: string;
        courtId: string;
    }>;
    remove(id: string): string;
}
