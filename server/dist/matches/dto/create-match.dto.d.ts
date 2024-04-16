import { MatchType } from "@prisma/client";
export declare class CreateMatchDto {
    doublesIds: string[];
    eventId: string;
    categoryId: string;
    type?: MatchType;
    matchDateId?: string;
}
