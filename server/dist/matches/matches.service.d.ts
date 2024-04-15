import { CreateMatchDto } from "./dto/create-match.dto";
import { UpdateMatchDto } from "./dto/update-match.dto";
import { PrismaService } from "src/prisma.service";
import { MatchFinishedDto } from "./dto/match-finished.dto";
import { SetsService } from "src/sets/sets.service";
export declare class MatchesService {
    private readonly prismaService;
    private readonly setsService;
    constructor(prismaService: PrismaService, setsService: SetsService);
    create(createMatchDto: CreateMatchDto): Promise<{
        id: string;
        doubles: {
            id: string;
            categoryId: string;
        }[];
        type: import(".prisma/client").$Enums.MatchType;
        isFinished: boolean;
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
        categoryId: string;
    }>;
    findAll(): Promise<{
        id: string;
        winner: {
            id: string;
            categoryId: string;
        };
        type: import(".prisma/client").$Enums.MatchType;
        isFinished: boolean;
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
        eventId: string;
        date: Date;
    }[]>;
    findOne(id: string): Promise<{
        id: string;
        doubles: {
            id: string;
            categoryId: string;
        }[];
        type: import(".prisma/client").$Enums.MatchType;
        isFinished: boolean;
    }>;
    findResult(id: string): Promise<{
        doublesOneGames: number;
        doublesTwoGames: number;
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
    remove(id: number): string;
}
