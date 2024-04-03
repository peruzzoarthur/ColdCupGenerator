/*
  Warnings:

  - You are about to drop the column `doublesOneGames` on the `Set` table. All the data in the column will be lost.
  - You are about to drop the column `doublesTwoGames` on the `Set` table. All the data in the column will be lost.
  - You are about to drop the column `setId` on the `Set` table. All the data in the column will be lost.
  - You are about to drop the column `winnerId` on the `Set` table. All the data in the column will be lost.
  - You are about to drop the `_PlayerToSet` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Set" DROP CONSTRAINT "Set_setId_fkey";

-- DropForeignKey
ALTER TABLE "Set" DROP CONSTRAINT "Set_winnerId_fkey";

-- DropForeignKey
ALTER TABLE "_PlayerToSet" DROP CONSTRAINT "_PlayerToSet_A_fkey";

-- DropForeignKey
ALTER TABLE "_PlayerToSet" DROP CONSTRAINT "_PlayerToSet_B_fkey";

-- AlterTable
ALTER TABLE "Set" DROP COLUMN "doublesOneGames",
DROP COLUMN "doublesTwoGames",
DROP COLUMN "setId",
DROP COLUMN "winnerId",
ADD COLUMN     "isFinished" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "setWinnerId" TEXT,
ALTER COLUMN "type" SET DEFAULT 'SUPER';

-- DropTable
DROP TABLE "_PlayerToSet";

-- CreateTable
CREATE TABLE "Game" (
    "id" TEXT NOT NULL,
    "setId" TEXT NOT NULL,
    "winnerId" TEXT,

    CONSTRAINT "Game_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Set" ADD CONSTRAINT "Set_setWinnerId_fkey" FOREIGN KEY ("setWinnerId") REFERENCES "Double"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Set" ADD CONSTRAINT "Set_id_fkey" FOREIGN KEY ("id") REFERENCES "Match"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Game" ADD CONSTRAINT "Game_setId_fkey" FOREIGN KEY ("setId") REFERENCES "Set"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Game" ADD CONSTRAINT "Game_winnerId_fkey" FOREIGN KEY ("winnerId") REFERENCES "Double"("id") ON DELETE SET NULL ON UPDATE CASCADE;
