/*
  Warnings:

  - You are about to drop the column `date` on the `Match` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[matchId]` on the table `MatchDate` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateEnum
CREATE TYPE "EventType" AS ENUM ('ALLxALL', 'GROUPS');

-- DropForeignKey
ALTER TABLE "Match" DROP CONSTRAINT "Match_matchDateId_fkey";

-- AlterTable
ALTER TABLE "Event" ADD COLUMN     "eventType" "EventType" NOT NULL DEFAULT 'ALLxALL',
ADD COLUMN     "matchDurationInMinutes" INTEGER,
ADD COLUMN     "timeOfFirstMatch" INTEGER,
ADD COLUMN     "timeOfLastMatch" INTEGER;

-- AlterTable
ALTER TABLE "Match" DROP COLUMN "date";

-- AlterTable
ALTER TABLE "MatchDate" ADD COLUMN     "matchId" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "MatchDate_matchId_key" ON "MatchDate"("matchId");

-- AddForeignKey
ALTER TABLE "MatchDate" ADD CONSTRAINT "MatchDate_matchId_fkey" FOREIGN KEY ("matchId") REFERENCES "Match"("id") ON DELETE SET NULL ON UPDATE CASCADE;
