import { IsEnum, IsNotEmpty, IsString } from "class-validator";

enum CatType {
  ALL = "ALL",
  F = "F",
  M = "M",
}

enum Position {
  REVES = "REVES",
  DRIVE = "DRIVE",
}

export class CreatePlayerDto {
  @IsString()
  @IsNotEmpty()
  firstName: string;
  @IsString()
  @IsNotEmpty()
  lastName: string;
  // @IsString()
  // @IsNotEmpty()
  // email: string;

  categoryLevel?: number;
  categoryType?: CatType;

  @IsString()
  @IsNotEmpty({ message: "select a category" })
  categoryId: string;

  @IsEnum(Position)
  position: Position;
}
