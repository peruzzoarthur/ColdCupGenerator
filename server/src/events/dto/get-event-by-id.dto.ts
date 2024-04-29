import { IsNotEmpty, IsString } from "class-validator";

export class GetEventByIdDto {
  @IsNotEmpty()
  @IsString()
  id: string;
}
