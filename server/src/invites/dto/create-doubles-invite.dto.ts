import { InviteType } from "@prisma/client";
import { IsEnum, IsNotEmpty, IsString } from "class-validator";

export class CreateDoublesInviteDto {
  @IsNotEmpty()
  @IsString()
  invitedId: string;

  @IsNotEmpty()
  @IsEnum(InviteType)
  inviteType: InviteType;
}
