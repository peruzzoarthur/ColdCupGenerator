/*
  Warnings:

  - The primary key for the `Category` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `categoryId` column on the `Match` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - Changed the type of `id` on the `Category` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `A` on the `_CategoryToDouble` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `A` on the `_CategoryToPlayer` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- DropForeignKey
ALTER TABLE "Match" DROP CONSTRAINT "Match_categoryId_fkey";

-- DropForeignKey
ALTER TABLE "_CategoryToDouble" DROP CONSTRAINT "_CategoryToDouble_A_fkey";

-- DropForeignKey
ALTER TABLE "_CategoryToPlayer" DROP CONSTRAINT "_CategoryToPlayer_A_fkey";

-- AlterTable
ALTER TABLE "Category" DROP CONSTRAINT "Category_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" INTEGER NOT NULL,
ADD CONSTRAINT "Category_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Match" DROP COLUMN "categoryId",
ADD COLUMN     "categoryId" INTEGER;

-- AlterTable
ALTER TABLE "_CategoryToDouble" DROP COLUMN "A",
ADD COLUMN     "A" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "_CategoryToPlayer" DROP COLUMN "A",
ADD COLUMN     "A" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "_CategoryToDouble_AB_unique" ON "_CategoryToDouble"("A", "B");

-- CreateIndex
CREATE UNIQUE INDEX "_CategoryToPlayer_AB_unique" ON "_CategoryToPlayer"("A", "B");

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "Category"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CategoryToPlayer" ADD CONSTRAINT "_CategoryToPlayer_A_fkey" FOREIGN KEY ("A") REFERENCES "Category"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CategoryToDouble" ADD CONSTRAINT "_CategoryToDouble_A_fkey" FOREIGN KEY ("A") REFERENCES "Category"("id") ON DELETE CASCADE ON UPDATE CASCADE;
