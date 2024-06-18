/*
  Warnings:

  - You are about to drop the column `matchOneId` on the `MatchesReference` table. All the data in the column will be lost.
  - You are about to drop the column `matchTwoId` on the `MatchesReference` table. All the data in the column will be lost.
  - You are about to drop the column `nextMatchId` on the `MatchesReference` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[matchWinnerAId]` on the table `MatchesReference` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[matchWinnerBId]` on the table `MatchesReference` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[refMatchId]` on the table `MatchesReference` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[matchWinnerAId,matchWinnerBId,refMatchId]` on the table `MatchesReference` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `matchWinnerAId` to the `MatchesReference` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "MatchesReference" DROP CONSTRAINT "fk_match_one";

-- DropForeignKey
ALTER TABLE "MatchesReference" DROP CONSTRAINT "fk_match_two";

-- DropForeignKey
ALTER TABLE "MatchesReference" DROP CONSTRAINT "fk_next_match";

-- DropIndex
DROP INDEX "MatchesReference_matchOneId_key";

-- DropIndex
DROP INDEX "MatchesReference_matchOneId_matchTwoId_nextMatchId_key";

-- DropIndex
DROP INDEX "MatchesReference_matchTwoId_key";

-- DropIndex
DROP INDEX "MatchesReference_nextMatchId_key";

-- AlterTable
ALTER TABLE "MatchesReference" DROP COLUMN "matchOneId",
DROP COLUMN "matchTwoId",
DROP COLUMN "nextMatchId",
ADD COLUMN     "matchWinnerAId" TEXT NOT NULL,
ADD COLUMN     "matchWinnerBId" TEXT,
ADD COLUMN     "refMatchId" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "MatchesReference_matchWinnerAId_key" ON "MatchesReference"("matchWinnerAId");

-- CreateIndex
CREATE UNIQUE INDEX "MatchesReference_matchWinnerBId_key" ON "MatchesReference"("matchWinnerBId");

-- CreateIndex
CREATE UNIQUE INDEX "MatchesReference_refMatchId_key" ON "MatchesReference"("refMatchId");

-- CreateIndex
CREATE UNIQUE INDEX "MatchesReference_matchWinnerAId_matchWinnerBId_refMatchId_key" ON "MatchesReference"("matchWinnerAId", "matchWinnerBId", "refMatchId");

-- AddForeignKey
ALTER TABLE "MatchesReference" ADD CONSTRAINT "fk_match_winnerA" FOREIGN KEY ("matchWinnerAId") REFERENCES "Match"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MatchesReference" ADD CONSTRAINT "fk_match_winnerB" FOREIGN KEY ("matchWinnerBId") REFERENCES "Match"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MatchesReference" ADD CONSTRAINT "fk_ref_match" FOREIGN KEY ("refMatchId") REFERENCES "Match"("id") ON DELETE SET NULL ON UPDATE CASCADE;
