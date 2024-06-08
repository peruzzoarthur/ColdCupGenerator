import { InviteType } from "@prisma/client";
import { IsEnum, IsNotEmpty, IsOptional, IsString } from "class-validator";

export class CreateEventInviteDto {
  @IsNotEmpty()
  @IsString()
  invitedId: string;

  @IsNotEmpty()
  @IsString()
  eventId: string;

  @IsNotEmpty()
  @IsEnum(InviteType)
  inviteType: InviteType;
}
