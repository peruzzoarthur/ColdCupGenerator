/*
  Warnings:

  - Added the required column `finish` to the `MatchDate` table without a default value. This is not possible if the table is not empty.
  - Added the required column `start` to the `MatchDate` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "MatchDate" ADD COLUMN     "finish" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "start" TIMESTAMP(3) NOT NULL;
