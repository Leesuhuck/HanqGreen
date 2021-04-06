-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.4.11-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 테이블 test.t_user 구조 내보내기
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE IF NOT EXISTS `t_user` (
  `user_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) DEFAULT NULL,
  `user_nm` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `cafe_nick` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 테이블 데이터 test.t_user:~7 rows (대략적) 내보내기
DELETE FROM `t_user`;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`user_no`, `user_id`, `user_nm`, `age`, `cafe_nick`, `phone`) VALUES
	(1, 'hanq', '한석현', 39, '한큐', '010-3349-6538'),
	(2, 'twoq', '김석현', 37, '두큐', '010-1234-5678'),
	(3, 'setq', '이석현', 36, '세큐', '010-2345-6789'),
	(4, 'neq', '박석현', 35, '네큐', '010-4567-8901'),
	(5, 'ppuq', '정석현', 34, '뻐구뻥', '010-5678-9012'),
	(6, 'ppuppuq', '신복현', 33, '뻐구뻐구뻥', '010-6786-0123'),
	(7, 'bbang', '임석현', 32, '빵빵', '010-7850-1234');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
t_usert_user