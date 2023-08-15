/*
  Warnings:

  - The primary key for the `User` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE `User` DROP PRIMARY KEY,
    ADD COLUMN `blob` LONGBLOB NULL,
    ADD COLUMN `email` VARCHAR(191) NULL,
    ADD COLUMN `isAdmin` BOOLEAN NULL,
    ADD COLUMN `preference` JSON NULL,
    MODIFY `id` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`id`);
