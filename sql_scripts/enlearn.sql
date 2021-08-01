-- not fully coded, to be implemented

DROP DATABASE IF EXISTS `enlearn`;

CREATE DATABASE `enlearn`;

use `enlearn`;

SET FOREIGN_KEY_CHECKS = 0;


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50),
    CONSTRAINT `pk_user` PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `recorded_video`;
CREATE TABLE `recorded_video` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50),
    CONSTRAINT `pk_recorded_video` PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `comment` TEXT,
    `user_id` INT NOT NULL,
    `v_id` INT NOT NULL,
    `m_date` DATE,
    CONSTRAINT `pk_comment` PRIMARY KEY (`id`),
    CONSTRAINT `fk_comment_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_comment_2` FOREIGN KEY (`v_id`) REFERENCES `recorded_video` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `reply` TEXT,
    `user_id` INT NOT NULL,
    `c_id` INT NOT NULL,
    `m_date` DATE,
    CONSTRAINT `pk_reply` PRIMARY KEY (`id`),
    CONSTRAINT `fk_reply_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_reply_2` FOREIGN KEY (`c_id`) REFERENCES `comment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


SET FOREIGN_KEY_CHECKS = 1;