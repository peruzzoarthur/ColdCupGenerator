import { EventType } from "@prisma/client";
import {
  IsArray,
  IsBoolean,
  IsEnum,
  IsISO8601,
  IsNotEmpty,
  IsNumber,
  IsString,
} from "class-validator";

export class ActivateEventDto {
  @IsNotEmpty()
  @IsString()
  id: string;

  @IsNotEmpty()
  @IsISO8601()
  startDate: string;

  @IsNotEmpty()
  @IsISO8601()
  finishDate: string;

  @IsNotEmpty()
  @IsNumber()
  timeOfFirstMatch: number;

  @IsNotEmpty()
  @IsNumber()
  timeOfLastMatch: number;

  @IsNotEmpty()
  @IsNumber()
  matchDurationInMinutes: number;

  @IsNotEmpty()
  @IsArray()
  courtsIds: string[];

  @IsBoolean()
  autoPopulate?: boolean;

  @IsEnum(EventType)
  eventType: EventType;
}
