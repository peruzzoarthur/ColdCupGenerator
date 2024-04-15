-- DropForeignKey
ALTER TABLE "MatchDate" DROP CONSTRAINT "MatchDate_matchId_fkey";

-- AlterTable
ALTER TABLE "MatchDate" ALTER COLUMN "matchId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "MatchDate" ADD CONSTRAINT "MatchDate_matchId_fkey" FOREIGN KEY ("matchId") REFERENCES "Match"("id") ON DELETE SET NULL ON UPDATE CASCADE;
