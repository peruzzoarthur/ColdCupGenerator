/*
  Warnings:

  - A unique constraint covering the columns `[categoryGroupId,key]` on the table `DoublesGroup` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "DoublesGroup_categoryGroupId_key_key" ON "DoublesGroup"("categoryGroupId", "key");
