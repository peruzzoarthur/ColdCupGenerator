import { EventType } from "@prisma/client";
import { IsNotEmpty, IsString } from "class-validator";

export class EndGroupsStageDto {
  @IsNotEmpty()
  @IsString()
  id: string;
}
