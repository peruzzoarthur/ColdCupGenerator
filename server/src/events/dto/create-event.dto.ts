import {
  ArrayNotEmpty,
  IsArray,
  IsDateString,
  IsNotEmpty,
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

  @IsDateString()
  @IsNotEmpty()
  startDate: string;

  @IsDateString()
  @IsNotEmpty()
  finishDate: string;
}
