/*
  Warnings:

  - A unique constraint covering the columns `[eventId,categoryId]` on the table `CategoryGroup` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "CategoryGroup_eventId_categoryId_key" ON "CategoryGroup"("eventId", "categoryId");
