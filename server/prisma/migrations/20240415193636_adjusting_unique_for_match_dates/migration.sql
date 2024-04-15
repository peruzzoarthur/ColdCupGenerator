/*
  Warnings:

  - A unique constraint covering the columns `[matchId,eventId,start,finish]` on the table `MatchDate` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "MatchDate_matchId_eventId_key";

-- CreateIndex
CREATE UNIQUE INDEX "MatchDate_matchId_eventId_start_finish_key" ON "MatchDate"("matchId", "eventId", "start", "finish");
