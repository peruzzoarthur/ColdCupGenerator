-- AlterTable
ALTER TABLE "EventMatch" ADD COLUMN     "eventGroupMatchesId" TEXT;

-- AddForeignKey
ALTER TABLE "EventMatch" ADD CONSTRAINT "EventMatch_eventGroupMatchesId_fkey" FOREIGN KEY ("eventGroupMatchesId") REFERENCES "DoublesGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;
