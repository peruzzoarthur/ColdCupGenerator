/*
  Warnings:

  - A unique constraint covering the columns `[name,placeId]` on the table `Court` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "Court_name_placeId_key" ON "Court"("name", "placeId");
