/*
  Warnings:

  - You are about to drop the `_DoubleToEvent` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_DoubleToEvent" DROP CONSTRAINT "_DoubleToEvent_A_fkey";

-- DropForeignKey
ALTER TABLE "_DoubleToEvent" DROP CONSTRAINT "_DoubleToEvent_B_fkey";

-- AlterTable
ALTER TABLE "Event" ADD COLUMN     "doubleId" TEXT;

-- DropTable
DROP TABLE "_DoubleToEvent";

-- AddForeignKey
ALTER TABLE "Event" ADD CONSTRAINT "Event_doubleId_fkey" FOREIGN KEY ("doubleId") REFERENCES "Double"("id") ON DELETE SET NULL ON UPDATE CASCADE;
