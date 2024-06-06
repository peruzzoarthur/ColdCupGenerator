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
            matchId: string;
            start: Date;
            finish: Date;
        };
    }[]>;
    findOne(id: string): Promise<{
        number: number;
        id: string;
        isFinished: boolean;
        type: import(".prisma/client").$Enums.MatchType;
        doubles: {
            players: {
                id: string;
                firstName: string;
                lastName: string;
                categoryId: string;
                position: import(".prisma/client").$Enums.PlayerPosition;
            }[];
        }[];
    }>;
    findResult(id: string): Promise<{
        doublesOneGames: number;
        doublesTwoGames: number;
    }>;
    update(id: string, updateMatchDto: UpdateMatchDto): Promise<string>;
    updateMatchDate(id: string, updateMatchDto: UpdateMatchDto): Promise<{
        id: string;
        matchDate: {
            id: string;
            start: Date;
        };
    }>;
    finishMatch(id: string, matchFinishedDto: MatchFinishedDto): Promise<{
        id: string;
        number: number;
        isFinished: boolean;
        categoryId: string;
        winnerDoublesId: string;
        eventId: string;
        type: import(".prisma/client").$Enums.MatchType;
        courtId: string;
    }>;
    remove(id: number): string;
}
