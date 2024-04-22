import { SetsService } from "./sets.service";
import { CreateSetDto } from "./dto/create-set.dto";
import { UpdateSetDto } from "./dto/update-set.dto";
import { SetFinishedDto } from "./dto/set-finished.dto";
export declare class SetsController {
    private readonly setsService;
    constructor(setsService: SetsService);
    create(createSetDto: CreateSetDto): Promise<{
        id: string;
        type: import(".prisma/client").$Enums.SetType;
        setWinnerId: string;
        result: string;
        isFinished: boolean;
    }>;
    findAll(): Promise<{
        match: {
            id: string;
            number: number;
            isFinished: boolean;
            categoryId: string;
            winnerDoublesId: string;
            eventId: string;
            type: import(".prisma/client").$Enums.MatchType;
            matchDateId: string;
        };
        result: string;
        id: string;
        isFinished: boolean;
        doubles: {
            id: string;
            categoryId: string;
        }[];
        _count: {
            doubles: number;
            winner: number;
            match: number;
            games: number;
            events: number;
        };
        games: {
            id: string;
            setId: string;
            winnerId: string;
        }[];
    }[]>;
    findOne(id: string): Promise<{
        id: string;
        isFinished: boolean;
        type: import(".prisma/client").$Enums.SetType;
        doubles: {
            id: string;
            categoryId: string;
        }[];
    }>;
    update(id: string, updateSetDto: UpdateSetDto): string;
    matchFinished(id: string, setFinishedDto: SetFinishedDto): Promise<{
        id: string;
        type: import(".prisma/client").$Enums.SetType;
        setWinnerId: string;
        result: string;
        isFinished: boolean;
    }>;
    remove(id: string): string;
}