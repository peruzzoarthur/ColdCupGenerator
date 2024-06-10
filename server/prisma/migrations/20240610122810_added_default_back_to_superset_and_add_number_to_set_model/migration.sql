/*
  Warnings:

  - Added the required column `number` to the `Set` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Set" ADD COLUMN     "number" INTEGER NOT NULL,
ALTER COLUMN "type" SET DEFAULT 'SUPER';
