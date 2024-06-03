import { CreateMatchDateDto } from "./dto/create-match-date.dto";
import { UpdateMatchDateDto } from "./dto/update-match-date.dto";
import { PrismaService } from "src/prisma.service";
export declare class MatchDatesService {
    private readonly prismaService;
    constructor(prismaService: PrismaService);
    create(createMatchDateDto: CreateMatchDateDto): Promise<{
        id: string;
        eventId: string;
        matchId: string;
        start: Date;
        finish: Date;
        courtId: string;
    }>;
    findAll(): Promise<{
        court: {
            id: string;
            name: string;
            isAvailable: boolean;
            placeId: string;
        };
        match: {
            id: string;
            number: number;
            isFinished: boolean;
            categoryId: string;
            winnerDoublesId: string;
            eventId: string;
            type: import(".prisma/client").$Enums.MatchType;
            courtId: string;
        };
        id: string;
        eventId: string;
        matchId: string;
        start: Date;
        finish: Date;
    }[]>;
    findMatchDatesInOrderByEventId(eventId: string): Promise<{
        court: {
            id: string;
            name: string;
            isAvailable: boolean;
            placeId: string;
        };
        match: {
            number: number;
            category: {
                id: string;
                level: number;
                type: import(".prisma/client").$Enums.CatType;
            };
            categoryId: string;
            doubles: {
                id: string;
                players: {
                    id: string;
                    firstName: string;
                    lastName: string;
                    categoryId: string;
                    position: import(".prisma/client").$Enums.PlayerPosition;
                }[];
            }[];
        };
        id: string;
        matchId: string;
        start: Date;
        finish: Date;
    }[]>;
    findOne(id: string): Promise<{
        court: {
            id: string;
            name: string;
            isAvailable: boolean;
            placeId: string;
        };
        match: {
            number: number;
            id: string;
            doubles: {
                players: {
                    firstName: string;
                    lastName: string;
                }[];
            }[];
        };
        id: string;
        start: Date;
        finish: Date;
    }>;
    update(id: number, updateMatchDateDto: UpdateMatchDateDto): string;
    remove(id: number): string;
}
