import {
  ArrayNotEmpty,
  IsArray,
  IsDateString,
  IsNotEmpty,
  IsNumber,
  IsString,
} from "class-validator";

export class CreateEventDto {
  @IsString()
  @IsNotEmpty()
  name: string;

  @IsArray()
  @ArrayNotEmpty()
  categoriesIds: string[];

  @IsArray()
  @ArrayNotEmpty()
  placesIds: string[];

  @IsArray()
  @ArrayNotEmpty()
  courtsIds: string[];

  @IsDateString()
  @IsNotEmpty()
  startDate: string;

  @IsDateString()
  @IsNotEmpty()
  finishDate: string;

  @IsNotEmpty()
  @IsString()
  timeOfFirstMatch: number;
  @IsNotEmpty()
  @IsString()
  timeOfLastMatch: number;
  @IsNotEmpty()
  @IsString()
  matchDurationInMinutes: number;
}
