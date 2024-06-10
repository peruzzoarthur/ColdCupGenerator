/*
  Warnings:

  - Added the required column `matchId` to the `Set` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Set" DROP CONSTRAINT "Set_id_fkey";

-- AlterTable
ALTER TABLE "Set" ADD COLUMN     "matchId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "Set" ADD CONSTRAINT "Set_matchId_fkey" FOREIGN KEY ("matchId") REFERENCES "Match"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
