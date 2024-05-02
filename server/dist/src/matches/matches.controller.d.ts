import { MatchesService } from "./matches.service";
import { CreateMatchDto } from "./dto/create-match.dto";
import { UpdateMatchDto } from "./dto/update-match.dto";
import { MatchFinishedDto } from "./dto/match-finished.dto";
export declare class MatchesController {
    private readonly matchesService;
    constructor(matchesService: MatchesService);
    create(createMatchDto: CreateMatchDto): Promise<{
        id: string;
        isFinished: boolean;
        categoryId: string;
        type: import(".prisma/client").$Enums.MatchType;
        category: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        };
        sets: {
            id: string;
            type: import(".prisma/client").$Enums.SetType;
            setWinnerId: string;
            result: string;
            isFinished: boolean;
        }[];
        doubles: {
            id: string;
            categoryId: string;
        }[];
    }>;
    findAll(): Promise<{
        id: string;
        isFinished: boolean;
        eventId: string;
        type: import(".prisma/client").$Enums.MatchType;
        category: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        };
        winner: {
            id: string;
            categoryId: string;
        };
        sets: {
            id: string;
            type: import(".prisma/client").$Enums.SetType;
            setWinnerId: string;
            result: string;
            isFinished: boolean;
        }[];
        matchDate: {
            id: string;
            eventId: string;
            start: Date;
            finish: Date;
            matchId: string;
        };
    }[]>;
    findResult(id: string): Promise<{
        doublesOneGames: number;
        doublesTwoGames: number;
    }>;
    findOne(id: string): Promise<{
        id: string;
        isFinished: boolean;
        type: import(".prisma/client").$Enums.MatchType;
        doubles: {
            id: string;
            categoryId: string;
        }[];
    }>;
    update(id: string, updateMatchDto: UpdateMatchDto): Promise<{
        id: string;
        matchDate: {
            id: string;
            start: Date;
        };
    }>;
    matchFinished(id: string, matchFinishedDto: MatchFinishedDto): Promise<{
        id: string;
        number: number;
        isFinished: boolean;
        categoryId: string;
        winnerDoublesId: string;
        eventId: string;
        type: import(".prisma/client").$Enums.MatchType;
        courtId: string;
    }>;
    remove(id: string): string;
}
