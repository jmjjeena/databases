CREATE DATABASE chat;

USE chat;

  /* Describe your table here.*/
CREATE TABLE `messages` (
  `m_id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL COMMENT 'Message ID',
  `messages` VARCHAR(240) NULL DEFAULT NULL COMMENT 'Messages',
  `room_id_rooms` INTEGER NULL DEFAULT NULL COMMENT 'Room Id',
  `user_id_users` INTEGER NULL DEFAULT NULL COMMENT 'User Id',
  PRIMARY KEY (`m_id`)
);

/* Create other tables and define schemas for them here! */

CREATE TABLE `rooms` (
  `room_id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL COMMENT 'Room Id',
  `room_name` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`room_id`)
);

CREATE TABLE `users` (
  `user_id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL COMMENT 'User Id',
  `user_name` VARCHAR(30) NULL DEFAULT NULL COMMENT 'User name',
  PRIMARY KEY (`user_id`)
);


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

