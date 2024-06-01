-- CreateEnum
CREATE TYPE "InviteType" AS ENUM ('FRIENDS', 'EVENT', 'DOUBLES', 'MATCH');

-- CreateTable
CREATE TABLE "Invite" (
    "id" TEXT NOT NULL,
    "type" "InviteType" NOT NULL,
    "eventId" TEXT,
    "matchId" TEXT,

    CONSTRAINT "Invite_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_InviteToPlayer" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Invite_eventId_key" ON "Invite"("eventId");

-- CreateIndex
CREATE UNIQUE INDEX "Invite_matchId_key" ON "Invite"("matchId");

-- CreateIndex
CREATE UNIQUE INDEX "_InviteToPlayer_AB_unique" ON "_InviteToPlayer"("A", "B");

-- CreateIndex
CREATE INDEX "_InviteToPlayer_B_index" ON "_InviteToPlayer"("B");

-- AddForeignKey
ALTER TABLE "Invite" ADD CONSTRAINT "Invite_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "Event"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Invite" ADD CONSTRAINT "Invite_matchId_fkey" FOREIGN KEY ("matchId") REFERENCES "Match"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_InviteToPlayer" ADD CONSTRAINT "_InviteToPlayer_A_fkey" FOREIGN KEY ("A") REFERENCES "Invite"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_InviteToPlayer" ADD CONSTRAINT "_InviteToPlayer_B_fkey" FOREIGN KEY ("B") REFERENCES "Player"("id") ON DELETE CASCADE ON UPDATE CASCADE;
