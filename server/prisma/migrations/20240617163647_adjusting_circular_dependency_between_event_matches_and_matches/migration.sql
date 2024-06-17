/*
  Warnings:

  - The primary key for the `EventMatch` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `EventMatch` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "EventMatch" DROP CONSTRAINT "EventMatch_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "EventMatch_pkey" PRIMARY KEY ("eventId", "matchId");
