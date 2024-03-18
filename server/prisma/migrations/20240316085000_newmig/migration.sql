/*
  Warnings:

  - The primary key for the `Category` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Double` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Player` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - A unique constraint covering the columns `[level,type]` on the table `Category` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `level` to the `Category` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Game" DROP CONSTRAINT "Game_doubleId_fkey";

-- DropForeignKey
ALTER TABLE "Game" DROP CONSTRAINT "Game_playerId_fkey";

-- DropForeignKey
ALTER TABLE "Game" DROP CONSTRAINT "Game_winnerId_fkey";

-- DropForeignKey
ALTER TABLE "Match" DROP CONSTRAINT "Match_categoryId_fkey";

-- DropForeignKey
ALTER TABLE "Match" DROP CONSTRAINT "Match_doubleId_fkey";

-- DropForeignKey
ALTER TABLE "Set" DROP CONSTRAINT "Set_winnerId_fkey";

-- DropForeignKey
ALTER TABLE "_CategoryToDouble" DROP CONSTRAINT "_CategoryToDouble_A_fkey";

-- DropForeignKey
ALTER TABLE "_CategoryToDouble" DROP CONSTRAINT "_CategoryToDouble_B_fkey";

-- DropForeignKey
ALTER TABLE "_CategoryToPlayer" DROP CONSTRAINT "_CategoryToPlayer_A_fkey";

-- DropForeignKey
ALTER TABLE "_CategoryToPlayer" DROP CONSTRAINT "_CategoryToPlayer_B_fkey";

-- DropForeignKey
ALTER TABLE "_DoubleToEvent" DROP CONSTRAINT "_DoubleToEvent_A_fkey";

-- DropForeignKey
ALTER TABLE "_DoubleToMatch" DROP CONSTRAINT "_DoubleToMatch_A_fkey";

-- DropForeignKey
ALTER TABLE "_DoubleToPlayer" DROP CONSTRAINT "_DoubleToPlayer_A_fkey";

-- DropForeignKey
ALTER TABLE "_DoubleToPlayer" DROP CONSTRAINT "_DoubleToPlayer_B_fkey";

-- DropForeignKey
ALTER TABLE "_DoubleToSet" DROP CONSTRAINT "_DoubleToSet_A_fkey";

-- DropForeignKey
ALTER TABLE "_EventToPlayer" DROP CONSTRAINT "_EventToPlayer_B_fkey";

-- DropForeignKey
ALTER TABLE "_MatchToPlayer" DROP CONSTRAINT "_MatchToPlayer_B_fkey";

-- DropForeignKey
ALTER TABLE "_PlayerToSet" DROP CONSTRAINT "_PlayerToSet_A_fkey";

-- AlterTable
ALTER TABLE "Category" DROP CONSTRAINT "Category_pkey",
ADD COLUMN     "level" INTEGER NOT NULL,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Category_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Double" DROP CONSTRAINT "Double_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Double_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Double_id_seq";

-- AlterTable
ALTER TABLE "Game" ALTER COLUMN "playerId" SET DATA TYPE TEXT,
ALTER COLUMN "doubleId" SET DATA TYPE TEXT,
ALTER COLUMN "winnerId" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "Match" ALTER COLUMN "doubleId" SET DATA TYPE TEXT,
ALTER COLUMN "categoryId" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "Player" DROP CONSTRAINT "Player_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Player_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Player_id_seq";

-- AlterTable
ALTER TABLE "Set" ALTER COLUMN "winnerId" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_CategoryToDouble" ALTER COLUMN "B" SET DATA TYPE TEXT,
ALTER COLUMN "A" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_CategoryToPlayer" ALTER COLUMN "B" SET DATA TYPE TEXT,
ALTER COLUMN "A" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_DoubleToEvent" ALTER COLUMN "A" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_DoubleToMatch" ALTER COLUMN "A" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_DoubleToPlayer" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_DoubleToSet" ALTER COLUMN "A" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_EventToPlayer" ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_MatchToPlayer" ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_PlayerToSet" ALTER COLUMN "A" SET DATA TYPE TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "Category_level_type_key" ON "Category"("level", "type");

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "Category"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_doubleId_fkey" FOREIGN KEY ("doubleId") REFERENCES "Double"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Set" ADD CONSTRAINT "Set_winnerId_fkey" FOREIGN KEY ("winnerId") REFERENCES "Double"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Game" ADD CONSTRAINT "Game_playerId_fkey" FOREIGN KEY ("playerId") REFERENCES "Player"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Game" ADD CONSTRAINT "Game_doubleId_fkey" FOREIGN KEY ("doubleId") REFERENCES "Double"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Game" ADD CONSTRAINT "Game_winnerId_fkey" FOREIGN KEY ("winnerId") REFERENCES "Double"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_EventToPlayer" ADD CONSTRAINT "_EventToPlayer_B_fkey" FOREIGN KEY ("B") REFERENCES "Player"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CategoryToPlayer" ADD CONSTRAINT "_CategoryToPlayer_A_fkey" FOREIGN KEY ("A") REFERENCES "Category"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CategoryToPlayer" ADD CONSTRAINT "_CategoryToPlayer_B_fkey" FOREIGN KEY ("B") REFERENCES "Player"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CategoryToDouble" ADD CONSTRAINT "_CategoryToDouble_A_fkey" FOREIGN KEY ("A") REFERENCES "Category"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CategoryToDouble" ADD CONSTRAINT "_CategoryToDouble_B_fkey" FOREIGN KEY ("B") REFERENCES "Double"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_MatchToPlayer" ADD CONSTRAINT "_MatchToPlayer_B_fkey" FOREIGN KEY ("B") REFERENCES "Player"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_PlayerToSet" ADD CONSTRAINT "_PlayerToSet_A_fkey" FOREIGN KEY ("A") REFERENCES "Player"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToPlayer" ADD CONSTRAINT "_DoubleToPlayer_A_fkey" FOREIGN KEY ("A") REFERENCES "Double"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToPlayer" ADD CONSTRAINT "_DoubleToPlayer_B_fkey" FOREIGN KEY ("B") REFERENCES "Player"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToMatch" ADD CONSTRAINT "_DoubleToMatch_A_fkey" FOREIGN KEY ("A") REFERENCES "Double"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToEvent" ADD CONSTRAINT "_DoubleToEvent_A_fkey" FOREIGN KEY ("A") REFERENCES "Double"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToSet" ADD CONSTRAINT "_DoubleToSet_A_fkey" FOREIGN KEY ("A") REFERENCES "Double"("id") ON DELETE CASCADE ON UPDATE CASCADE;
