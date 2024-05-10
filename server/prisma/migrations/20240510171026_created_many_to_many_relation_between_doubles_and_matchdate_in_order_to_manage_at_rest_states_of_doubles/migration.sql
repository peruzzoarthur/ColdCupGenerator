/*
  Warnings:

  - You are about to drop the `_DoubleToMatchDate` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `atRestId` to the `EventDouble` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "_DoubleToMatchDate" DROP CONSTRAINT "_DoubleToMatchDate_A_fkey";

-- DropForeignKey
ALTER TABLE "_DoubleToMatchDate" DROP CONSTRAINT "_DoubleToMatchDate_B_fkey";

-- AlterTable
ALTER TABLE "EventDouble" ADD COLUMN     "atRestId" TEXT NOT NULL;

-- DropTable
DROP TABLE "_DoubleToMatchDate";

-- AddForeignKey
ALTER TABLE "EventDouble" ADD CONSTRAINT "EventDouble_atRestId_fkey" FOREIGN KEY ("atRestId") REFERENCES "MatchDate"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
