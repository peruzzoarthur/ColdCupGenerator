/*
  Warnings:

  - Added the required column `courtId` to the `MatchDate` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "MatchDate" ADD COLUMN     "courtId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "MatchDate" ADD CONSTRAINT "MatchDate_courtId_fkey" FOREIGN KEY ("courtId") REFERENCES "Court"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
