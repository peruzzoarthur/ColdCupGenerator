/*
  Warnings:

  - You are about to drop the column `eventGroupMatchesId` on the `EventMatch` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "EventMatch" DROP CONSTRAINT "EventMatch_eventGroupMatchesId_fkey";

-- AlterTable
ALTER TABLE "EventMatch" DROP COLUMN "eventGroupMatchesId",
ADD COLUMN     "doublesGroupId" TEXT;

-- AddForeignKey
ALTER TABLE "EventMatch" ADD CONSTRAINT "EventMatch_doublesGroupId_fkey" FOREIGN KEY ("doublesGroupId") REFERENCES "DoublesGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;
