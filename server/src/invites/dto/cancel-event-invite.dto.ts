import { IsNotEmpty, IsString, IsUUID } from "class-validator";

export class CancelEventInviteDto {
  @IsNotEmpty()
  @IsString()
  @IsUUID()
  inviteId: string;
}
