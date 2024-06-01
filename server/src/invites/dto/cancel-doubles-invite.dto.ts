import { IsNotEmpty, IsString, IsUUID } from "class-validator";

export class CancelDoublesInviteDto {
  @IsNotEmpty()
  @IsString()
  @IsUUID()
  inviteId: string;
}
