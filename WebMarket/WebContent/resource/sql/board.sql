CREATE TABLE `board` (
	`bid` INT(11) NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`content` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`author` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`bdate` TIMESTAMP NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`bid`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=28
;


-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.8.3-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table webmarket.board: ~27 rows (approximately)
INSERT INTO `board` (`bid`, `title`, `content`, `author`, `bdate`) VALUES
	(1, 'test1', 'test1 test1 test1', NULL, NULL),
	(2, 'test2', 'test2 test2 test2 test2 test2', NULL, NULL),
	(3, 'test3', 'test3, test3', NULL, NULL),
	(4, NULL, NULL, NULL, '2022-08-16 06:14:23'),
	(5, NULL, NULL, NULL, '2022-08-16 06:14:34'),
	(6, 'test1-1', 'test1-1 test1-1 test1-1', NULL, '2022-08-16 06:15:09'),
	(7, 'test5', 'test5 null ???', NULL, '2022-08-16 07:27:28'),
	(8, '냥이의 하루', '오늘 사냥은 성공할까냥??\r\nHello :)', NULL, '2022-08-17 04:16:16'),
	(9, 'test1', 'test1 잘 되는지 확인.', 'basic_1.jpg', '2022-08-18 03:29:06'),
	(10, '테스트2', 'test2 확인확인.', 'caution_1(7.19).jpg', '2022-08-18 06:01:34'),
	(11, '테스트5', 'test5 확인.', 'caution_1(7.19).jpg', '2022-08-18 07:15:47'),
	(12, 'test-test', '다시 확인.', 'atam.jpg', '2022-08-18 07:20:35'),
	(13, 'testtest', '다시 테스트', 'BMO.png', '2022-08-18 08:55:37'),
	(14, NULL, NULL, NULL, '2022-08-23 07:32:47'),
	(15, NULL, NULL, NULL, '2022-08-23 07:36:47'),
	(16, NULL, NULL, NULL, '2022-08-23 07:36:53'),
	(17, NULL, NULL, NULL, '2022-08-23 07:37:36'),
	(18, NULL, NULL, NULL, '2022-08-23 07:42:27'),
	(19, NULL, NULL, NULL, '2022-08-23 07:57:49'),
	(20, NULL, NULL, NULL, '2022-08-23 08:15:16'),
	(21, '테스트1', '<p>테스트1</p>', 'test1', '2022-08-23 08:32:30'),
	(22, '테스트2', '<p>테스트2</p>', 'test1', '2022-08-23 08:33:52'),
	(23, 'test3', '<p>테스트 입니다.</p>', 'test2', '2022-08-23 08:40:57'),
	(24, NULL, NULL, NULL, '2022-08-23 09:19:44'),
	(25, NULL, NULL, NULL, '2022-08-23 09:21:29'),
	(26, NULL, NULL, NULL, '2022-08-23 09:22:09'),
	(27, '제발', '<p>마지막 테스트이길....</p>', 'test1', '2022-08-23 09:27:58');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
