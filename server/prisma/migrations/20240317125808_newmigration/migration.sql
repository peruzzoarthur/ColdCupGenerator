/*
  Warnings:

  - The primary key for the `EventDouble` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `categoryId` on the `EventDouble` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "EventDouble" DROP CONSTRAINT "EventDouble_categoryId_fkey";

-- AlterTable
ALTER TABLE "EventDouble" DROP CONSTRAINT "EventDouble_pkey",
DROP COLUMN "categoryId",
ADD CONSTRAINT "EventDouble_pkey" PRIMARY KEY ("eventId", "doubleId");
