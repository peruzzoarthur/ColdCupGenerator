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
            isFinished: boolean;
            categoryId: string;
            winnerDoublesId: string;
            eventId: string;
            date: Date;
            type: import(".prisma/client").$Enums.MatchType;
        };
        result: string;
        id: string;
        doubles: {
            id: string;
            categoryId: string;
        }[];
        _count: {
            doubles: number;
            winner: number;
            match: number;
            games: number;
        };
        isFinished: boolean;
        games: {
            id: string;
            setId: string;
            winnerId: string;
        }[];
    }[]>;
    findOne(id: string): Promise<{
        type: import(".prisma/client").$Enums.SetType;
        id: string;
        doubles: {
            id: string;
            categoryId: string;
        }[];
        isFinished: boolean;
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
