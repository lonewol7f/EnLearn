-- not fully coded, to be implemented

DROP
DATABASE IF EXISTS `enlearn`;

CREATE
DATABASE `enlearn`;

use
`enlearn`;

SET
FOREIGN_KEY_CHECKS = 0;


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
(
    `id`   INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50),
    CONSTRAINT `pk_user` PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`
(
    `id` INT NOT NULL,
    CONSTRAINT `pk_student` PRIMARY KEY (`id`),
    CONSTRAINT `fk_student` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`
(
    `id` INT NOT NULL,
    CONSTRAINT `pk_teacher` PRIMARY KEY (`id`),
    CONSTRAINT `fk_teacher` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`
(
    `id` INT NOT NULL,
    CONSTRAINT `pk_admin` PRIMARY KEY (`id`),
    CONSTRAINT `fk_admin` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `advertiser`;
CREATE TABLE `advertiser`
(
    `id` INT NOT NULL,
    CONSTRAINT `pk_advertiser` PRIMARY KEY (`id`),
    CONSTRAINT `fk_advertiser` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `recorded_video`;
CREATE TABLE `recorded_video`
(
    `id`   INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50),
    CONSTRAINT `pk_recorded_video` PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`
(
    `id`        INT NOT NULL AUTO_INCREMENT,
    `comment`   TEXT,
    `user_id`   INT,
    `v_id`      INT,
    `createdOn` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_comment` PRIMARY KEY (`id`),
    CONSTRAINT `fk_comment_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_comment_2` FOREIGN KEY (`v_id`) REFERENCES `recorded_video` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`
(
    `id`        INT NOT NULL AUTO_INCREMENT,
    `reply`     TEXT,
    `user_id`   INT,
    `c_id`      INT,
    `createdOn` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_reply` PRIMARY KEY (`id`),
    CONSTRAINT `fk_reply_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_reply_2` FOREIGN KEY (`c_id`) REFERENCES `comment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `event`;
CREATE TABLE `event`
(
    `id`        INT NOT NULL AUTO_INCREMENT,
    `topic`     VARCHAR(255),
    `message`   TEXT,
    `date`      DATE,
    `time`      TIME,
    `adminId`   INT,
    `createdOn` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_event` PRIMARY KEY (`id`),
    CONSTRAINT `fk_event` FOREIGN KEY (`adminId`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `redeem_code`;
CREATE TABLE `redeem_code`
(
    `id`   INT NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(50),
    `u_id` INT DEFAULT NULL,
    CONSTRAINT `pk_redeem_code` PRIMARY KEY (`id`),
    CONSTRAINT `fk_redeem_code` FOREIGN KEY (`u_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


SET
FOREIGN_KEY_CHECKS = 1;