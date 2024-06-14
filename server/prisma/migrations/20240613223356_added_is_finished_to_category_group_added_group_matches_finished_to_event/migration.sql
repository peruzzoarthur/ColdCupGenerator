-- AlterTable
ALTER TABLE "CategoryGroup" ADD COLUMN     "isFinished" BOOLEAN NOT NULL DEFAULT false;

-- AlterTable
ALTER TABLE "Event" ADD COLUMN     "groupMatchesFinish" BOOLEAN NOT NULL DEFAULT false;
