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
    findMatchDatesByEventId(eventId: string): Promise<{
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
            doubles: {
                id: string;
                players: {
                    id: string;
                    firstName: string;
                    lastName: string;
                    position: import(".prisma/client").$Enums.PlayerPosition;
                }[];
            }[];
            categoryId: string;
        };
        id: string;
        matchId: string;
        start: Date;
        finish: Date;
    }[]>;
    update(id: string, updateMatchDateDto: UpdateMatchDateDto): string;
    remove(id: string): string;
}
