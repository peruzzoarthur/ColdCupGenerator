/*
  Warnings:

  - You are about to drop the column `winnerRefId` on the `Match` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Match" DROP CONSTRAINT "Match_winnerRefId_fkey";

-- AlterTable
ALTER TABLE "Match" DROP COLUMN "winnerRefId";

-- CreateTable
CREATE TABLE "MatchesReference" (
    "matchOneId" TEXT NOT NULL,
    "matchTwoId" TEXT,
    "nextMatchId" TEXT
);

-- CreateIndex
CREATE UNIQUE INDEX "MatchesReference_matchOneId_key" ON "MatchesReference"("matchOneId");

-- CreateIndex
CREATE UNIQUE INDEX "MatchesReference_matchTwoId_key" ON "MatchesReference"("matchTwoId");

-- CreateIndex
CREATE UNIQUE INDEX "MatchesReference_nextMatchId_key" ON "MatchesReference"("nextMatchId");

-- CreateIndex
CREATE UNIQUE INDEX "MatchesReference_matchOneId_matchTwoId_nextMatchId_key" ON "MatchesReference"("matchOneId", "matchTwoId", "nextMatchId");

-- AddForeignKey
ALTER TABLE "MatchesReference" ADD CONSTRAINT "fk_match_one" FOREIGN KEY ("matchOneId") REFERENCES "Match"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MatchesReference" ADD CONSTRAINT "fk_match_two" FOREIGN KEY ("matchTwoId") REFERENCES "Match"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MatchesReference" ADD CONSTRAINT "fk_next_match" FOREIGN KEY ("nextMatchId") REFERENCES "Match"("id") ON DELETE SET NULL ON UPDATE CASCADE;
