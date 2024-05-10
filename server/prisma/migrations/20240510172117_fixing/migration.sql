-- DropForeignKey
ALTER TABLE "EventDouble" DROP CONSTRAINT "EventDouble_atRestId_fkey";

-- AlterTable
ALTER TABLE "EventDouble" ALTER COLUMN "atRestId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "EventDouble" ADD CONSTRAINT "EventDouble_atRestId_fkey" FOREIGN KEY ("atRestId") REFERENCES "MatchDate"("id") ON DELETE SET NULL ON UPDATE CASCADE;
