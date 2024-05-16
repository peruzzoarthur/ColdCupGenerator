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
    findResult(id: string): Promise<{
        doublesOneGames: number;
        doublesTwoGames: number;
    }>;
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
    update(id: string, updateMatchDto: UpdateMatchDto): Promise<{
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
    remove(id: string): string;
}
