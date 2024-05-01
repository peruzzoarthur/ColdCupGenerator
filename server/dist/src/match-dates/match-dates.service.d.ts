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
        id: string;
        eventId: string;
        matchId: string;
        start: Date;
        finish: Date;
        match: {
            id: string;
            number: number;
            isFinished: boolean;
            categoryId: string;
            winnerDoublesId: string;
            eventId: string;
            type: import(".prisma/client").$Enums.MatchType;
            matchDateId: string;
            courtId: string;
        };
        court: {
            id: string;
            name: string;
            isAvailable: boolean;
            placeId: string;
        };
    }[]>;
    findMatchDatesInOrderByEventId(eventId: string): Promise<{
        id: string;
        matchId: string;
        start: Date;
        finish: Date;
        match: {
            number: number;
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
        };
        court: {
            id: string;
            name: string;
            isAvailable: boolean;
            placeId: string;
        };
    }[]>;
    findOne(id: number): string;
    update(id: number, updateMatchDateDto: UpdateMatchDateDto): string;
    remove(id: number): string;
}
