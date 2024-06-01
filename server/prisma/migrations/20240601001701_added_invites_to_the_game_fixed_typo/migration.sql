/*
  Warnings:

  - You are about to drop the column `type` on the `Invite` table. All the data in the column will be lost.
  - Added the required column `inviteType` to the `Invite` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Invite" DROP COLUMN "type",
ADD COLUMN     "inviteType" "InviteType" NOT NULL;
