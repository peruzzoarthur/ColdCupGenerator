/*
  Warnings:

  - The primary key for the `EventDouble` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE "EventDouble" DROP CONSTRAINT "EventDouble_pkey",
ADD CONSTRAINT "EventDouble_pkey" PRIMARY KEY ("eventId", "doubleId", "categoryId");
