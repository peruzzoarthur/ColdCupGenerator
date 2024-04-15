import { CreateSetDto } from "./dto/create-set.dto";
import { UpdateSetDto } from "./dto/update-set.dto";
import { PrismaService } from "src/prisma.service";
import { SetFinishedDto } from "./dto/set-finished.dto";
import { GamesService } from "src/games/games.service";
export declare class SetsService {
    private readonly prismaService;
    private readonly gamesService;
    constructor(prismaService: PrismaService, gamesService: GamesService);
    create(createSetDto: CreateSetDto): Promise<{
        id: string;
        type: import(".prisma/client").$Enums.SetType;
        setWinnerId: string;
        result: string;
        isFinished: boolean;
    }>;
    findAll(): Promise<{
        result: string;
        id: string;
        isFinished: boolean;
        doubles: {
            id: string;
            categoryId: string;
        }[];
        match: {
            id: string;
            number: number;
            isFinished: boolean;
            categoryId: string;
            winnerDoublesId: string;
            eventId: string;
            date: Date;
            type: import(".prisma/client").$Enums.MatchType;
        };
        games: {
            id: string;
            setId: string;
            winnerId: string;
        }[];
        _count: {
            doubles: number;
            winner: number;
            match: number;
            games: number;
            events: number;
        };
    }[]>;
    findOne(id: string): Promise<{
        id: string;
        type: import(".prisma/client").$Enums.SetType;
        isFinished: boolean;
        doubles: {
            id: string;
            categoryId: string;
        }[];
    }>;
    update(id: number, updateSetDto: UpdateSetDto): string;
    setFinished(id: string, setFinishedDto: SetFinishedDto): Promise<{
        id: string;
        type: import(".prisma/client").$Enums.SetType;
        setWinnerId: string;
        result: string;
        isFinished: boolean;
    }>;
    remove(id: number): string;
}
