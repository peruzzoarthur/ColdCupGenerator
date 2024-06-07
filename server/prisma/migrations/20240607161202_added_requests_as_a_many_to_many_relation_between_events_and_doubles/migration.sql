-- CreateTable
CREATE TABLE "_DoubleToEvent" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_DoubleToEvent_AB_unique" ON "_DoubleToEvent"("A", "B");

-- CreateIndex
CREATE INDEX "_DoubleToEvent_B_index" ON "_DoubleToEvent"("B");

-- AddForeignKey
ALTER TABLE "_DoubleToEvent" ADD CONSTRAINT "_DoubleToEvent_A_fkey" FOREIGN KEY ("A") REFERENCES "Double"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DoubleToEvent" ADD CONSTRAINT "_DoubleToEvent_B_fkey" FOREIGN KEY ("B") REFERENCES "Event"("id") ON DELETE CASCADE ON UPDATE CASCADE;
