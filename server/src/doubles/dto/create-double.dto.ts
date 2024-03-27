import { Player } from "@prisma/client";
import { IsNotEmpty, IsString } from "class-validator";

export class CreateDoubleDto {
  @IsString()
  @IsNotEmpty({ message: "Please select player one. " })
  playerOneId: string;
  @IsString()
  @IsNotEmpty({ message: "Please select player two. " })
  playerTwoId: string;
  @IsString()
  @IsNotEmpty({ message: "Please select a category. " })
  categoryId: string;
}
