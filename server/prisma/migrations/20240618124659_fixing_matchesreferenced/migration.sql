/*
  Warnings:

  - You are about to drop the `MatchesReference` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "MatchesReference" DROP CONSTRAINT "MatchesReference_categoryGroupId_fkey";

-- DropForeignKey
ALTER TABLE "MatchesReference" DROP CONSTRAINT "fk_match_winnerA";

-- DropForeignKey
ALTER TABLE "MatchesReference" DROP CONSTRAINT "fk_match_winnerB";

-- DropForeignKey
ALTER TABLE "MatchesReference" DROP CONSTRAINT "fk_ref_match";

-- DropTable
DROP TABLE "MatchesReference";

-- CreateTable
CREATE TABLE "MatchesReferenced" (
    "matchWinnerAId" TEXT NOT NULL,
    "matchWinnerBId" TEXT,
    "refMatchId" TEXT,
    "categoryGroupId" TEXT
);

-- CreateIndex
CREATE UNIQUE INDEX "MatchesReferenced_matchWinnerAId_key" ON "MatchesReferenced"("matchWinnerAId");

-- CreateIndex
CREATE UNIQUE INDEX "MatchesReferenced_matchWinnerBId_key" ON "MatchesReferenced"("matchWinnerBId");

-- CreateIndex
CREATE UNIQUE INDEX "MatchesReferenced_refMatchId_key" ON "MatchesReferenced"("refMatchId");

-- CreateIndex
CREATE UNIQUE INDEX "MatchesReferenced_matchWinnerAId_matchWinnerBId_refMatchId_key" ON "MatchesReferenced"("matchWinnerAId", "matchWinnerBId", "refMatchId");

-- AddForeignKey
ALTER TABLE "MatchesReferenced" ADD CONSTRAINT "fk_match_winnerA" FOREIGN KEY ("matchWinnerAId") REFERENCES "Match"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MatchesReferenced" ADD CONSTRAINT "fk_match_winnerB" FOREIGN KEY ("matchWinnerBId") REFERENCES "Match"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MatchesReferenced" ADD CONSTRAINT "fk_ref_match" FOREIGN KEY ("refMatchId") REFERENCES "Match"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MatchesReferenced" ADD CONSTRAINT "MatchesReferenced_categoryGroupId_fkey" FOREIGN KEY ("categoryGroupId") REFERENCES "CategoryGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;
