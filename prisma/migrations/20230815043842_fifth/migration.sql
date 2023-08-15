/*
  Warnings:

  - You are about to drop the column `userId` on the `UserPreference` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[userPreferenceId]` on the table `User` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX `UserPreference_userId_key` ON `UserPreference`;

-- AlterTable
ALTER TABLE `User` ADD COLUMN `userPreferenceId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `UserPreference` DROP COLUMN `userId`;

-- CreateIndex
CREATE UNIQUE INDEX `User_userPreferenceId_key` ON `User`(`userPreferenceId`);
