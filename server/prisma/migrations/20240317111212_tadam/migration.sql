/*
  Warnings:

  - Added the required column `categoryId` to the `EventDouble` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "EventDouble" ADD COLUMN     "categoryId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "EventDouble" ADD CONSTRAINT "EventDouble_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "Category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
