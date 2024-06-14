/*
  Warnings:

  - The primary key for the `EventMatch` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `EventMatch` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Match" DROP CONSTRAINT "Match_winnerRefId_fkey";

-- DropIndex
DROP INDEX "EventMatch_eventId_matchId_key";

-- AlterTable
ALTER TABLE "EventMatch" DROP CONSTRAINT "EventMatch_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "EventMatch_pkey" PRIMARY KEY ("eventId", "matchId");

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_winnerRefId_fkey" FOREIGN KEY ("winnerRefId") REFERENCES "EventMatch"("matchId") ON DELETE SET NULL ON UPDATE CASCADE;
