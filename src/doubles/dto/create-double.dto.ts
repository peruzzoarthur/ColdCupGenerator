import { Player } from "@prisma/client";

export class CreateDoubleDto {
  playerOneId: string;
  playerTwoId: string;
  categoryId: string;
}
