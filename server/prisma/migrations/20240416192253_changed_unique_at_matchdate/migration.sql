/*
  Warnings:

  - A unique constraint covering the columns `[id]` on the table `MatchDate` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "MatchDate_eventId_start_finish_key";

-- CreateIndex
CREATE UNIQUE INDEX "MatchDate_id_key" ON "MatchDate"("id");
