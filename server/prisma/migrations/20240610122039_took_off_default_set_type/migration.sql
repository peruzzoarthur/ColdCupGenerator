/*
  Warnings:

  - The values [BO5] on the enum `MatchType` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterEnum
BEGIN;
CREATE TYPE "MatchType_new" AS ENUM ('BO3', 'BO2_SUPERTIE', 'SUPERSET');
ALTER TABLE "Match" ALTER COLUMN "type" DROP DEFAULT;
ALTER TABLE "Match" ALTER COLUMN "type" TYPE "MatchType_new" USING ("type"::text::"MatchType_new");
ALTER TYPE "MatchType" RENAME TO "MatchType_old";
ALTER TYPE "MatchType_new" RENAME TO "MatchType";
DROP TYPE "MatchType_old";
ALTER TABLE "Match" ALTER COLUMN "type" SET DEFAULT 'SUPERSET';
COMMIT;

-- AlterEnum
-- This migration adds more than one value to an enum.
-- With PostgreSQL versions 11 and earlier, this is not possible
-- in a single migration. This can be worked around by creating
-- multiple migrations, each migration adding only one value to
-- the enum.


ALTER TYPE "SetType" ADD VALUE 'TIEBREAK';
ALTER TYPE "SetType" ADD VALUE 'SUPERTIEBREAK';

-- AlterTable
ALTER TABLE "Set" ALTER COLUMN "type" DROP DEFAULT;
