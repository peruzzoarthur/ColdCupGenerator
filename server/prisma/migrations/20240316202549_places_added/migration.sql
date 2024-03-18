-- CreateTable
CREATE TABLE "Place" (
    "id" TEXT NOT NULL,
    "address" TEXT,

    CONSTRAINT "Place_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_EventToPlace" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_EventToPlace_AB_unique" ON "_EventToPlace"("A", "B");

-- CreateIndex
CREATE INDEX "_EventToPlace_B_index" ON "_EventToPlace"("B");

-- AddForeignKey
ALTER TABLE "_EventToPlace" ADD CONSTRAINT "_EventToPlace_A_fkey" FOREIGN KEY ("A") REFERENCES "Event"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_EventToPlace" ADD CONSTRAINT "_EventToPlace_B_fkey" FOREIGN KEY ("B") REFERENCES "Place"("id") ON DELETE CASCADE ON UPDATE CASCADE;
