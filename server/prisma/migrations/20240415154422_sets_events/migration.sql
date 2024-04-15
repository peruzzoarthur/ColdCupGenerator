-- CreateTable
CREATE TABLE "_EventToSet" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_EventToSet_AB_unique" ON "_EventToSet"("A", "B");

-- CreateIndex
CREATE INDEX "_EventToSet_B_index" ON "_EventToSet"("B");

-- AddForeignKey
ALTER TABLE "_EventToSet" ADD CONSTRAINT "_EventToSet_A_fkey" FOREIGN KEY ("A") REFERENCES "Event"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_EventToSet" ADD CONSTRAINT "_EventToSet_B_fkey" FOREIGN KEY ("B") REFERENCES "Set"("id") ON DELETE CASCADE ON UPDATE CASCADE;
