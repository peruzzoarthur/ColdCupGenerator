/*
  Warnings:

  - You are about to drop the column `doubleId` on the `DoublesGroup` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "DoublesGroup" DROP CONSTRAINT "DoublesGroup_doubleId_fkey";

-- AlterTable
ALTER TABLE "DoublesGroup" DROP COLUMN "doubleId";
