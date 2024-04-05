-- CreateTable
CREATE TABLE "_GamesPlayed" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_GamesPlayed_AB_unique" ON "_GamesPlayed"("A", "B");

-- CreateIndex
CREATE INDEX "_GamesPlayed_B_index" ON "_GamesPlayed"("B");

-- AddForeignKey
ALTER TABLE "_GamesPlayed" ADD CONSTRAINT "_GamesPlayed_A_fkey" FOREIGN KEY ("A") REFERENCES "Double"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_GamesPlayed" ADD CONSTRAINT "_GamesPlayed_B_fkey" FOREIGN KEY ("B") REFERENCES "Game"("id") ON DELETE CASCADE ON UPDATE CASCADE;
