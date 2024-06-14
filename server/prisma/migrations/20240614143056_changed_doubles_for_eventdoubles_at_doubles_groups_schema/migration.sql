/*
  Warnings:

  - You are about to drop the `_DoubleToDoublesGroup` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_DoubleToDoublesGroup" DROP CONSTRAINT "_DoubleToDoublesGroup_A_fkey";

-- DropForeignKey
ALTER TABLE "_DoubleToDoublesGroup" DROP CONSTRAINT "_DoubleToDoublesGroup_B_fkey";

-- AlterTable
ALTER TABLE "DoublesGroup" ADD COLUMN     "doubleId" TEXT;

-- AlterTable
ALTER TABLE "EventDouble" ADD COLUMN     "doublesGroupId" TEXT;

-- DropTable
DROP TABLE "_DoubleToDoublesGroup";

-- AddForeignKey
ALTER TABLE "DoublesGroup" ADD CONSTRAINT "DoublesGroup_doubleId_fkey" FOREIGN KEY ("doubleId") REFERENCES "Double"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EventDouble" ADD CONSTRAINT "EventDouble_doublesGroupId_fkey" FOREIGN KEY ("doublesGroupId") REFERENCES "DoublesGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;
