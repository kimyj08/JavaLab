CREATE TABLE `delivery` (
	`did` INT(11) NOT NULL AUTO_INCREMENT,
	`dpid` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`dmno` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`dmaddr` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`dmtel` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`dpname` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`dpprice` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`dstatus` VARCHAR(50) NULL DEFAULT '1' COLLATE 'utf8mb4_general_ci',
	`ddone` VARCHAR(50) NULL DEFAULT '0' COLLATE 'utf8mb4_general_ci',
	`ddate` TIMESTAMP NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`did`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=6
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

-- Dumping data for table webmarket.delivery: ~4 rows (approximately)
INSERT INTO `delivery` (`did`, `dpid`, `dmno`, `dmaddr`, `dmtel`, `dpname`, `dpprice`, `dstatus`, `ddone`, `ddate`) VALUES
	(1, '11', '14', 'test1', 'test1', '마이크와죠스키', NULL, '1', '0', '2022-08-24 08:59:06'),
	(2, '11', '14', 'test1', 'test1', '마이크와죠스키', NULL, '1', '0', '2022-08-24 09:00:08'),
	(3, '11', '14', 'test1', 'test1', '마이크와죠스키', '35000', '1', '0', '2022-08-24 09:06:17'),
	(4, '7', '14', 'test1', 'test1', '테스트3', '5000', '1', '0', '2022-08-24 09:09:40'),
	(5, '9', '14', 'test1', 'test1', '테스트5', '12000', '1', '0', '2022-08-24 09:10:15');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
