/*
  Warnings:

  - A unique constraint covering the columns `[eventId,start,finish,courtId]` on the table `MatchDate` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "MatchDate_eventId_start_finish_key";

-- AlterTable
ALTER TABLE "EventDouble" ADD COLUMN     "atRest" TIMESTAMP(3);

-- CreateIndex
CREATE UNIQUE INDEX "MatchDate_eventId_start_finish_courtId_key" ON "MatchDate"("eventId", "start", "finish", "courtId");
