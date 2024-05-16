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
        eventId: string;
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
        category: {
            id: string;
            level: number;
            type: import(".prisma/client").$Enums.CatType;
        };
        matchDate: {
            matchId: string;
            eventId: string;
            id: string;
            start: Date;
            finish: Date;
        };
    }[]>;
    findOne(id: string): Promise<{
        number: number;
        id: string;
        type: import(".prisma/client").$Enums.MatchType;
        isFinished: boolean;
        doubles: {
            players: {
                id: string;
                email: string;
                firstName: string;
                lastName: string;
                role: import(".prisma/client").$Enums.Role;
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
