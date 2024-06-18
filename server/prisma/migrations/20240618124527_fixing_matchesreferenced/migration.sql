-- AlterTable
ALTER TABLE "MatchesReference" ADD COLUMN     "categoryGroupId" TEXT;

-- AddForeignKey
ALTER TABLE "MatchesReference" ADD CONSTRAINT "MatchesReference_categoryGroupId_fkey" FOREIGN KEY ("categoryGroupId") REFERENCES "CategoryGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;
