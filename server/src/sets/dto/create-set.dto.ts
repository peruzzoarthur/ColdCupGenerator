import { SetType } from "@prisma/client";
import {
  IsArray,
  IsEnum,
  IsNotEmpty,
  IsNumber,
  IsString,
  IsUUID,
} from "class-validator";

export class CreateSetDto {
  @IsNumber()
  number: number;
  @IsNumber()
  doublesOneGames: number;
  @IsNumber()
  doublesTwoGames: number;
  @IsUUID()
  @IsNotEmpty()
  matchId: string;
  @IsArray()
  @IsNotEmpty()
  doublesIds: string[];
  @IsUUID()
  @IsNotEmpty()
  eventId: string;

  @IsEnum(SetType)
  setType: SetType;
}
