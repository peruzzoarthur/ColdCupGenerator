import { IsNotEmpty, IsString } from "class-validator";

export class CreateCourtDto {
  @IsNotEmpty()
  @IsString()
  name: string;

  @IsNotEmpty()
  @IsString()
  placeId: string;
}
