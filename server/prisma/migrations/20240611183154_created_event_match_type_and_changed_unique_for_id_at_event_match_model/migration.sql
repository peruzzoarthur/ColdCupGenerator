-- CreateEnum
CREATE TYPE "EventMatchType" AS ENUM ('GROUP', 'ROUND_OF_16', 'ROUND_OF_8', 'ROUND_OF_4', 'FINAL', 'UNCLASSIFIED');

-- DropIndex
DROP INDEX "EventMatch_eventId_matchId_key";

-- AlterTable
ALTER TABLE "EventMatch" ADD COLUMN     "type" "EventMatchType" NOT NULL DEFAULT 'GROUP',
ADD CONSTRAINT "EventMatch_pkey" PRIMARY KEY ("eventId", "matchId");
