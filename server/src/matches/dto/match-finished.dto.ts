import { MatchType } from "@prisma/client";

export class MatchFinishedDto {
  // matchId: string;
  result?: string;
  doublesOneId: string;
  doublesOneGames: number;
  doublesTwoId: string;
  doublesTwoGames: number;
  winnerDoublesId: string;
  // isFinished: boolean;
}
