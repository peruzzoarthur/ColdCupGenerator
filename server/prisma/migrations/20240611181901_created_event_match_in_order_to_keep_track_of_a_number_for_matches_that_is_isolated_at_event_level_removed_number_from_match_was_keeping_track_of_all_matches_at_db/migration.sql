/*
  Warnings:

  - You are about to drop the column `number` on the `Match` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Match" DROP COLUMN "number";

-- CreateTable
CREATE TABLE "EventMatch" (
    "number" SERIAL NOT NULL,
    "eventId" TEXT NOT NULL,
    "matchId" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "EventMatch_matchId_key" ON "EventMatch"("matchId");

-- CreateIndex
CREATE UNIQUE INDEX "EventMatch_eventId_matchId_key" ON "EventMatch"("eventId", "matchId");

-- AddForeignKey
ALTER TABLE "EventMatch" ADD CONSTRAINT "EventMatch_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "Event"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EventMatch" ADD CONSTRAINT "EventMatch_matchId_fkey" FOREIGN KEY ("matchId") REFERENCES "Match"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
