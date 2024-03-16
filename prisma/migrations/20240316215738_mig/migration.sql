/*
  Warnings:

  - You are about to drop the `_CategoryToDouble` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `categoryId` to the `Double` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "_CategoryToDouble" DROP CONSTRAINT "_CategoryToDouble_A_fkey";

-- DropForeignKey
ALTER TABLE "_CategoryToDouble" DROP CONSTRAINT "_CategoryToDouble_B_fkey";

-- AlterTable
ALTER TABLE "Double" ADD COLUMN     "categoryId" TEXT NOT NULL;

-- DropTable
DROP TABLE "_CategoryToDouble";

-- AddForeignKey
ALTER TABLE "Double" ADD CONSTRAINT "Double_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "Category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
