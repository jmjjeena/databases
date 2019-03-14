DROP DATABASE chat;
CREATE DATABASE chat;

USE chat;

  /* Describe your table here.*/
DROP TABLE IF EXISTS `users`;
		
CREATE TABLE `users` (
  `id` INTEGER NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `user_name` VARCHAR(30) NULL COMMENT 'User name',
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `rooms`;
		
CREATE TABLE `rooms` (
  `id` INTEGER NOT NULL AUTO_INCREMENT COMMENT 'Room ID',
  `room_name` VARCHAR(30) NOT NULL COMMENT 'Rooms name',
  PRIMARY KEY (`id`)
);


/* Create other tables and define schemas for them here! */
DROP TABLE IF EXISTS `messages`;
		
CREATE TABLE `messages` (
  `id` INTEGER NOT NULL AUTO_INCREMENT COMMENT 'Message ID',
  `messages` VARCHAR(255) NOT NULL COMMENT 'Messages',
  `id_users` INTEGER NOT NULL COMMENT 'User ID',
  `id_rooms` INTEGER NOT NULL COMMENT 'Room ID',
  PRIMARY KEY (`id`)
);
-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `messages` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `messages` ADD FOREIGN KEY (id_rooms) REFERENCES `rooms` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `users` (`id`,`user_name`) VALUES
-- ('','');
-- INSERT INTO `rooms` (`id`,`room_name`) VALUES
-- ('','');
-- INSERT INTO `messages` (`id`,`messages`,`id_users`,`id_rooms`) VALUES
-- ('','','','');