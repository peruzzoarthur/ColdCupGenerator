import { InviteType } from "@prisma/client";
import {
  IsBoolean,
  IsEnum,
  IsNotEmpty,
  IsString,
  IsUUID,
} from "class-validator";

export class RespondDoublesInviteDto {
  //   @IsNotEmpty()
  //   @IsString()
  //   @IsUUID()
  //   userId: string;

  @IsNotEmpty()
  @IsString()
  @IsUUID()
  inviteId: string;

  @IsNotEmpty()
  @IsBoolean()
  accepted: boolean;
}
