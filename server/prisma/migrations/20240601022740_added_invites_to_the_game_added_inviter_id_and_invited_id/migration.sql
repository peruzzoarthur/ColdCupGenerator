/*
  Warnings:

  - A unique constraint covering the columns `[inviterId,invitedId,inviteType]` on the table `Invite` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `invitedId` to the `Invite` table without a default value. This is not possible if the table is not empty.
  - Added the required column `inviterId` to the `Invite` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Invite" ADD COLUMN     "invitedId" TEXT NOT NULL,
ADD COLUMN     "inviterId" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Invite_inviterId_invitedId_inviteType_key" ON "Invite"("inviterId", "invitedId", "inviteType");
