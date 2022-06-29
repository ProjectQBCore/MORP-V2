-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.14-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- es_extended için veritabanı yapısı dökülüyor

-- tablo yapısı dökülüyor es_extended.twitter_tweets
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- es_extended.twitter_tweets: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `twitter_tweets` DISABLE KEYS */;
INSERT IGNORE INTO `twitter_tweets` (`id`, `firstName`, `lastName`, `message`, `url`, `time`, `picture`, `owner`) VALUES
	(4, 'Lucid', 'Test', 'dsdgsg', '', '2020-11-14T08:45:53.212Z', 'default', 'license:299055de10756b9de64a546e74309416fc77059f'),
	(5, 'Lucid', 'Test', 'Aaaa', 'https://media.discordapp.net/attachments/775378782', '2020-11-14T08:46:04.263Z', 'default', 'license:299055de10756b9de64a546e74309416fc77059f'),
	(6, 'Lucid', 'Test', '', 'https://media.discordapp.net/attachments/775378782', '2020-11-14T12:32:56.039Z', 'default', 'license:299055de10756b9de64a546e74309416fc77059f'),
	(7, 'Lucid', 'Test', 'fsafas', 'https://media.discordapp.net/attachments/775378782', '2020-11-14T12:33:33.768Z', 'default', 'license:299055de10756b9de64a546e74309416fc77059f'),
	(8, 'Lucid', 'Test', 'fsafas', 'https://media.discordapp.net/attachments/775378782164090930/777149324235898890/screenshot.jpg', '2020-11-14T12:33:59.293Z', 'default', 'license:299055de10756b9de64a546e74309416fc77059f');
/*!40000 ALTER TABLE `twitter_tweets` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
