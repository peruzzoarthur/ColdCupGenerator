import {
  IsArray,
  IsDateString,
  IsNotEmpty,
  IsNumber,
  IsString,
} from "class-validator";

export class CreateScheduleDto {
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

  @IsNotEmpty()
  @IsString()
  id: string;

  @IsNotEmpty()
  @IsArray()
  courtIds?: string[];
}
