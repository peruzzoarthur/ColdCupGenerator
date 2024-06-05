import { MatchType } from "@prisma/client";
import {
  IsArray,
  IsEnum,
  IsNotEmpty,
  IsOptional,
  IsString,
} from "class-validator";

export class CreateMatchDto {
  @IsArray()
  doublesIds: string[];
  @IsString()
  @IsNotEmpty()
  eventId: string;
  @IsString()
  @IsNotEmpty()
  categoryId: string;

  @IsEnum(MatchType)
  @IsOptional()
  type?: MatchType;

  @IsString()
  @IsNotEmpty()
  matchDateId: string | undefined;
}
