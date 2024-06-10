import { EventType } from "@prisma/client";
import {
  ArrayNotEmpty,
  IsArray,
  IsDateString,
  IsEnum,
  IsNotEmpty,
  IsNumber,
  IsOptional,
  IsString,
} from "class-validator";

export class CreateEventDto {
  @IsString()
  @IsNotEmpty()
  name: string;

  @IsEnum(EventType)
  @IsOptional()
  eventType?: EventType;

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
