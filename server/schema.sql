CREATE DATABASE chat;

USE chat;

  /* Describe your table here.*/
DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `m_id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL COMMENT 'Message ID',
  `messages` VARCHAR(240) NULL DEFAULT NULL COMMENT 'Messages',
  `room_id_rooms` INTEGER NULL DEFAULT NULL COMMENT 'Room Id',
  `user_id_users` INTEGER NULL DEFAULT NULL COMMENT 'User Id',
  PRIMARY KEY (`m_id`)
);

/* Create other tables and define schemas for them here! */
DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
  `room_id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL COMMENT 'Room Id',
  `room_name` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`room_id`)
);

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL COMMENT 'User Id',
  `user_name` VARCHAR(30) NULL DEFAULT NULL COMMENT 'User name',
  PRIMARY KEY (`user_id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `messages` ADD FOREIGN KEY (room_id_rooms) REFERENCES `rooms` (`room_id`);
ALTER TABLE `messages` ADD FOREIGN KEY (user_id_users) REFERENCES `users` (`user_id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `messages` (`m_id`,`messages`,`room_id_rooms`,`user_id_users`) VALUES
-- ('','','','');
-- INSERT INTO `rooms` (`room_id`,`room_name`) VALUES
-- ('','');
-- INSERT INTO `users` (`user_id`,`user_name`) VALUES
-- ('','');


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

