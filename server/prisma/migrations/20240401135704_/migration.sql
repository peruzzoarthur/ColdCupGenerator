/*
  Warnings:

  - You are about to drop the column `doubleId` on the `Match` table. All the data in the column will be lost.
  - You are about to drop the column `result` on the `Match` table. All the data in the column will be lost.
  - You are about to drop the `Game` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `doublesOneGames` to the `Set` table without a default value. This is not possible if the table is not empty.
  - Added the required column `doublesTwoGames` to the `Set` table without a default value. This is not possible if the table is not empty.
  - Added the required column `setId` to the `Set` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "MatchType" AS ENUM ('BO3', 'BO5', 'SUPERSET');

-- DropForeignKey
ALTER TABLE "Game" DROP CONSTRAINT "Game_doubleId_fkey";

-- DropForeignKey
ALTER TABLE "Game" DROP CONSTRAINT "Game_playerId_fkey";

-- DropForeignKey
ALTER TABLE "Game" DROP CONSTRAINT "Game_setId_fkey";

-- DropForeignKey
ALTER TABLE "Game" DROP CONSTRAINT "Game_winnerId_fkey";

-- DropForeignKey
ALTER TABLE "Match" DROP CONSTRAINT "Match_doubleId_fkey";

-- AlterTable
ALTER TABLE "Event" ADD COLUMN     "finishDate" TIMESTAMP(3),
ADD COLUMN     "startDate" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "Match" DROP COLUMN "doubleId",
DROP COLUMN "result",
ADD COLUMN     "type" "MatchType" NOT NULL DEFAULT 'SUPERSET',
ADD COLUMN     "winnerDoublesId" TEXT;

-- AlterTable
ALTER TABLE "Set" ADD COLUMN     "doublesOneGames" INTEGER NOT NULL,
ADD COLUMN     "doublesTwoGames" INTEGER NOT NULL,
ADD COLUMN     "setId" TEXT NOT NULL;

-- DropTable
DROP TABLE "Game";

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_winnerDoublesId_fkey" FOREIGN KEY ("winnerDoublesId") REFERENCES "Double"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Set" ADD CONSTRAINT "Set_setId_fkey" FOREIGN KEY ("setId") REFERENCES "Match"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
