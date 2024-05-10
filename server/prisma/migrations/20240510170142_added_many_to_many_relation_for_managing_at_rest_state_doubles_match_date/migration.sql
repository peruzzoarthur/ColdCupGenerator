/*
  Warnings:

  - You are about to drop the column `atRest` on the `EventDouble` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "EventDouble" DROP COLUMN "atRest";

-- CreateTable
CREATE TABLE "_DoubleToMatchDate" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_DoubleToMatchDate_AB_unique" ON "_DoubleToMatchDate"("A", "B");

-- CreateIndex
CREATE INDEX "_DoubleToMatchDate_B_index" ON "_DoubleToMatchDate"("B");

-- AddForeignKey
ALTER TABLE "_DoubleToMatchDate" ADD CONSTRAINT "_DoubleToMatchDate_A_fkey" FOREIGN KEY ("A") REFERENCES "Double"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToMatchDate" ADD CONSTRAINT "_DoubleToMatchDate_B_fkey" FOREIGN KEY ("B") REFERENCES "MatchDate"("id") ON DELETE CASCADE ON UPDATE CASCADE;
