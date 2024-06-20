-- AlterTable
ALTER TABLE "CategoryGroup" ADD COLUMN     "categoryFinished" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "firstPlaceId" TEXT,
ADD COLUMN     "secondPlaceId" TEXT;

-- AddForeignKey
ALTER TABLE "CategoryGroup" ADD CONSTRAINT "CategoryGroup_firstPlaceId_fkey" FOREIGN KEY ("firstPlaceId") REFERENCES "Double"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CategoryGroup" ADD CONSTRAINT "CategoryGroup_secondPlaceId_fkey" FOREIGN KEY ("secondPlaceId") REFERENCES "Double"("id") ON DELETE SET NULL ON UPDATE CASCADE;
