/*
  Warnings:

  - You are about to drop the column `doubleId` on the `Event` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Event" DROP CONSTRAINT "Event_doubleId_fkey";

-- AlterTable
ALTER TABLE "Event" DROP COLUMN "doubleId";

-- CreateTable
CREATE TABLE "CategoryGroup" (
    "id" TEXT NOT NULL,
    "categoryId" TEXT NOT NULL,
    "eventId" TEXT,

    CONSTRAINT "CategoryGroup_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DoublesGroup" (
    "id" TEXT NOT NULL,
    "key" TEXT NOT NULL,
    "categoryGroupId" TEXT,

    CONSTRAINT "DoublesGroup_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_DoubleToDoublesGroup" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_DoubleToDoublesGroup_AB_unique" ON "_DoubleToDoublesGroup"("A", "B");

-- CreateIndex
CREATE INDEX "_DoubleToDoublesGroup_B_index" ON "_DoubleToDoublesGroup"("B");

-- AddForeignKey
ALTER TABLE "CategoryGroup" ADD CONSTRAINT "CategoryGroup_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "Category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CategoryGroup" ADD CONSTRAINT "CategoryGroup_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "Event"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "DoublesGroup" ADD CONSTRAINT "DoublesGroup_categoryGroupId_fkey" FOREIGN KEY ("categoryGroupId") REFERENCES "CategoryGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToDoublesGroup" ADD CONSTRAINT "_DoubleToDoublesGroup_A_fkey" FOREIGN KEY ("A") REFERENCES "Double"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToDoublesGroup" ADD CONSTRAINT "_DoubleToDoublesGroup_B_fkey" FOREIGN KEY ("B") REFERENCES "DoublesGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;
