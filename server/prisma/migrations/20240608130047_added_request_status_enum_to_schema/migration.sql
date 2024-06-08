-- CreateEnum
CREATE TYPE "RequestStatus" AS ENUM ('PENDING', 'APPROVED');

-- AlterTable
ALTER TABLE "EventRequest" ADD COLUMN     "status" "RequestStatus" NOT NULL DEFAULT 'PENDING';
