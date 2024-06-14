import { IsNotEmpty, IsString } from "class-validator";

export class FindEventMatchDto {
  @IsString()
  @IsNotEmpty()
  eventId: string;

  @IsString()
  @IsNotEmpty()
  matchId: string;
}
