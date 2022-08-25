CREATE TABLE `member` (
	`mno` INT(11) NOT NULL AUTO_INCREMENT,
	`mname` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mpass` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mtel` VARCHAR(20) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`memail` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mgender` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`maddr` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mlevel` VARCHAR(10) NULL DEFAULT '5' COLLATE 'utf8mb4_general_ci',
	`miname` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mdate` TIMESTAMP NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`mno`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=24
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

-- Dumping data for table webmarket.member: ~18 rows (approximately)
INSERT INTO `member` (`mno`, `mname`, `mpass`, `mtel`, `memail`, `mgender`, `maddr`, `mlevel`, `miname`, `mdate`) VALUES
	(1, NULL, NULL, '010-0011-0101', NULL, NULL, NULL, NULL, NULL, '2022-08-16 07:15:19'),
	(2, NULL, NULL, '010-0000-1111', NULL, NULL, NULL, NULL, NULL, '2022-08-16 07:17:41'),
	(3, 'Kim', NULL, '010-1111-2222', NULL, NULL, NULL, NULL, NULL, '2022-08-16 07:29:13'),
	(4, 'Lee', NULL, '010-1010-1100', NULL, NULL, NULL, '5', NULL, '2022-08-16 07:30:37'),
	(5, 'Park', NULL, '010-1100-1122', NULL, NULL, NULL, '5', NULL, '2022-08-16 07:30:57'),
	(6, '나야나', NULL, '010-1234-1234', NULL, NULL, NULL, '5', NULL, '2022-08-16 07:49:02'),
	(7, 'Kim', NULL, '010-1234-5678', NULL, NULL, NULL, '5', NULL, '2022-08-17 02:55:14'),
	(8, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, '2022-08-17 03:29:00'),
	(9, '멍멍이', NULL, '010-5959-5500', NULL, NULL, NULL, '5', NULL, '2022-08-17 03:30:35'),
	(10, '냥이', NULL, '010-8888-0000', NULL, NULL, NULL, '5', NULL, '2022-08-17 04:14:19'),
	(11, '쿠키', NULL, '010-7997-9797', NULL, NULL, NULL, '5', 'beemo.png', '2022-08-19 02:30:17'),
	(12, '비모', NULL, '010-8668-6666', NULL, NULL, NULL, '5', 'BMO.png', '2022-08-19 03:26:09'),
	(13, '비모', NULL, '010-8668-8888', NULL, NULL, NULL, '5', 'BMO.png', '2022-08-19 03:27:03'),
	(14, 'test1', 'test1', 'test1', 'test1', '남성', 'test1', '5', 'BMO.png', '2022-08-22 03:37:08'),
	(16, 'test2', 'test2', 'test2', 'test2', '여성', 'test2', '5', 'beemo.png', '2022-08-23 04:04:12'),
	(17, 'test3', 'test3', 'test3', 'test3', '여성', 'test3', '5', 'pj.png', '2022-08-23 04:07:25'),
	(18, 'test5', 'test5', 'test5', 'test5', '남성', 'test5', '5', 'atam.jpg', '2022-08-23 04:08:15'),
	(21, 'test6', 'test6', 'test6', 'test6', '여성', '서울 종로구 종로 54 보신각', '5', 'BMO.png', '2022-08-24 03:09:20'),
	(22, 'test7', 'test7', 'test7', 'test7', '여성', '서울특별시 종로구 종로 129', '5', 'beemo.png', '2022-08-24 03:10:24'),
	(23, 'test5', 'test5', 'test5', 'test5', '남성', '서울특별시 종로구 종로 55', '5', 'atam.jpg', '2022-08-24 04:19:39');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
