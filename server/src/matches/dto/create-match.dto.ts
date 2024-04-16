import { MatchType } from "@prisma/client";

export class CreateMatchDto {
  doublesIds: string[];
  eventId: string;
  categoryId: string;
  type?: MatchType;
  matchDateId?: string;
}
