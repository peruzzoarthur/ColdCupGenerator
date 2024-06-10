import { MatchType, SetType } from "@prisma/client";
import {
  IsArray,
  IsEnum,
  IsInt,
  IsNotEmpty,
  IsOptional,
  IsString,
} from "class-validator";

export class CreateMatchDto {
  @IsInt()
  number: number;
  @IsArray()
  doublesIds: string[];
  @IsString()
  @IsNotEmpty()
  eventId: string;
  @IsString()
  @IsNotEmpty()
  categoryId: string;

  @IsEnum(MatchType)
  matchType: MatchType;

  @IsString()
  @IsOptional()
  matchDateId: string | null;
}
