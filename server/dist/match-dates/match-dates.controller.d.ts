import { MatchDatesService } from './match-dates.service';
import { CreateMatchDateDto } from './dto/create-match-date.dto';
import { UpdateMatchDateDto } from './dto/update-match-date.dto';
export declare class MatchDatesController {
    private readonly matchDatesService;
    constructor(matchDatesService: MatchDatesService);
    create(createMatchDateDto: CreateMatchDateDto): import(".prisma/client").Prisma.Prisma__MatchDateClient<{
        id: string;
        eventId: string;
        matchId: string;
        start: Date;
        finish: Date;
    }, never, import("@prisma/client/runtime/library").DefaultArgs>;
    findAll(): import(".prisma/client").Prisma.PrismaPromise<{
        match: {
            id: string;
            number: number;
            isFinished: boolean;
            categoryId: string;
            winnerDoublesId: string;
            eventId: string;
            date: Date;
            type: import(".prisma/client").$Enums.MatchType;
            matchDateId: string;
        };
        id: string;
        eventId: string;
        start: Date;
        finish: Date;
    }[]>;
    findOne(id: string): string;
    update(id: string, updateMatchDateDto: UpdateMatchDateDto): string;
    remove(id: string): string;
}
