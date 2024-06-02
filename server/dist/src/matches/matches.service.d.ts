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
            matchId: string;
            start: Date;
            finish: Date;
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
    findOne(id: string): Promise<{
        number: number;
        id: string;
        type: import(".prisma/client").$Enums.MatchType;
        doubles: {
            players: {
                id: string;
                firstName: string;
                lastName: string;
                position: import(".prisma/client").$Enums.PlayerPosition;
            }[];
        }[];
        isFinished: boolean;
    }>;
    findResult(id: string): Promise<{
        doublesOneGames: number;
        doublesTwoGames: number;
    }>;
    update(id: string, updateMatchDto: UpdateMatchDto): Promise<string>;
    updateMatchDate(id: string, updateMatchDto: UpdateMatchDto): Promise<{
        matchDate: {
            id: string;
            start: Date;
        };
        id: string;
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
