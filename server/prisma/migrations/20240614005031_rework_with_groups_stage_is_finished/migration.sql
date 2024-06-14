/*
  Warnings:

  - You are about to drop the column `isFinished` on the `CategoryGroup` table. All the data in the column will be lost.
  - You are about to drop the column `groupMatchesFinish` on the `Event` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "CategoryGroup" DROP COLUMN "isFinished",
ADD COLUMN     "groupsStageFinished" BOOLEAN NOT NULL DEFAULT false;

-- AlterTable
ALTER TABLE "Event" DROP COLUMN "groupMatchesFinish",
ADD COLUMN     "isFinished" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "isGroupMatchesFinished" BOOLEAN NOT NULL DEFAULT false;
