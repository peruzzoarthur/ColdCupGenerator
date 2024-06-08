import { IsBoolean, IsNotEmpty, IsString, IsUUID } from "class-validator";

export class RespondEventInviteDto {
  @IsNotEmpty()
  @IsString()
  @IsUUID()
  inviteId: string;

  @IsNotEmpty()
  @IsBoolean()
  accepted: boolean;
}
