import { MatchType } from "@prisma/client";
import { IsNotEmpty, IsNumber, IsString } from "class-validator";

export class MatchFinishedDto {
  result?: string;
  @IsString()
  @IsNotEmpty()
  doublesOneId: string;
  @IsString()
  @IsNotEmpty()
  doublesOneGames: number;
  @IsString()
  @IsNotEmpty()
  doublesTwoId: string;
  @IsString()
  @IsNotEmpty()
  doublesTwoGames: number;
  @IsString()
  @IsNotEmpty()
  winnerDoublesId: string;
}
