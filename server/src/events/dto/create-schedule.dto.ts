import { IsDateString, IsNotEmpty, IsNumber, IsString } from "class-validator";

export class CreateScheduletDto {
  @IsNotEmpty()
  @IsDateString()
  startDate: string;
  @IsNotEmpty()
  @IsDateString()
  finishDate: string;

  @IsNumber()
  timeOfFirstMatch: number;

  @IsNumber()
  timeOfLastMatch: number;

  @IsNumber()
  matchDurationInMinutes: number;
}
