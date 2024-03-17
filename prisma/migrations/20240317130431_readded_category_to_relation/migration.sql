/*
  Warnings:

  - The primary key for the `EventDouble` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - Added the required column `categoryId` to the `EventDouble` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "EventDouble" DROP CONSTRAINT "EventDouble_pkey",
ADD COLUMN     "categoryId" TEXT NOT NULL,
ADD CONSTRAINT "EventDouble_pkey" PRIMARY KEY ("eventId", "doubleId", "categoryId");

-- AddForeignKey
ALTER TABLE "EventDouble" ADD CONSTRAINT "EventDouble_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "Category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
