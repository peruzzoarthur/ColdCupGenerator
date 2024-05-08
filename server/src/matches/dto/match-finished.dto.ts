import { IsNotEmpty, IsString } from "class-validator";

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

  @IsString()
  @IsNotEmpty()
  eventId: string;
}
