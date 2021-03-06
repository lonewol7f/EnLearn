-- not fully coded, to be implemented

DROP
    DATABASE IF EXISTS `enlearn-dev`;

CREATE
    DATABASE `enlearn-dev`;

use
    `enlearn-dev`;

SET
    FOREIGN_KEY_CHECKS = 0;


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
(
    `id`         INT         NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(50),
    `last_name`  VARCHAR(50),
    `address`    VARCHAR(255),
    `gender`     VARCHAR(7),
    `dob`        DATE,
    `email`      VARCHAR(100),
    `coins`      INT DEFAULT 0,
    `district`   VARCHAR(20),
    `password`   VARCHAR(68) NOT NULL,
    `enabled`    TINYINT(1) DEFAULT 1,
    CONSTRAINT `pk_user` PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities`
(
    `id`        INT         NOT NULL AUTO_INCREMENT,
    `authority` varchar(50) NOT NULL,
    UNIQUE KEY `idx_authorities_1` (`authority`),
    CONSTRAINT `pk_authorities` PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `user_authorities`;
CREATE TABLE `user_authorities`
(
    `user_id`      INT NOT NULL,
    `authority_id` INT NOT NULL,
    UNIQUE KEY `idx_authorities_1` (`user_id`, `authority_id`),
    CONSTRAINT `fk_authorities_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
    CONSTRAINT `fk_authorities_2` FOREIGN KEY (`authority_id`) REFERENCES `authorities` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`
(
    `id`     INT NOT NULL,
    `grade`  INT,
    CONSTRAINT `pk_student` PRIMARY KEY (`id`),
    CONSTRAINT `fk_student` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`
(
    `id`     INT NOT NULL,
    `salary` INT DEFAULT 0,
    `verified` TINYINT(1) DEFAULT 0,
    CONSTRAINT `pk_teacher` PRIMARY KEY (`id`),
    CONSTRAINT `fk_teacher` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`
(
    `id`           INT NOT NULL,
    `no_of_shares` INT,
    CONSTRAINT `pk_admin` PRIMARY KEY (`id`),
    CONSTRAINT `fk_admin` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `advertiser`;
CREATE TABLE `advertiser`
(
    `id`           INT NOT NULL,
    `company_name` VARCHAR(50),
    CONSTRAINT `pk_advertiser` PRIMARY KEY (`id`),
    CONSTRAINT `fk_advertiser` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `user_mobile_num`;
CREATE TABLE `user_mobile_num`
(
    `user_id`   INT,
    `mobile_no` CHAR(10),
    CONSTRAINT `pk_user_mobile_num` PRIMARY KEY (`user_id`),
    CONSTRAINT `fk_user_mobile_num` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `teacher_qualifications`;
CREATE TABLE `teacher_qualifications`
(
    `teacher_id`     INT,
    `qualifications` TEXT,
    CONSTRAINT `pk_teacher_qualification` PRIMARY KEY (`teacher_id`),
    CONSTRAINT `fk_teacher_qualification` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `advertiser_mobile`;
CREATE TABLE `advertiser_mobile`
(
    `advertiser_id` INT,
    `mobile_no`     CHAR(10),
    CONSTRAINT `pk_advertiser_mobile` PRIMARY KEY (`advertiser_id`),
    CONSTRAINT `fk_advertiser_mobile` FOREIGN KEY (`advertiser_id`) REFERENCES `advertiser` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`
(
    `id`         INT NOT NULL AUTO_INCREMENT,
    `comment`    TEXT,
    `user_id`    INT,
    `video_id`   INT,
    `created_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_comment` PRIMARY KEY (`id`),
    CONSTRAINT `fk_comment_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_comment_2` FOREIGN KEY (`video_id`) REFERENCES `recorded_video` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`
(
    `id`         INT NOT NULL AUTO_INCREMENT,
    `reply`      TEXT,
    `user_id`    INT,
    `comment_id` INT,
    `created_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_reply` PRIMARY KEY (`id`),
    CONSTRAINT `fk_reply_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_reply_2` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `event`;
CREATE TABLE `event`
(
    `id`         INT NOT NULL AUTO_INCREMENT,
    `topic`      VARCHAR(255),
    `message`    TEXT,
    `date`       VARCHAR(25),
    `time`       VARCHAR(25),
    `admin_id`   INT,
    `created_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_event` PRIMARY KEY (`id`),
    CONSTRAINT `fk_event` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification`
(
    `id`         INT NOT NULL AUTO_INCREMENT,
    `created_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `comment_id` INT,
    `teacher_id` INT,
    CONSTRAINT `pk_notification` PRIMARY KEY (`id`),
    CONSTRAINT `fk_notification_1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_notification_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `redeem_code`;
CREATE TABLE `redeem_code`
(
    `id`          INT                  NOT NULL AUTO_INCREMENT,
    `code`        VARCHAR(50),
    `coins`       INT,
    `is_redeemed` TINYINT(1) DEFAULT 0 NOT NULL,
    `user_id`     INT        DEFAULT NULL,
    `admin_id`    INT,
    CONSTRAINT `pk_redeem_code` PRIMARY KEY (`id`),
    CONSTRAINT `fk_redeem_code_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_redeem_code_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`
(
    `id`        INT NOT NULL AUTO_INCREMENT,
    `payment`   INT,
    `bought_on` VARCHAR(50),
    `coupon_code` VARCHAR(50),
    `user_email` VARCHAR(100),
    CONSTRAINT `pk_order` PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `free_quiz`;
CREATE TABLE `free_quiz`
(
    `id`         INT NOT NULL AUTO_INCREMENT,
    `quiz_link`  VARCHAR(255),
    `topic`      VARCHAR(255),
    `grade`      VARCHAR(50),
    `teacher_id` INT,
    CONSTRAINT `pk_free_quiz` PRIMARY KEY (`id`),
    CONSTRAINT `fk_free_quiz` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `special_quiz`;
CREATE TABLE `special_quiz`
(
    `id`           INT NOT NULL AUTO_INCREMENT,
    `marks_limit`  INT,
    `attempt`      INT,
    `mcq_link`     VARCHAR(255),
    `e_and_s_link` VARCHAR(255),
    `submit_link`  VARCHAR(255),
    `teacher_id`   INT,
    CONSTRAINT `pk_special_quiz` PRIMARY KEY (`id`),
    CONSTRAINT `fk_special_quiz` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `special_quiz_student`;
CREATE TABLE `special_quiz_student`
(
    `quiz_id`       INT                  NOT NULL,
    `student_id`    INT                  NOT NULL,
    `student_mark`  INT,
    `access_status` TINYINT(1) DEFAULT 0 NOT NULL,
    CONSTRAINT `pk_special_quiz_student` PRIMARY KEY (`quiz_id`, `student_id`),
    CONSTRAINT `fk_special_quiz_student_1` FOREIGN KEY (`quiz_id`) REFERENCES `special_quiz` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_special_quiz_student_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`
(
    `id`          INT NOT NULL AUTO_INCREMENT,
    `title`       VARCHAR(255),
    `type`        VARCHAR(50),
    `description` TEXT,
    `price`       INT,
    `image`       BLOB,
    `teacher_id`  INT,
    CONSTRAINT `pk_course` PRIMARY KEY (`id`),
    CONSTRAINT `fk_course` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `course_student`;
CREATE TABLE `course_student`
(
    `course_id`  INT,
    `student_id` INT,
    CONSTRAINT `pk_course_student` PRIMARY KEY (`course_id`, `student_id`),
    CONSTRAINT `fk_course_student_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_course_student_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

DROP TABLE IF EXISTS `recorded_video`;
CREATE TABLE `recorded_video`
(
    `id`          INT NOT NULL AUTO_INCREMENT,
    `week`        VARCHAR(50),
    `title`       VARCHAR(50),
    `description` TEXT,
    `videoLink`   VARCHAR(255),
    `thumbnail`   BLOB,
    `quiz_id`     INT,
    `course_id`   INT,
    CONSTRAINT `pk_recorded_video` PRIMARY KEY (`id`),
    CONSTRAINT `fk_recorded_video_1` FOREIGN KEY (`quiz_id`) REFERENCES `special_quiz` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_recorded_video_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `zoom_class`;
CREATE TABLE `zoom_class`
(
    `id`          INT NOT NULL AUTO_INCREMENT,
    `week`        VARCHAR(50),
    `title`       VARCHAR(255),
    `description` TEXT,
    `date`        VARCHAR(255),
    `time`        VARCHAR(255),
    `zoomLink`    VARCHAR(255),
    `course_id`   INT,
    CONSTRAINT `pk_zoom_class` PRIMARY KEY (`id`),
    CONSTRAINT `fk_zoom_class` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `credit_card`;
CREATE TABLE `credit_card`
(
    `card_number`   INT NOT NULL,
    `expiry`        VARCHAR(7),
    `cvv`           CHAR(3),
    `name_on_card`  VARCHAR(50),
    `amount`        INT,
    `advertiser_id` INT,
    CONSTRAINT `pk_credit_card` PRIMARY KEY (`card_number`),
    CONSTRAINT `fk_credit_card` FOREIGN KEY (`advertiser_id`) REFERENCES `advertiser` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `advertisement`;
CREATE TABLE `advertisement`
(
    `id`            INT NOT NULL AUTO_INCREMENT,
    `title`         VARCHAR(255),
    `price_range`   VARCHAR(100),
    `image`         BLOB,
    `description`   TEXT,
    `advertiser_id` INT,
    `admin_id`      INT,
    CONSTRAINT `pk_advertisement` PRIMARY KEY (`id`),
    CONSTRAINT `fk_advertisement_1` FOREIGN KEY (`advertiser_id`) REFERENCES `advertiser` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_advertisement_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`
(
    `id`           INT NOT NULL AUTO_INCREMENT,
    `student_id`   INT,
    `comment`      TEXT,
    `module`       VARCHAR(50),
    `teacher_name` VARCHAR(50),
    `grade`        INT,
    CONSTRAINT `pk_review` PRIMARY KEY (`id`, `student_id`),
    CONSTRAINT `fk_review` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `claim`;
CREATE TABLE `claim`
(
    `id`         INT NOT NULL AUTO_INCREMENT,
    `teacher_id` INT,
    `admin_id`   INT,
    CONSTRAINT `pk_claim` PRIMARY KEY (`id`),
    CONSTRAINT `fk_claim_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_claim_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `expenditure`;
CREATE TABLE `expenditure`
(
    `id`          INT NOT NULL AUTO_INCREMENT,
    `admin_id`    INT,
    `image`       BLOB,
    `description` TEXT,
    CONSTRAINT `pk_expenditure` PRIMARY KEY (`id`),
    CONSTRAINT `fk_expenditure` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary`
(
    `user_id`          INT NOT NULL,
    `admin_id`         INT NOT NULL,
    `no_of_students`   INT,
    `unit_price`       INT,
    `count_attendance` INT,
    CONSTRAINT `pk_salary` PRIMARY KEY (`user_id`),
    CONSTRAINT `fk_salary_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_salary_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `advertisements_approve`;
CREATE TABLE `advertisements_approve`
(
    `advertisement_id` INT NOT NULL,
    `admin_id`         INT NOT NULL,
    `type`             VARCHAR(20),
    CONSTRAINT `pk_advertisement_approve` PRIMARY KEY (`advertisement_id`),
    CONSTRAINT `fk_advertisement_approve_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_advertisement_approve_2` FOREIGN KEY (`advertisement_id`) REFERENCES `advertisement` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount`
(
    `id`           INT NOT NULL AUTO_INCREMENT,
    `admin_id`     INT,
    `discount`     INT,
    `teacher_name` VARCHAR(100),
    `course`       VARCHAR(100),
    `image`        BLOB,
    `description`  TEXT,
    `grade`        INT,
    `title`        VARCHAR(50),
    CONSTRAINT `pk_discount` PRIMARY KEY (`id`),
    CONSTRAINT `fk_discount` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = latin1;


SET
    FOREIGN_KEY_CHECKS = 1;

INSERT INTO `user` (first_name, last_name, email, password)
VALUES ('Kalana', 'Madusanka', 'km@gmail.com', '$2a$10$W3E8YRbuHkjD4CBRyUdXX.qjI3T6BDeF28NTxQPK3NWVyJe52958i'),
       ('Yasas', 'Lowe', 'yl@gmail.com', '$2a$10$m/33.M/d/SBguM8w8D4cw.1SoLTB5Lkr.ENa7PrUoHezUyhx7Zl7q'),
       ('Osini', 'Kithma', 'ok@gmail.com', '$2a$10$ORdHGQEno9r9D8piFv8./OGITWOR8UFVhQSFLKK714mcQPfnfV.x2'),
       ('Hasintha', 'Dhanushka', 'hd@gmail.com', '$2a$10$e0N6kMTRvhUKy84emaRcYO6CMNWxVD9bw42wTSD.M3HK94KGQjaAi');

INSERT INTO `student` (id,  grade)
VALUES (1,  12),
       (4,  12);

INSERT INTO `teacher` (id, verified)
VALUES (2, 1);

INSERT INTO `admin` (id, no_of_shares)
VALUES (3, 51);

INSERT INTO `authorities` (authority)
VALUES ('ROLE_STUDENT'),
       ('ROLE_TEACHER'),
       ('ROLE_ADMIN');

INSERT INTO `user_authorities` (user_id, authority_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 1);