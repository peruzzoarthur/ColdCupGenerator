/*
  Warnings:

  - You are about to drop the column `matchDateId` on the `Match` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "Match_matchDateId_key";

-- AlterTable
ALTER TABLE "Match" DROP COLUMN "matchDateId";
