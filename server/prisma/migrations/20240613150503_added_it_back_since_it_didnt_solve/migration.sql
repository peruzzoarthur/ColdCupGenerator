/*
  Warnings:

  - A unique constraint covering the columns `[eventId,matchId]` on the table `EventMatch` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "EventMatch_eventId_matchId_key" ON "EventMatch"("eventId", "matchId");
