/*
  Warnings:

  - You are about to drop the column `matchWinnerAId` on the `MatchesReferenced` table. All the data in the column will be lost.
  - You are about to drop the column `matchWinnerBId` on the `MatchesReferenced` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[matchAId]` on the table `MatchesReferenced` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[matchBId]` on the table `MatchesReferenced` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[matchAId,matchBId,refMatchId]` on the table `MatchesReferenced` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `matchAId` to the `MatchesReferenced` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "MatchesReferenced" DROP CONSTRAINT "fk_match_winnerA";

-- DropForeignKey
ALTER TABLE "MatchesReferenced" DROP CONSTRAINT "fk_match_winnerB";

-- DropIndex
DROP INDEX "MatchesReferenced_matchWinnerAId_key";

-- DropIndex
DROP INDEX "MatchesReferenced_matchWinnerAId_matchWinnerBId_refMatchId_key";

-- DropIndex
DROP INDEX "MatchesReferenced_matchWinnerBId_key";

-- AlterTable
ALTER TABLE "MatchesReferenced" DROP COLUMN "matchWinnerAId",
DROP COLUMN "matchWinnerBId",
ADD COLUMN     "matchAId" TEXT NOT NULL,
ADD COLUMN     "matchBId" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "MatchesReferenced_matchAId_key" ON "MatchesReferenced"("matchAId");

-- CreateIndex
CREATE UNIQUE INDEX "MatchesReferenced_matchBId_key" ON "MatchesReferenced"("matchBId");

-- CreateIndex
CREATE UNIQUE INDEX "MatchesReferenced_matchAId_matchBId_refMatchId_key" ON "MatchesReferenced"("matchAId", "matchBId", "refMatchId");

-- AddForeignKey
ALTER TABLE "MatchesReferenced" ADD CONSTRAINT "fk_match_A" FOREIGN KEY ("matchAId") REFERENCES "Match"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MatchesReferenced" ADD CONSTRAINT "fk_match_B" FOREIGN KEY ("matchBId") REFERENCES "Match"("id") ON DELETE SET NULL ON UPDATE CASCADE;
