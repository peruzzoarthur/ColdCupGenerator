/*
  Warnings:

  - A unique constraint covering the columns `[matchDateId]` on the table `Match` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "MatchDate" DROP CONSTRAINT "MatchDate_matchId_fkey";

-- DropIndex
DROP INDEX "MatchDate_matchId_key";

-- AlterTable
ALTER TABLE "Match" ADD COLUMN     "matchDateId" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "Match_matchDateId_key" ON "Match"("matchDateId");

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_matchDateId_fkey" FOREIGN KEY ("matchDateId") REFERENCES "MatchDate"("id") ON DELETE SET NULL ON UPDATE CASCADE;
