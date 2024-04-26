import { IsDateString, IsNotEmpty, IsString } from "class-validator";

export class CreateMatchDateDto {
  @IsNotEmpty()
  @IsDateString()
  startDate: string;
  @IsNotEmpty()
  @IsDateString()
  finishDate: string;

  @IsNotEmpty()
  @IsString()
  eventId: string;

  @IsString()
  matchId?: string | null;

  @IsString()
  courtId?: string | null;
}
