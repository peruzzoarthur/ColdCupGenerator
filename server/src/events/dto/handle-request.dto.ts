import { IsBoolean, IsNotEmpty, IsString } from "class-validator";

export class HandleDoublesRequestToEventDto {
  @IsString()
  @IsNotEmpty()
  eventId: string;

  @IsString()
  @IsNotEmpty()
  categoryId: string;

  @IsString()
  @IsNotEmpty()
  doubleId: string;

  @IsBoolean()
  @IsNotEmpty()
  accept: boolean;
}
