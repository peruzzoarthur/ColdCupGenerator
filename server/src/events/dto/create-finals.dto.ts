import { EventType } from "@prisma/client";
import { IsNotEmpty, IsString } from "class-validator";

export class CreateFinalsDto {
  @IsNotEmpty()
  @IsString()
  id: string;
}
