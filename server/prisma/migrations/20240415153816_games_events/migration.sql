-- CreateTable
CREATE TABLE "_EventToGame" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_EventToGame_AB_unique" ON "_EventToGame"("A", "B");

-- CreateIndex
CREATE INDEX "_EventToGame_B_index" ON "_EventToGame"("B");

-- AddForeignKey
ALTER TABLE "_EventToGame" ADD CONSTRAINT "_EventToGame_A_fkey" FOREIGN KEY ("A") REFERENCES "Event"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_EventToGame" ADD CONSTRAINT "_EventToGame_B_fkey" FOREIGN KEY ("B") REFERENCES "Game"("id") ON DELETE CASCADE ON UPDATE CASCADE;
