-- CreateTable
CREATE TABLE "MatchDate" (
    "id" TEXT NOT NULL,
    "eventId" TEXT NOT NULL,
    "matchId" TEXT NOT NULL,

    CONSTRAINT "MatchDate_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "MatchDate_matchId_key" ON "MatchDate"("matchId");

-- CreateIndex
CREATE UNIQUE INDEX "MatchDate_matchId_eventId_key" ON "MatchDate"("matchId", "eventId");

-- AddForeignKey
ALTER TABLE "MatchDate" ADD CONSTRAINT "MatchDate_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "Event"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MatchDate" ADD CONSTRAINT "MatchDate_matchId_fkey" FOREIGN KEY ("matchId") REFERENCES "Match"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
