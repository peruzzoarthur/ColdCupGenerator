import { IsNotEmpty, IsString } from "class-validator";

export class RegisterDoublesInEventDto {
  @IsString()
  @IsNotEmpty()
  eventId: string;

  @IsString()
  @IsNotEmpty()
  doublesId: string;
}
