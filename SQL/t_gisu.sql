-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.2.12-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARt_gisuACTER_SET_t_gisut_userCLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 테이블 test.t_gisu 구조 내보내기
CREATE TABLE IF NOT EXISTS `t_gisu` (
  `gisu_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) DEFAULT NULL,
  `class_nm` varchar(50) DEFAULT NULL,
  `gisu_nm` varchar(50) DEFAULT NULL,
  `jucha_nm` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`gisu_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 테이블 데이터 test.t_gisu:~6 rows (대략적) 내보내기
/*!40000 ALTER TABLE `t_gisu` DISABLE KEYS */;
INSERT IGNORE INTO `t_gisu` (`gisu_no`, `user_id`, `class_nm`, `gisu_nm`, `jucha_nm`) VALUES
	(1, 'hanq', 'green', '1기', '5주차'),
	(2, 'twoq', 'green', '2기', '2주차'),
	(3, 'twoq', 'yellow', '1기', '2주차'),
	(4, 'samq', 'green', '3기', '1주차'),
	(5, 'neq', 'blue', '1기', '12주차'),
	(6, 'ppuq', 'blue', '2기', '3주차');
/*!40000 ALTER TABLE `t_gisu` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
