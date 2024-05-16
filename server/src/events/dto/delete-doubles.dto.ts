import { IsNotEmpty, IsString, IsUUID } from "class-validator";

export class DeleteDoublesInEventDto {
  @IsString()
  @IsUUID()
  @IsNotEmpty()
  doublesId: string;

  @IsString()
  @IsUUID()
  @IsNotEmpty()
  eventId: string;

  @IsString()
  @IsUUID()
  @IsNotEmpty()
  categoryId: string;
}
