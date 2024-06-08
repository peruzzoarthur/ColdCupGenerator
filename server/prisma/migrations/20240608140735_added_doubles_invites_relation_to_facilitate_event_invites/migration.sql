-- AlterTable
ALTER TABLE "Invite" ADD COLUMN     "doublesId" TEXT;

-- AddForeignKey
ALTER TABLE "Invite" ADD CONSTRAINT "Invite_doublesId_fkey" FOREIGN KEY ("doublesId") REFERENCES "Double"("id") ON DELETE SET NULL ON UPDATE CASCADE;
