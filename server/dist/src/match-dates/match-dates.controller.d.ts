import { MatchDatesService } from "./match-dates.service";
import { CreateMatchDateDto } from "./dto/create-match-date.dto";
import { UpdateMatchDateDto } from "./dto/update-match-date.dto";
export declare class MatchDatesController {
    private readonly matchDatesService;
    constructor(matchDatesService: MatchDatesService);
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
    findOne(id: string): Promise<{
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
    update(id: string, updateMatchDateDto: UpdateMatchDateDto): string;
    remove(id: string): string;
}