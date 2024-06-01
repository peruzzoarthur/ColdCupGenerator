import { IsBoolean, IsNotEmpty, IsString, IsUUID } from "class-validator";

export class RespondDoublesInviteDto {
  @IsNotEmpty()
  @IsString()
  @IsUUID()
  inviteId: string;

  @IsNotEmpty()
  @IsBoolean()
  accepted: boolean;
}
