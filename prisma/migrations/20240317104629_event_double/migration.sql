/*
  Warnings:

  - You are about to drop the `_DoubleToEvent` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_DoubleToEvent" DROP CONSTRAINT "_DoubleToEvent_A_fkey";

-- DropForeignKey
ALTER TABLE "_DoubleToEvent" DROP CONSTRAINT "_DoubleToEvent_B_fkey";

-- DropTable
DROP TABLE "_DoubleToEvent";

-- CreateTable
CREATE TABLE "EventDouble" (
    "eventId" TEXT NOT NULL,
    "doubleId" TEXT NOT NULL,

    CONSTRAINT "EventDouble_pkey" PRIMARY KEY ("eventId","doubleId")
);

-- AddForeignKey
ALTER TABLE "EventDouble" ADD CONSTRAINT "EventDouble_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "Event"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EventDouble" ADD CONSTRAINT "EventDouble_doubleId_fkey" FOREIGN KEY ("doubleId") REFERENCES "Double"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
