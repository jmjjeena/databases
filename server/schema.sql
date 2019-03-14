DROP DATABASE chat;
CREATE DATABASE chat;

USE chat;

  /* Describe your table here.*/
DROP TABLE IF EXISTS `users`;
		
CREATE TABLE `users` (
  `id` INTEGER NOT NULL AUTO_INCREMENT COMMENT 'User Id',
  `user_name` VARCHAR(30) NULL DEFAULT NULL COMMENT 'User name',
  PRIMARY KEY (`id`)
);

/* Create other tables and define schemas for them here! */
DROP TABLE IF EXISTS `rooms`;
		
CREATE TABLE `rooms` (
  `id` INTEGER NOT NULL AUTO_INCREMENT COMMENT 'Room Id',
  `room_name` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `messages`;
		
CREATE TABLE `messages` (
  `id` INTEGER NOT NULL AUTO_INCREMENT COMMENT 'Message ID',
  `messages` VARCHAR(240) NULL DEFAULT NULL COMMENT 'Messages',
  `id_rooms` INTEGER NULL DEFAULT NULL COMMENT 'Room Id',
  `id_users` INTEGER NULL DEFAULT NULL COMMENT 'User Id',
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `messages` ADD FOREIGN KEY (id_rooms) REFERENCES `rooms` (`id`);
ALTER TABLE `messages` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `messages` (`id`,`messages`,`id_rooms`,`id_users`) VALUES
-- ('','','','');
-- INSERT INTO `rooms` (`id`,`room_name`) VALUES
-- ('','');
-- INSERT INTO `users` (`id`,`user_name`) VALUES
-- ('','');