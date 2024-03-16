-- CreateEnum
CREATE TYPE "Role" AS ENUM ('USER', 'ADMIN');

-- CreateEnum
CREATE TYPE "CatType" AS ENUM ('ALL', 'F', 'M');

-- CreateEnum
CREATE TYPE "PlayerPosition" AS ENUM ('REVES', 'DRIVE');

-- CreateEnum
CREATE TYPE "SetType" AS ENUM ('NORMAL', 'SUPER');

-- CreateTable
CREATE TABLE "Event" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "isActive" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "Event_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Category" (
    "id" SERIAL NOT NULL,
    "type" "CatType" NOT NULL,
    "eventId" INTEGER NOT NULL,

    CONSTRAINT "Category_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Match" (
    "id" SERIAL NOT NULL,
    "isFinished" BOOLEAN NOT NULL DEFAULT false,
    "categoryId" INTEGER,
    "doubleId" INTEGER NOT NULL,
    "result" TEXT NOT NULL,
    "eventId" INTEGER NOT NULL,
    "date" TIMESTAMP(3),

    CONSTRAINT "Match_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Set" (
    "id" SERIAL NOT NULL,
    "type" "SetType" NOT NULL DEFAULT 'NORMAL',
    "winnerId" INTEGER NOT NULL,
    "result" TEXT NOT NULL,
    "doubleId" INTEGER NOT NULL,

    CONSTRAINT "Set_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Game" (
    "id" SERIAL NOT NULL,
    "setId" INTEGER NOT NULL,
    "playerId" INTEGER,
    "doubleId" INTEGER,
    "winnerId" INTEGER NOT NULL,

    CONSTRAINT "Game_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Player" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "firstName" TEXT,
    "lastName" TEXT,
    "role" "Role" NOT NULL DEFAULT 'USER',
    "position" "PlayerPosition",

    CONSTRAINT "Player_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Double" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "Double_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_EventToPlayer" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_CategoryToPlayer" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_CategoryToDouble" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_MatchToPlayer" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_PlayerToSet" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_DoubleToPlayer" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_DoubleToMatch" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_DoubleToEvent" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_DoubleToSet" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_EventToPlayer_AB_unique" ON "_EventToPlayer"("A", "B");

-- CreateIndex
CREATE INDEX "_EventToPlayer_B_index" ON "_EventToPlayer"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_CategoryToPlayer_AB_unique" ON "_CategoryToPlayer"("A", "B");

-- CreateIndex
CREATE INDEX "_CategoryToPlayer_B_index" ON "_CategoryToPlayer"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_CategoryToDouble_AB_unique" ON "_CategoryToDouble"("A", "B");

-- CreateIndex
CREATE INDEX "_CategoryToDouble_B_index" ON "_CategoryToDouble"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_MatchToPlayer_AB_unique" ON "_MatchToPlayer"("A", "B");

-- CreateIndex
CREATE INDEX "_MatchToPlayer_B_index" ON "_MatchToPlayer"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_PlayerToSet_AB_unique" ON "_PlayerToSet"("A", "B");

-- CreateIndex
CREATE INDEX "_PlayerToSet_B_index" ON "_PlayerToSet"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_DoubleToPlayer_AB_unique" ON "_DoubleToPlayer"("A", "B");

-- CreateIndex
CREATE INDEX "_DoubleToPlayer_B_index" ON "_DoubleToPlayer"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_DoubleToMatch_AB_unique" ON "_DoubleToMatch"("A", "B");

-- CreateIndex
CREATE INDEX "_DoubleToMatch_B_index" ON "_DoubleToMatch"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_DoubleToEvent_AB_unique" ON "_DoubleToEvent"("A", "B");

-- CreateIndex
CREATE INDEX "_DoubleToEvent_B_index" ON "_DoubleToEvent"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_DoubleToSet_AB_unique" ON "_DoubleToSet"("A", "B");

-- CreateIndex
CREATE INDEX "_DoubleToSet_B_index" ON "_DoubleToSet"("B");

-- AddForeignKey
ALTER TABLE "Category" ADD CONSTRAINT "Category_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "Event"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "Category"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_doubleId_fkey" FOREIGN KEY ("doubleId") REFERENCES "Double"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "Event"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Set" ADD CONSTRAINT "Set_doubleId_fkey" FOREIGN KEY ("doubleId") REFERENCES "Double"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Game" ADD CONSTRAINT "Game_setId_fkey" FOREIGN KEY ("setId") REFERENCES "Set"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Game" ADD CONSTRAINT "Game_playerId_fkey" FOREIGN KEY ("playerId") REFERENCES "Player"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Game" ADD CONSTRAINT "Game_doubleId_fkey" FOREIGN KEY ("doubleId") REFERENCES "Double"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Game" ADD CONSTRAINT "Game_winnerId_fkey" FOREIGN KEY ("winnerId") REFERENCES "Double"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_EventToPlayer" ADD CONSTRAINT "_EventToPlayer_A_fkey" FOREIGN KEY ("A") REFERENCES "Event"("id") ON DELETE CASCADE ON UPDATE CASCADE;

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
ALTER TABLE "_MatchToPlayer" ADD CONSTRAINT "_MatchToPlayer_A_fkey" FOREIGN KEY ("A") REFERENCES "Match"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_MatchToPlayer" ADD CONSTRAINT "_MatchToPlayer_B_fkey" FOREIGN KEY ("B") REFERENCES "Player"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_PlayerToSet" ADD CONSTRAINT "_PlayerToSet_A_fkey" FOREIGN KEY ("A") REFERENCES "Player"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_PlayerToSet" ADD CONSTRAINT "_PlayerToSet_B_fkey" FOREIGN KEY ("B") REFERENCES "Set"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToPlayer" ADD CONSTRAINT "_DoubleToPlayer_A_fkey" FOREIGN KEY ("A") REFERENCES "Double"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToPlayer" ADD CONSTRAINT "_DoubleToPlayer_B_fkey" FOREIGN KEY ("B") REFERENCES "Player"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToMatch" ADD CONSTRAINT "_DoubleToMatch_A_fkey" FOREIGN KEY ("A") REFERENCES "Double"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToMatch" ADD CONSTRAINT "_DoubleToMatch_B_fkey" FOREIGN KEY ("B") REFERENCES "Match"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToEvent" ADD CONSTRAINT "_DoubleToEvent_A_fkey" FOREIGN KEY ("A") REFERENCES "Double"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToEvent" ADD CONSTRAINT "_DoubleToEvent_B_fkey" FOREIGN KEY ("B") REFERENCES "Event"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToSet" ADD CONSTRAINT "_DoubleToSet_A_fkey" FOREIGN KEY ("A") REFERENCES "Double"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToSet" ADD CONSTRAINT "_DoubleToSet_B_fkey" FOREIGN KEY ("B") REFERENCES "Set"("id") ON DELETE CASCADE ON UPDATE CASCADE;
