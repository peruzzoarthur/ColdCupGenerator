import { IsNotEmpty, IsNumber, IsString } from "class-validator";
import { CatType } from "../types/categories.types";

export class CreateCategoryDto {
  @IsNumber()
  level: number;

  @IsNotEmpty()
  @IsString()
  type: string;
}
