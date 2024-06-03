/*
  Warnings:

  - You are about to drop the `_CategoryToPlayer` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `categoryId` to the `Player` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "_CategoryToPlayer" DROP CONSTRAINT "_CategoryToPlayer_A_fkey";

-- DropForeignKey
ALTER TABLE "_CategoryToPlayer" DROP CONSTRAINT "_CategoryToPlayer_B_fkey";

-- AlterTable
ALTER TABLE "Player" ADD COLUMN     "categoryId" TEXT NOT NULL;

-- DropTable
DROP TABLE "_CategoryToPlayer";

-- AddForeignKey
ALTER TABLE "Player" ADD CONSTRAINT "Player_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "Category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
