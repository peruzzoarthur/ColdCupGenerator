/*
  Warnings:

  - The primary key for the `EventMatch` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - A unique constraint covering the columns `[eventId,matchId]` on the table `EventMatch` will be added. If there are existing duplicate values, this will fail.
  - The required column `id` was added to the `EventMatch` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.

*/
-- AlterTable
ALTER TABLE "DoublesGroup" ADD COLUMN     "firstPlaceDoublesId" TEXT,
ADD COLUMN     "secondPlaceDoublesId" TEXT;

-- AlterTable
ALTER TABLE "EventMatch" DROP CONSTRAINT "EventMatch_pkey",
ADD COLUMN     "id" TEXT NOT NULL,
ADD CONSTRAINT "EventMatch_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Match" ADD COLUMN     "winnerRefId" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "EventMatch_eventId_matchId_key" ON "EventMatch"("eventId", "matchId");

-- AddForeignKey
ALTER TABLE "DoublesGroup" ADD CONSTRAINT "DoublesGroup_firstPlaceDoublesId_fkey" FOREIGN KEY ("firstPlaceDoublesId") REFERENCES "Double"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "DoublesGroup" ADD CONSTRAINT "DoublesGroup_secondPlaceDoublesId_fkey" FOREIGN KEY ("secondPlaceDoublesId") REFERENCES "Double"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_winnerRefId_fkey" FOREIGN KEY ("winnerRefId") REFERENCES "EventMatch"("id") ON DELETE SET NULL ON UPDATE CASCADE;
