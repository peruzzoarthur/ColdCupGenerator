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
        id: string;
        eventId: string;
        matchId: string;
        start: Date;
        finish: Date;
    }[]>;
    findMatchDatesInOrderByEventId(eventId: string): Promise<{
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
        matchId: string;
        start: Date;
        finish: Date;
    }[]>;
    findOne(id: number): string;
    update(id: number, updateMatchDateDto: UpdateMatchDateDto): string;
    remove(id: number): string;
}
