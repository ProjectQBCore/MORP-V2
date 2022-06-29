-- --------------------------------------------------------
-- מארח:                         45.83.43.54
-- Server version:               5.6.46-log - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL גירסא:               11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for evrp
CREATE DATABASE IF NOT EXISTS `bb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bb`;

-- Dumping structure for table evrp.10system
CREATE TABLE IF NOT EXISTS `10system` (
  `identifier` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.10system: ~0 rows (approximately)
/*!40000 ALTER TABLE `10system` DISABLE KEYS */;
/*!40000 ALTER TABLE `10system` ENABLE KEYS */;

-- Dumping structure for table evrp.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.addon_account: ~394 rows (approximately)
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_10_bed_black_money', 'BAYVIEW LODGE MOTEL Room 10 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_10_black_money', 'BAYVIEW LODGE MOTEL Room 10 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_1_bed_black_money', 'BAYVIEW LODGE MOTEL Room 1 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_1_black_money', 'BAYVIEW LODGE MOTEL Room 1 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_2_bed_black_money', 'BAYVIEW LODGE MOTEL Room 2 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_2_black_money', 'BAYVIEW LODGE MOTEL Room 2 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_3_bed_black_money', 'BAYVIEW LODGE MOTEL Room 3 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_3_black_money', 'BAYVIEW LODGE MOTEL Room 3 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_4_bed_black_money', 'BAYVIEW LODGE MOTEL Room 4 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_4_black_money', 'BAYVIEW LODGE MOTEL Room 4 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_5_bed_black_money', 'BAYVIEW LODGE MOTEL Room 5 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_5_black_money', 'BAYVIEW LODGE MOTEL Room 5 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_6_bed_black_money', 'BAYVIEW LODGE MOTEL Room 6 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_6_black_money', 'BAYVIEW LODGE MOTEL Room 6 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_7_bed_black_money', 'BAYVIEW LODGE MOTEL Room 7 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_7_black_money', 'BAYVIEW LODGE MOTEL Room 7 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_8_bed_black_money', 'BAYVIEW LODGE MOTEL Room 8 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_8_black_money', 'BAYVIEW LODGE MOTEL Room 8 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_9_bed_black_money', 'BAYVIEW LODGE MOTEL Room 9 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_9_black_money', 'BAYVIEW LODGE MOTEL Room 9 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_10_bed_black_money', 'BILINGSGATE MOTEL Room 10 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_10_black_money', 'BILINGSGATE MOTEL Room 10 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_11_bed_black_money', 'BILINGSGATE MOTEL Room 11 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_11_black_money', 'BILINGSGATE MOTEL Room 11 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_12_bed_black_money', 'BILINGSGATE MOTEL Room 12 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_12_black_money', 'BILINGSGATE MOTEL Room 12 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_14_bed_black_money', 'BILINGSGATE MOTEL Room 14 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_14_black_money', 'BILINGSGATE MOTEL Room 14 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_15_bed_black_money', 'BILINGSGATE MOTEL Room 15 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_15_black_money', 'BILINGSGATE MOTEL Room 15 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_1_bed_black_money', 'BILINGSGATE MOTEL Room 1 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_1_black_money', 'BILINGSGATE MOTEL Room 1 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_2_bed_black_money', 'BILINGSGATE MOTEL Room 2 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_2_black_money', 'BILINGSGATE MOTEL Room 2 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_3_bed_black_money', 'BILINGSGATE MOTEL Room 3 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_3_black_money', 'BILINGSGATE MOTEL Room 3 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_4_bed_black_money', 'BILINGSGATE MOTEL Room 4 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_4_black_money', 'BILINGSGATE MOTEL Room 4 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_5_bed_black_money', 'BILINGSGATE MOTEL Room 5 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_5_black_money', 'BILINGSGATE MOTEL Room 5 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_6_bed_black_money', 'BILINGSGATE MOTEL Room 6 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_6_black_money', 'BILINGSGATE MOTEL Room 6 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_7_bed_black_money', 'BILINGSGATE MOTEL Room 7 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_7_black_money', 'BILINGSGATE MOTEL Room 7 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_8_bed_black_money', 'BILINGSGATE MOTEL Room 8 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_8_black_money', 'BILINGSGATE MOTEL Room 8 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_10_bed_black_money', 'CROWN JEWELS MOTEL Room 10 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_10_black_money', 'CROWN JEWELS MOTEL Room 10 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_11_bed_black_money', 'CROWN JEWELS MOTEL Room 11 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_11_black_money', 'CROWN JEWELS MOTEL Room 11 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_12_bed_black_money', 'CROWN JEWELS MOTEL Room 12 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_12_black_money', 'CROWN JEWELS MOTEL Room 12 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_13_bed_black_money', 'CROWN JEWELS MOTEL Room 13 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_13_black_money', 'CROWN JEWELS MOTEL Room 13 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_14_bed_black_money', 'CROWN JEWELS MOTEL Room 14 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_14_black_money', 'CROWN JEWELS MOTEL Room 14 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_15_bed_black_money', 'CROWN JEWELS MOTEL Room 15 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_15_black_money', 'CROWN JEWELS MOTEL Room 15 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_16_bed_black_money', 'CROWN JEWELS MOTEL Room 16 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_16_black_money', 'CROWN JEWELS MOTEL Room 16 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_17_bed_black_money', 'CROWN JEWELS MOTEL Room 17 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_17_black_money', 'CROWN JEWELS MOTEL Room 17 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_1_bed_black_money', 'CROWN JEWELS MOTEL Room 1 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_1_black_money', 'CROWN JEWELS MOTEL Room 1 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_2_bed_black_money', 'CROWN JEWELS MOTEL Room 2 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_2_black_money', 'CROWN JEWELS MOTEL Room 2 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_3_bed_black_money', 'CROWN JEWELS MOTEL Room 3 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_3_black_money', 'CROWN JEWELS MOTEL Room 3 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_4_bed_black_money', 'CROWN JEWELS MOTEL Room 4 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_4_black_money', 'CROWN JEWELS MOTEL Room 4 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_5_bed_black_money', 'CROWN JEWELS MOTEL Room 5 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_5_black_money', 'CROWN JEWELS MOTEL Room 5 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_6_bed_black_money', 'CROWN JEWELS MOTEL Room 6 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_6_black_money', 'CROWN JEWELS MOTEL Room 6 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_7_bed_black_money', 'CROWN JEWELS MOTEL Room 7 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_7_black_money', 'CROWN JEWELS MOTEL Room 7 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_8_bed_black_money', 'CROWN JEWELS MOTEL Room 8 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_8_black_money', 'CROWN JEWELS MOTEL Room 8 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_9_bed_black_money', 'CROWN JEWELS MOTEL Room 9 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_9_black_money', 'CROWN JEWELS MOTEL Room 9 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_11_bed_black_money', 'DREAM VIEW MOTEL Room 11 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_11_black_money', 'DREAM VIEW MOTEL Room 11 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_12_bed_black_money', 'DREAM VIEW MOTEL Room 12 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_12_black_money', 'DREAM VIEW MOTEL Room 12 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_13_bed_black_money', 'DREAM VIEW MOTEL Room 13 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_13_black_money', 'DREAM VIEW MOTEL Room 13 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_14_bed_black_money', 'DREAM VIEW MOTEL Room 14 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_14_black_money', 'DREAM VIEW MOTEL Room 14 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_15_bed_black_money', 'DREAM VIEW MOTEL Room 15 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_15_black_money', 'DREAM VIEW MOTEL Room 15 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_16_bed_black_money', 'DREAM VIEW MOTEL Room 16 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_16_black_money', 'DREAM VIEW MOTEL Room 16 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_17_bed_black_money', 'DREAM VIEW MOTEL Room 17 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_17_black_money', 'DREAM VIEW MOTEL Room 17 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_18_bed_black_money', 'DREAM VIEW MOTEL Room 18 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_18_black_money', 'DREAM VIEW MOTEL Room 18 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_19_bed_black_money', 'DREAM VIEW MOTEL Room 19 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_19_black_money', 'DREAM VIEW MOTEL Room 19 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_1_bed_black_money', 'DREAM VIEW MOTEL Room 1 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_1_black_money', 'DREAM VIEW MOTEL Room 1 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_20_bed_black_money', 'DREAM VIEW MOTEL Room 20 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_20_black_money', 'DREAM VIEW MOTEL Room 20 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_21_bed_black_money', 'DREAM VIEW MOTEL Room 21 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_21_black_money', 'DREAM VIEW MOTEL Room 21 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_22_bed_black_money', 'DREAM VIEW MOTEL Room 22 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_22_black_money', 'DREAM VIEW MOTEL Room 22 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_2_bed_black_money', 'DREAM VIEW MOTEL Room 2 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_2_black_money', 'DREAM VIEW MOTEL Room 2 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_3_bed_black_money', 'DREAM VIEW MOTEL Room 3 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_3_black_money', 'DREAM VIEW MOTEL Room 3 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_4_bed_black_money', 'DREAM VIEW MOTEL Room 4 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_4_black_money', 'DREAM VIEW MOTEL Room 4 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_5_bed_black_money', 'DREAM VIEW MOTEL Room 5 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_5_black_money', 'DREAM VIEW MOTEL Room 5 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_6_bed_black_money', 'DREAM VIEW MOTEL Room 6 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_6_black_money', 'DREAM VIEW MOTEL Room 6 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_7_bed_black_money', 'DREAM VIEW MOTEL Room 7 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_7_black_money', 'DREAM VIEW MOTEL Room 7 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_8_bed_black_money', 'DREAM VIEW MOTEL Room 8 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_8_black_money', 'DREAM VIEW MOTEL Room 8 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_9_bed_black_money', 'DREAM VIEW MOTEL Room 9 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_9_black_money', 'DREAM VIEW MOTEL Room 9 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_10_bed_black_money', 'EASTERN MOTEL Room 10 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_10_black_money', 'EASTERN MOTEL Room 10 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_1_bed_black_money', 'EASTERN MOTEL Room 1 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_1_black_money', 'EASTERN MOTEL Room 1 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_2_bed_black_money', 'EASTERN MOTEL Room 2 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_2_black_money', 'EASTERN MOTEL Room 2 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_3_bed_black_money', 'EASTERN MOTEL Room 3 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_3_black_money', 'EASTERN MOTEL Room 3 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_4_bed_black_money', 'EASTERN MOTEL Room 4 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_4_black_money', 'EASTERN MOTEL Room 4 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_5_bed_black_money', 'EASTERN MOTEL Room 5 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_5_black_money', 'EASTERN MOTEL Room 5 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_6_bed_black_money', 'EASTERN MOTEL Room 6 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_6_black_money', 'EASTERN MOTEL Room 6 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_7_bed_black_money', 'EASTERN MOTEL Room 7 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_7_black_money', 'EASTERN MOTEL Room 7 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_8_bed_black_money', 'EASTERN MOTEL Room 8 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_8_black_money', 'EASTERN MOTEL Room 8 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_9_bed_black_money', 'EASTERN MOTEL Room 9 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('EasternMotel_9_black_money', 'EASTERN MOTEL Room 9 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_10_bed_black_money', 'PERRERA BEACH MOTEL Room 10 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_10_black_money', 'PERRERA BEACH MOTEL Room 10 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_11_bed_black_money', 'PERRERA BEACH MOTEL Room 11 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_11_black_money', 'PERRERA BEACH MOTEL Room 11 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_12_bed_black_money', 'PERRERA BEACH MOTEL Room 12 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_12_black_money', 'PERRERA BEACH MOTEL Room 12 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_13_bed_black_money', 'PERRERA BEACH MOTEL Room 13 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_13_black_money', 'PERRERA BEACH MOTEL Room 13 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_14_bed_black_money', 'PERRERA BEACH MOTEL Room 14 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_14_black_money', 'PERRERA BEACH MOTEL Room 14 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_15_bed_black_money', 'PERRERA BEACH MOTEL Room 15 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_15_black_money', 'PERRERA BEACH MOTEL Room 15 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_16_bed_black_money', 'PERRERA BEACH MOTEL Room 16 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_16_black_money', 'PERRERA BEACH MOTEL Room 16 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_17_bed_black_money', 'PERRERA BEACH MOTEL Room 17 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_17_black_money', 'PERRERA BEACH MOTEL Room 17 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_18_bed_black_money', 'PERRERA BEACH MOTEL Room 18 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_18_black_money', 'PERRERA BEACH MOTEL Room 18 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_19_bed_black_money', 'PERRERA BEACH MOTEL Room 19 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_19_black_money', 'PERRERA BEACH MOTEL Room 19 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_1_bed_black_money', 'PERRERA BEACH MOTEL Room 1 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_1_black_money', 'PERRERA BEACH MOTEL Room 1 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_20_bed_black_money', 'PERRERA BEACH MOTEL Room 20 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_20_black_money', 'PERRERA BEACH MOTEL Room 20 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_21_bed_black_money', 'PERRERA BEACH MOTEL Room 21 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_21_black_money', 'PERRERA BEACH MOTEL Room 21 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_22_bed_black_money', 'PERRERA BEACH MOTEL Room 22 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_22_black_money', 'PERRERA BEACH MOTEL Room 22 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_23_bed_black_money', 'PERRERA BEACH MOTEL Room 23 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_23_black_money', 'PERRERA BEACH MOTEL Room 23 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_24_bed_black_money', 'PERRERA BEACH MOTEL Room 24 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_24_black_money', 'PERRERA BEACH MOTEL Room 24 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_25_bed_black_money', 'PERRERA BEACH MOTEL Room 25 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_25_black_money', 'PERRERA BEACH MOTEL Room 25 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_26_bed_black_money', 'PERRERA BEACH MOTEL Room 26 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_26_black_money', 'PERRERA BEACH MOTEL Room 26 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_27_bed_black_money', 'PERRERA BEACH MOTEL Room 27 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_27_black_money', 'PERRERA BEACH MOTEL Room 27 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_28_bed_black_money', 'PERRERA BEACH MOTEL Room 28 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_28_black_money', 'PERRERA BEACH MOTEL Room 28 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_29_bed_black_money', 'PERRERA BEACH MOTEL Room 29 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_29_black_money', 'PERRERA BEACH MOTEL Room 29 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_2_bed_black_money', 'PERRERA BEACH MOTEL Room 2 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_2_black_money', 'PERRERA BEACH MOTEL Room 2 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_30_bed_black_money', 'PERRERA BEACH MOTEL Room 30 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_30_black_money', 'PERRERA BEACH MOTEL Room 30 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_31_bed_black_money', 'PERRERA BEACH MOTEL Room 31 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_31_black_money', 'PERRERA BEACH MOTEL Room 31 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_32_bed_black_money', 'PERRERA BEACH MOTEL Room 32 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_32_black_money', 'PERRERA BEACH MOTEL Room 32 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_33_bed_black_money', 'PERRERA BEACH MOTEL Room 33 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_33_black_money', 'PERRERA BEACH MOTEL Room 33 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_34_bed_black_money', 'PERRERA BEACH MOTEL Room 34 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_34_black_money', 'PERRERA BEACH MOTEL Room 34 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_35_bed_black_money', 'PERRERA BEACH MOTEL Room 35 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_35_black_money', 'PERRERA BEACH MOTEL Room 35 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_36_bed_black_money', 'PERRERA BEACH MOTEL Room 36 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_36_black_money', 'PERRERA BEACH MOTEL Room 36 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_37_bed_black_money', 'PERRERA BEACH MOTEL Room 37 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_37_black_money', 'PERRERA BEACH MOTEL Room 37 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_38_bed_black_money', 'PERRERA BEACH MOTEL Room 38 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_38_black_money', 'PERRERA BEACH MOTEL Room 38 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_3_bed_black_money', 'PERRERA BEACH MOTEL Room 3 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_3_black_money', 'PERRERA BEACH MOTEL Room 3 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_4_bed_black_money', 'PERRERA BEACH MOTEL Room 4 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_4_black_money', 'PERRERA BEACH MOTEL Room 4 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_5_bed_black_money', 'PERRERA BEACH MOTEL Room 5 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_5_black_money', 'PERRERA BEACH MOTEL Room 5 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_6_bed_black_money', 'PERRERA BEACH MOTEL Room 6 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_6_black_money', 'PERRERA BEACH MOTEL Room 6 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_7_bed_black_money', 'PERRERA BEACH MOTEL Room 7 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_7_black_money', 'PERRERA BEACH MOTEL Room 7 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_8_bed_black_money', 'PERRERA BEACH MOTEL Room 8 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_8_black_money', 'PERRERA BEACH MOTEL Room 8 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_9_bed_black_money', 'PERRERA BEACH MOTEL Room 9 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_9_black_money', 'PERRERA BEACH MOTEL Room 9 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_10_bed_black_money', 'THE MOTOR MOTEL Room 10 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_10_black_money', 'THE MOTOR MOTEL Room 10 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_11_bed_black_money', 'THE MOTOR MOTEL Room 11 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_11_black_money', 'THE MOTOR MOTEL Room 11 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_12_bed_black_money', 'THE MOTOR MOTEL Room 12 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_12_black_money', 'THE MOTOR MOTEL Room 12 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_1_bed_black_money', 'THE MOTOR MOTEL Room 1 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_1_black_money', 'THE MOTOR MOTEL Room 1 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_2_bed_black_money', 'THE MOTOR MOTEL Room 2 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_2_black_money', 'THE MOTOR MOTEL Room 2 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_3_bed_black_money', 'THE MOTOR MOTEL Room 3 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_3_black_money', 'THE MOTOR MOTEL Room 3 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_4_bed_black_money', 'THE MOTOR MOTEL Room 4 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_4_black_money', 'THE MOTOR MOTEL Room 4 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_5_bed_black_money', 'THE MOTOR MOTEL Room 5 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_5_black_money', 'THE MOTOR MOTEL Room 5 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_6_bed_black_money', 'THE MOTOR MOTEL Room 6 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_6_black_money', 'THE MOTOR MOTEL Room 6 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_7_bed_black_money', 'THE MOTOR MOTEL Room 7 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_7_black_money', 'THE MOTOR MOTEL Room 7 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_8_bed_black_money', 'THE MOTOR MOTEL Room 8 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_8_black_money', 'THE MOTOR MOTEL Room 8 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_9_bed_black_money', 'THE MOTOR MOTEL Room 9 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_9_black_money', 'THE MOTOR MOTEL Room 9 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_11_bed_black_money', 'THE PINK CAGE MOTEL Room 11 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_11_black_money', 'THE PINK CAGE MOTEL Room 11 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_12_bed_black_money', 'THE PINK CAGE MOTEL Room 12 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_12_black_money', 'THE PINK CAGE MOTEL Room 12 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_13_bed_black_money', 'THE PINK CAGE MOTEL Room 13 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_13_black_money', 'THE PINK CAGE MOTEL Room 13 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_14_bed_black_money', 'THE PINK CAGE MOTEL Room 14 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_14_black_money', 'THE PINK CAGE MOTEL Room 14 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_15_bed_black_money', 'THE PINK CAGE MOTEL Room 15 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_15_black_money', 'THE PINK CAGE MOTEL Room 15 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_16_bed_black_money', 'THE PINK CAGE MOTEL Room 16 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_16_black_money', 'THE PINK CAGE MOTEL Room 16 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_17_bed_black_money', 'THE PINK CAGE MOTEL Room 17 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_17_black_money', 'THE PINK CAGE MOTEL Room 17 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_18_bed_black_money', 'THE PINK CAGE MOTEL Room 18 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_18_black_money', 'THE PINK CAGE MOTEL Room 18 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_19_bed_black_money', 'THE PINK CAGE MOTEL Room 19 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_19_black_money', 'THE PINK CAGE MOTEL Room 19 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_1_bed_black_money', 'THE PINK CAGE MOTEL Room 1 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_1_black_money', 'THE PINK CAGE MOTEL Room 1 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_20_bed_black_money', 'THE PINK CAGE MOTEL Room 20 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_20_black_money', 'THE PINK CAGE MOTEL Room 20 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_21_bed_black_money', 'THE PINK CAGE MOTEL Room 21 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_21_black_money', 'THE PINK CAGE MOTEL Room 21 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_22_bed_black_money', 'THE PINK CAGE MOTEL Room 22 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_22_black_money', 'THE PINK CAGE MOTEL Room 22 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_23_bed_black_money', 'THE PINK CAGE MOTEL Room 23 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_23_black_money', 'THE PINK CAGE MOTEL Room 23 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_24_bed_black_money', 'THE PINK CAGE MOTEL Room 24 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_24_black_money', 'THE PINK CAGE MOTEL Room 24 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_25_bed_black_money', 'THE PINK CAGE MOTEL Room 25 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_25_black_money', 'THE PINK CAGE MOTEL Room 25 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_26_bed_black_money', 'THE PINK CAGE MOTEL Room 26 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_26_black_money', 'THE PINK CAGE MOTEL Room 26 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_27_bed_black_money', 'THE PINK CAGE MOTEL Room 27 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_27_black_money', 'THE PINK CAGE MOTEL Room 27 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_28_bed_black_money', 'THE PINK CAGE MOTEL Room 28 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_28_black_money', 'THE PINK CAGE MOTEL Room 28 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_29_bed_black_money', 'THE PINK CAGE MOTEL Room 29 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_29_black_money', 'THE PINK CAGE MOTEL Room 29 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_2_bed_black_money', 'THE PINK CAGE MOTEL Room 2 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_2_black_money', 'THE PINK CAGE MOTEL Room 2 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_30_bed_black_money', 'THE PINK CAGE MOTEL Room 30 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_30_black_money', 'THE PINK CAGE MOTEL Room 30 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_31_bed_black_money', 'THE PINK CAGE MOTEL Room 31 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_31_black_money', 'THE PINK CAGE MOTEL Room 31 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_32_bed_black_money', 'THE PINK CAGE MOTEL Room 32 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_32_black_money', 'THE PINK CAGE MOTEL Room 32 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_33_bed_black_money', 'THE PINK CAGE MOTEL Room 33 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_33_black_money', 'THE PINK CAGE MOTEL Room 33 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_34_bed_black_money', 'THE PINK CAGE MOTEL Room 34 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_34_black_money', 'THE PINK CAGE MOTEL Room 34 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_36_bed_black_money', 'THE PINK CAGE MOTEL Room 36 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_36_black_money', 'THE PINK CAGE MOTEL Room 36 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_37_bed_black_money', 'THE PINK CAGE MOTEL Room 37 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_37_black_money', 'THE PINK CAGE MOTEL Room 37 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_39_bed_black_money', 'THE PINK CAGE MOTEL Room 39 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_39_black_money', 'THE PINK CAGE MOTEL Room 39 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_3_bed_black_money', 'THE PINK CAGE MOTEL Room 3 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_3_black_money', 'THE PINK CAGE MOTEL Room 3 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_4_bed_black_money', 'THE PINK CAGE MOTEL Room 4 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_4_black_money', 'THE PINK CAGE MOTEL Room 4 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_5a_bed_black_money', 'THE PINK CAGE MOTEL Room 5a Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_5a_black_money', 'THE PINK CAGE MOTEL Room 5a Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_5b_bed_black_money', 'THE PINK CAGE MOTEL Room 5b Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_5b_black_money', 'THE PINK CAGE MOTEL Room 5b Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_6_bed_black_money', 'THE PINK CAGE MOTEL Room 6 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_6_black_money', 'THE PINK CAGE MOTEL Room 6 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_7_bed_black_money', 'THE PINK CAGE MOTEL Room 7 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_7_black_money', 'THE PINK CAGE MOTEL Room 7 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_8_bed_black_money', 'THE PINK CAGE MOTEL Room 8 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_8_black_money', 'THE PINK CAGE MOTEL Room 8 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_9_bed_black_money', 'THE PINK CAGE MOTEL Room 9 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_9_black_money', 'THE PINK CAGE MOTEL Room 9 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_13_bed_black_money', 'THE RANCHO MOTEL Room 13 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_13_black_money', 'THE RANCHO MOTEL Room 13 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_14_bed_black_money', 'THE RANCHO MOTEL Room 14 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_14_black_money', 'THE RANCHO MOTEL Room 14 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_15a_bed_black_money', 'THE RANCHO MOTEL Room 15a Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_15a_black_money', 'THE RANCHO MOTEL Room 15a Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_15b_bed_black_money', 'THE RANCHO MOTEL Room 15b Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_15b_black_money', 'THE RANCHO MOTEL Room 15b Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_16_bed_black_money', 'THE RANCHO MOTEL Room 16 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_16_black_money', 'THE RANCHO MOTEL Room 16 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_17_bed_black_money', 'THE RANCHO MOTEL Room 17 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_17_black_money', 'THE RANCHO MOTEL Room 17 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_10_bed_black_money', 'VON CRASTENBURG MOTEL Room 10 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_10_black_money', 'VON CRASTENBURG MOTEL Room 10 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_11_bed_black_money', 'VON CRASTENBURG MOTEL Room 11 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_11_black_money', 'VON CRASTENBURG MOTEL Room 11 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_12_bed_black_money', 'VON CRASTENBURG MOTEL Room 12 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_12_black_money', 'VON CRASTENBURG MOTEL Room 12 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_13_bed_black_money', 'VON CRASTENBURG MOTEL Room 13 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_13_black_money', 'VON CRASTENBURG MOTEL Room 13 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_14_bed_black_money', 'VON CRASTENBURG MOTEL Room 14 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_14_black_money', 'VON CRASTENBURG MOTEL Room 14 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_15_bed_black_money', 'VON CRASTENBURG MOTEL Room 15 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_15_black_money', 'VON CRASTENBURG MOTEL Room 15 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_16_bed_black_money', 'VON CRASTENBURG MOTEL Room 16 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_16_black_money', 'VON CRASTENBURG MOTEL Room 16 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_17_bed_black_money', 'VON CRASTENBURG MOTEL Room 17 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_17_black_money', 'VON CRASTENBURG MOTEL Room 17 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_18_bed_black_money', 'VON CRASTENBURG MOTEL Room 18 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_18_black_money', 'VON CRASTENBURG MOTEL Room 18 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_19_bed_black_money', 'VON CRASTENBURG MOTEL Room 19 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_19_black_money', 'VON CRASTENBURG MOTEL Room 19 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_1_bed_black_money', 'VON CRASTENBURG MOTEL Room 1 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_1_black_money', 'VON CRASTENBURG MOTEL Room 1 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_20_bed_black_money', 'VON CRASTENBURG MOTEL Room 20 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_20_black_money', 'VON CRASTENBURG MOTEL Room 20 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_21_bed_black_money', 'VON CRASTENBURG MOTEL Room 21 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_21_black_money', 'VON CRASTENBURG MOTEL Room 21 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_22_bed_black_money', 'VON CRASTENBURG MOTEL Room 22 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_22_black_money', 'VON CRASTENBURG MOTEL Room 22 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_23_bed_black_money', 'VON CRASTENBURG MOTEL Room 23 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_23_black_money', 'VON CRASTENBURG MOTEL Room 23 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_2_bed_black_money', 'VON CRASTENBURG MOTEL Room 2 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_2_black_money', 'VON CRASTENBURG MOTEL Room 2 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_3_bed_black_money', 'VON CRASTENBURG MOTEL Room 3 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_3_black_money', 'VON CRASTENBURG MOTEL Room 3 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_4_bed_black_money', 'VON CRASTENBURG MOTEL Room 4 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_4_black_money', 'VON CRASTENBURG MOTEL Room 4 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_5_bed_black_money', 'VON CRASTENBURG MOTEL Room 5 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_5_black_money', 'VON CRASTENBURG MOTEL Room 5 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_6_bed_black_money', 'VON CRASTENBURG MOTEL Room 6 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_6_black_money', 'VON CRASTENBURG MOTEL Room 6 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_7_bed_black_money', 'VON CRASTENBURG MOTEL Room 7 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_7_black_money', 'VON CRASTENBURG MOTEL Room 7 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_8_bed_black_money', 'VON CRASTENBURG MOTEL Room 8 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_8_black_money', 'VON CRASTENBURG MOTEL Room 8 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_9_bed_black_money', 'VON CRASTENBURG MOTEL Room 9 Motel Bed Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_9_black_money', 'VON CRASTENBURG MOTEL Room 9 Motel Black Money Storage', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_ambulance', 'Ambulance', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_avera', 'avera', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_ballas', 'ballas', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_cardealer', 'Concessionnaire', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_chicken', 'chicken', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_dealer', 'dealer', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_golda', 'Golda', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_grove', 'grove', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_gym', 'gym', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_hotdog', 'Hotdog', 0);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_lawyer', 'Lawyer', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_mechanic', 'Mécano', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_police', 'Police', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_realestate', 'Realestate', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_shipodim', 'shipodim', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_studio', 'Studio', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_taco', 'taco', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_taxi', 'Taxi', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_unicorn', 'Unicorn', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_vagos', 'vagos', 1);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Dumping structure for table evrp.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3492 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.addon_account_data: ~1,225 rows (approximately)
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(552, 'society_ambulance', 1822, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(553, 'society_avera', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(554, 'society_ballas', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(555, 'society_cardealer', 83325, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(556, 'society_chicken', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(557, 'society_dealer', 94900, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(558, 'society_golda', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(559, 'society_grove', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(560, 'society_gym', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(561, 'society_mechanic', 328348, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(562, 'society_police', 40836, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(563, 'society_shipodim', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(564, 'society_studio', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(565, 'society_taxi', 833, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(566, 'society_unicorn', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(567, 'society_vagos', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(568, 'BayviewLodgeMotel_10_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(569, 'BayviewLodgeMotel_10_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(570, 'BayviewLodgeMotel_1_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(571, 'BayviewLodgeMotel_1_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(572, 'BayviewLodgeMotel_2_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(573, 'BayviewLodgeMotel_2_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(574, 'BayviewLodgeMotel_3_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(575, 'BayviewLodgeMotel_3_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(576, 'BayviewLodgeMotel_4_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(577, 'BayviewLodgeMotel_4_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(578, 'BayviewLodgeMotel_5_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(579, 'BayviewLodgeMotel_5_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(580, 'BayviewLodgeMotel_6_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(581, 'BayviewLodgeMotel_6_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(582, 'BayviewLodgeMotel_7_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(583, 'BayviewLodgeMotel_7_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(584, 'BayviewLodgeMotel_8_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(585, 'BayviewLodgeMotel_8_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(586, 'BayviewLodgeMotel_9_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(587, 'BayviewLodgeMotel_9_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(588, 'BilingsgateMotel_10_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(589, 'BilingsgateMotel_10_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(590, 'BilingsgateMotel_11_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(591, 'BilingsgateMotel_11_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(592, 'BilingsgateMotel_12_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(593, 'BilingsgateMotel_12_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(594, 'BilingsgateMotel_14_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(595, 'BilingsgateMotel_14_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(596, 'BilingsgateMotel_15_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(597, 'BilingsgateMotel_15_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(598, 'BilingsgateMotel_1_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(599, 'BilingsgateMotel_1_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(600, 'BilingsgateMotel_2_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(601, 'BilingsgateMotel_2_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(602, 'BilingsgateMotel_3_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(603, 'BilingsgateMotel_3_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(604, 'BilingsgateMotel_4_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(605, 'BilingsgateMotel_4_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(606, 'BilingsgateMotel_5_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(607, 'BilingsgateMotel_5_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(608, 'BilingsgateMotel_6_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(609, 'BilingsgateMotel_6_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(610, 'BilingsgateMotel_7_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(611, 'BilingsgateMotel_7_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(612, 'BilingsgateMotel_8_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(613, 'BilingsgateMotel_8_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(614, 'CrownJewelsMotel_10_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(615, 'CrownJewelsMotel_10_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(616, 'CrownJewelsMotel_11_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(617, 'CrownJewelsMotel_11_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(618, 'CrownJewelsMotel_12_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(619, 'CrownJewelsMotel_12_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(620, 'CrownJewelsMotel_13_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(621, 'CrownJewelsMotel_13_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(622, 'CrownJewelsMotel_14_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(623, 'CrownJewelsMotel_14_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(624, 'CrownJewelsMotel_15_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(625, 'CrownJewelsMotel_15_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(626, 'CrownJewelsMotel_16_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(627, 'CrownJewelsMotel_16_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(628, 'CrownJewelsMotel_17_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(629, 'CrownJewelsMotel_17_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(630, 'CrownJewelsMotel_1_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(631, 'CrownJewelsMotel_1_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(632, 'CrownJewelsMotel_2_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(633, 'CrownJewelsMotel_2_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(634, 'CrownJewelsMotel_3_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(635, 'CrownJewelsMotel_3_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(636, 'CrownJewelsMotel_4_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(637, 'CrownJewelsMotel_4_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(638, 'CrownJewelsMotel_5_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(639, 'CrownJewelsMotel_5_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(640, 'CrownJewelsMotel_6_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(641, 'CrownJewelsMotel_6_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(642, 'CrownJewelsMotel_7_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(643, 'CrownJewelsMotel_7_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(644, 'CrownJewelsMotel_8_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(645, 'CrownJewelsMotel_8_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(646, 'CrownJewelsMotel_9_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(647, 'CrownJewelsMotel_9_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(648, 'DreamViewMotel_11_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(649, 'DreamViewMotel_11_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(650, 'DreamViewMotel_12_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(651, 'DreamViewMotel_12_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(652, 'DreamViewMotel_13_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(653, 'DreamViewMotel_13_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(654, 'DreamViewMotel_14_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(655, 'DreamViewMotel_14_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(656, 'DreamViewMotel_15_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(657, 'DreamViewMotel_15_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(658, 'DreamViewMotel_16_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(659, 'DreamViewMotel_16_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(660, 'DreamViewMotel_17_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(661, 'DreamViewMotel_17_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(662, 'DreamViewMotel_18_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(663, 'DreamViewMotel_18_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(664, 'DreamViewMotel_19_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(665, 'DreamViewMotel_19_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(666, 'DreamViewMotel_1_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(667, 'DreamViewMotel_1_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(668, 'DreamViewMotel_20_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(669, 'DreamViewMotel_20_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(670, 'DreamViewMotel_21_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(671, 'DreamViewMotel_21_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(672, 'DreamViewMotel_22_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(673, 'DreamViewMotel_22_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(674, 'DreamViewMotel_2_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(675, 'DreamViewMotel_2_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(676, 'DreamViewMotel_3_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(677, 'DreamViewMotel_3_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(678, 'DreamViewMotel_4_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(679, 'DreamViewMotel_4_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(680, 'DreamViewMotel_5_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(681, 'DreamViewMotel_5_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(682, 'DreamViewMotel_6_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(683, 'DreamViewMotel_6_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(684, 'DreamViewMotel_7_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(685, 'DreamViewMotel_7_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(686, 'DreamViewMotel_8_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(687, 'DreamViewMotel_8_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(688, 'DreamViewMotel_9_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(689, 'DreamViewMotel_9_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(690, 'EasternMotel_10_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(691, 'EasternMotel_10_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(692, 'EasternMotel_1_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(693, 'EasternMotel_1_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(694, 'EasternMotel_2_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(695, 'EasternMotel_2_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(696, 'EasternMotel_3_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(697, 'EasternMotel_3_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(698, 'EasternMotel_4_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(699, 'EasternMotel_4_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(700, 'EasternMotel_5_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(701, 'EasternMotel_5_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(702, 'EasternMotel_6_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(703, 'EasternMotel_6_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(704, 'EasternMotel_7_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(705, 'EasternMotel_7_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(706, 'EasternMotel_8_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(707, 'EasternMotel_8_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(708, 'EasternMotel_9_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(709, 'EasternMotel_9_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(710, 'PerreraBeachMotel_10_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(711, 'PerreraBeachMotel_10_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(712, 'PerreraBeachMotel_11_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(713, 'PerreraBeachMotel_11_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(714, 'PerreraBeachMotel_12_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(715, 'PerreraBeachMotel_12_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(716, 'PerreraBeachMotel_13_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(717, 'PerreraBeachMotel_13_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(718, 'PerreraBeachMotel_14_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(719, 'PerreraBeachMotel_14_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(720, 'PerreraBeachMotel_15_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(721, 'PerreraBeachMotel_15_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(722, 'PerreraBeachMotel_16_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(723, 'PerreraBeachMotel_16_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(724, 'PerreraBeachMotel_17_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(725, 'PerreraBeachMotel_17_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(726, 'PerreraBeachMotel_18_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(727, 'PerreraBeachMotel_18_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(728, 'PerreraBeachMotel_19_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(729, 'PerreraBeachMotel_19_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(730, 'PerreraBeachMotel_1_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(731, 'PerreraBeachMotel_1_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(732, 'PerreraBeachMotel_20_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(733, 'PerreraBeachMotel_20_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(734, 'PerreraBeachMotel_21_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(735, 'PerreraBeachMotel_21_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(736, 'PerreraBeachMotel_22_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(737, 'PerreraBeachMotel_22_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(738, 'PerreraBeachMotel_23_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(739, 'PerreraBeachMotel_23_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(740, 'PerreraBeachMotel_24_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(741, 'PerreraBeachMotel_24_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(742, 'PerreraBeachMotel_25_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(743, 'PerreraBeachMotel_25_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(744, 'PerreraBeachMotel_26_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(745, 'PerreraBeachMotel_26_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(746, 'PerreraBeachMotel_27_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(747, 'PerreraBeachMotel_27_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(748, 'PerreraBeachMotel_28_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(749, 'PerreraBeachMotel_28_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(750, 'PerreraBeachMotel_29_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(751, 'PerreraBeachMotel_29_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(752, 'PerreraBeachMotel_2_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(753, 'PerreraBeachMotel_2_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(754, 'PerreraBeachMotel_30_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(755, 'PerreraBeachMotel_30_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(756, 'PerreraBeachMotel_31_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(757, 'PerreraBeachMotel_31_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(758, 'PerreraBeachMotel_32_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(759, 'PerreraBeachMotel_32_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(760, 'PerreraBeachMotel_33_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(761, 'PerreraBeachMotel_33_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(762, 'PerreraBeachMotel_34_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(763, 'PerreraBeachMotel_34_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(764, 'PerreraBeachMotel_35_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(765, 'PerreraBeachMotel_35_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(766, 'PerreraBeachMotel_36_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(767, 'PerreraBeachMotel_36_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(768, 'PerreraBeachMotel_37_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(769, 'PerreraBeachMotel_37_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(770, 'PerreraBeachMotel_38_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(771, 'PerreraBeachMotel_38_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(772, 'PerreraBeachMotel_3_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(773, 'PerreraBeachMotel_3_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(774, 'PerreraBeachMotel_4_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(775, 'PerreraBeachMotel_4_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(776, 'PerreraBeachMotel_5_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(777, 'PerreraBeachMotel_5_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(778, 'PerreraBeachMotel_6_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(779, 'PerreraBeachMotel_6_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(780, 'PerreraBeachMotel_7_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(781, 'PerreraBeachMotel_7_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(782, 'PerreraBeachMotel_8_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(783, 'PerreraBeachMotel_8_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(784, 'PerreraBeachMotel_9_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(785, 'PerreraBeachMotel_9_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(786, 'TheMotorMotel_10_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(787, 'TheMotorMotel_10_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(788, 'TheMotorMotel_11_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(789, 'TheMotorMotel_11_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(790, 'TheMotorMotel_12_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(791, 'TheMotorMotel_12_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(792, 'TheMotorMotel_1_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(793, 'TheMotorMotel_1_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(794, 'TheMotorMotel_2_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(795, 'TheMotorMotel_2_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(796, 'TheMotorMotel_3_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(797, 'TheMotorMotel_3_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(798, 'TheMotorMotel_4_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(799, 'TheMotorMotel_4_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(800, 'TheMotorMotel_5_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(801, 'TheMotorMotel_5_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(802, 'TheMotorMotel_6_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(803, 'TheMotorMotel_6_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(804, 'TheMotorMotel_7_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(805, 'TheMotorMotel_7_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(806, 'TheMotorMotel_8_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(807, 'TheMotorMotel_8_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(808, 'TheMotorMotel_9_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(809, 'TheMotorMotel_9_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(810, 'ThePinkCageMotel_11_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(811, 'ThePinkCageMotel_11_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(812, 'ThePinkCageMotel_12_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(813, 'ThePinkCageMotel_12_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(814, 'ThePinkCageMotel_13_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(815, 'ThePinkCageMotel_13_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(816, 'ThePinkCageMotel_14_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(817, 'ThePinkCageMotel_14_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(818, 'ThePinkCageMotel_15_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(819, 'ThePinkCageMotel_15_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(820, 'ThePinkCageMotel_16_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(821, 'ThePinkCageMotel_16_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(822, 'ThePinkCageMotel_17_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(823, 'ThePinkCageMotel_17_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(824, 'ThePinkCageMotel_18_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(825, 'ThePinkCageMotel_18_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(826, 'ThePinkCageMotel_19_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(827, 'ThePinkCageMotel_19_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(828, 'ThePinkCageMotel_1_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(829, 'ThePinkCageMotel_1_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(830, 'ThePinkCageMotel_20_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(831, 'ThePinkCageMotel_20_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(832, 'ThePinkCageMotel_21_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(833, 'ThePinkCageMotel_21_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(834, 'ThePinkCageMotel_22_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(835, 'ThePinkCageMotel_22_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(836, 'ThePinkCageMotel_23_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(837, 'ThePinkCageMotel_23_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(838, 'ThePinkCageMotel_24_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(839, 'ThePinkCageMotel_24_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(840, 'ThePinkCageMotel_25_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(841, 'ThePinkCageMotel_25_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(842, 'ThePinkCageMotel_26_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(843, 'ThePinkCageMotel_26_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(844, 'ThePinkCageMotel_27_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(845, 'ThePinkCageMotel_27_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(846, 'ThePinkCageMotel_28_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(847, 'ThePinkCageMotel_28_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(848, 'ThePinkCageMotel_29_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(849, 'ThePinkCageMotel_29_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(850, 'ThePinkCageMotel_2_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(851, 'ThePinkCageMotel_2_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(852, 'ThePinkCageMotel_30_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(853, 'ThePinkCageMotel_30_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(854, 'ThePinkCageMotel_31_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(855, 'ThePinkCageMotel_31_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(856, 'ThePinkCageMotel_32_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(857, 'ThePinkCageMotel_32_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(858, 'ThePinkCageMotel_33_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(859, 'ThePinkCageMotel_33_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(860, 'ThePinkCageMotel_34_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(861, 'ThePinkCageMotel_34_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(862, 'ThePinkCageMotel_36_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(863, 'ThePinkCageMotel_36_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(864, 'ThePinkCageMotel_37_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(865, 'ThePinkCageMotel_37_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(866, 'ThePinkCageMotel_39_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(867, 'ThePinkCageMotel_39_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(868, 'ThePinkCageMotel_3_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(869, 'ThePinkCageMotel_3_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(870, 'ThePinkCageMotel_4_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(871, 'ThePinkCageMotel_4_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(872, 'ThePinkCageMotel_5a_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(873, 'ThePinkCageMotel_5a_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(874, 'ThePinkCageMotel_5b_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(875, 'ThePinkCageMotel_5b_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(876, 'ThePinkCageMotel_6_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(877, 'ThePinkCageMotel_6_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(878, 'ThePinkCageMotel_7_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(879, 'ThePinkCageMotel_7_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(880, 'ThePinkCageMotel_8_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(881, 'ThePinkCageMotel_8_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(882, 'ThePinkCageMotel_9_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(883, 'ThePinkCageMotel_9_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(884, 'TheRanchoMotel_13_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(885, 'TheRanchoMotel_13_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(886, 'TheRanchoMotel_14_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(887, 'TheRanchoMotel_14_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(888, 'TheRanchoMotel_15a_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(889, 'TheRanchoMotel_15a_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(890, 'TheRanchoMotel_15b_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(891, 'TheRanchoMotel_15b_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(892, 'TheRanchoMotel_16_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(893, 'TheRanchoMotel_16_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(894, 'TheRanchoMotel_17_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(895, 'TheRanchoMotel_17_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(896, 'VonCrastenburgMotel_10_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(897, 'VonCrastenburgMotel_10_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(898, 'VonCrastenburgMotel_11_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(899, 'VonCrastenburgMotel_11_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(900, 'VonCrastenburgMotel_12_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(901, 'VonCrastenburgMotel_12_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(902, 'VonCrastenburgMotel_13_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(903, 'VonCrastenburgMotel_13_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(904, 'VonCrastenburgMotel_14_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(905, 'VonCrastenburgMotel_14_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(906, 'VonCrastenburgMotel_15_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(907, 'VonCrastenburgMotel_15_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(908, 'VonCrastenburgMotel_16_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(909, 'VonCrastenburgMotel_16_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(910, 'VonCrastenburgMotel_17_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(911, 'VonCrastenburgMotel_17_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(912, 'VonCrastenburgMotel_18_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(913, 'VonCrastenburgMotel_18_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(914, 'VonCrastenburgMotel_19_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(915, 'VonCrastenburgMotel_19_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(916, 'VonCrastenburgMotel_1_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(917, 'VonCrastenburgMotel_1_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(918, 'VonCrastenburgMotel_20_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(919, 'VonCrastenburgMotel_20_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(920, 'VonCrastenburgMotel_21_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(921, 'VonCrastenburgMotel_21_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(922, 'VonCrastenburgMotel_22_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(923, 'VonCrastenburgMotel_22_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(924, 'VonCrastenburgMotel_23_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(925, 'VonCrastenburgMotel_23_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(926, 'VonCrastenburgMotel_2_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(927, 'VonCrastenburgMotel_2_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(928, 'VonCrastenburgMotel_3_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(929, 'VonCrastenburgMotel_3_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(930, 'VonCrastenburgMotel_4_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(931, 'VonCrastenburgMotel_4_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(932, 'VonCrastenburgMotel_5_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(933, 'VonCrastenburgMotel_5_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(934, 'VonCrastenburgMotel_6_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(935, 'VonCrastenburgMotel_6_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(936, 'VonCrastenburgMotel_7_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(937, 'VonCrastenburgMotel_7_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(938, 'VonCrastenburgMotel_8_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(939, 'VonCrastenburgMotel_8_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(940, 'VonCrastenburgMotel_9_bed_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(941, 'VonCrastenburgMotel_9_black_money', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(942, 'society_hotdog', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(943, 'society_hotdog', 0, 'Char2:11000013dd19535');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(944, 'society_hotdog', 0, 'steam:110000118370736');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(945, 'society_hotdog', 0, 'Char3:110000117f91815');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(947, 'society_hotdog', 0, 'Char2:1100001157417e0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(948, 'society_hotdog', 0, 'steam:11000013eafd48d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(949, 'society_hotdog', 0, 'steam:11000011220844d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(950, 'society_hotdog', 0, 'steam:1100001409736d3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(952, 'society_hotdog', 0, 'steam:11000010ed98020');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(953, 'society_hotdog', 0, 'steam:11000011cb6437f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(954, 'society_hotdog', 0, 'steam:11000010630ca3c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(955, 'society_hotdog', 0, 'steam:11000013cbd8d30');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(956, 'society_hotdog', 0, 'Char1:11000010da8727b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(957, 'society_hotdog', 0, 'steam:11000013585bd1e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(958, 'society_hotdog', 0, 'steam:110000119075762');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(959, 'society_hotdog', 0, 'steam:11000013edd6216');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(960, 'society_hotdog', 0, 'Char2:11000011255f540');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(962, 'society_hotdog', 0, 'steam:11000014081c91c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(963, 'society_hotdog', 0, 'steam:110000135406755');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(964, 'society_hotdog', 0, 'steam:11000010ae7aa15');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(965, 'society_hotdog', 0, 'steam:1100001347a49b9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(966, 'society_hotdog', 0, 'Char1:11000013cc5cdc1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(967, 'society_hotdog', 0, 'steam:110000119f2f7a9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(968, 'society_hotdog', 0, 'steam:11000013536e8dc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(969, 'society_hotdog', 0, 'steam:11000013474c652');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(970, 'society_hotdog', 0, 'Char2:11000011255f540');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(971, 'society_hotdog', 0, 'steam:110000136ff869c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(972, 'society_hotdog', 0, 'steam:11000011a5a1934');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(973, 'society_hotdog', 0, 'steam:11000011a929699');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(974, 'society_hotdog', 0, 'Char1:11000011bc9069d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(975, 'society_hotdog', 0, 'steam:11000010bf7aee8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(976, 'society_hotdog', 0, 'Char3:1100001360397b4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(977, 'society_hotdog', 0, 'steam:11000010bc2b771');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(978, 'society_hotdog', 0, 'steam:110000102b79f43');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(979, 'society_hotdog', 0, 'steam:11000013cd21d3c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(980, 'society_hotdog', 0, 'steam:1100001130c1062');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(981, 'society_hotdog', 0, 'steam:11000011a2049d0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(982, 'society_hotdog', 0, 'steam:1100001347a49b9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(983, 'society_hotdog', 0, 'steam:11000013bdc6c7f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(984, 'society_hotdog', 0, 'steam:1100001118ad9e7');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(985, 'society_hotdog', 0, 'steam:1100001331897db');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(986, 'society_hotdog', 0, 'Char3:110000117f91815');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(987, 'society_hotdog', 0, 'Char1:11000011308992f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(988, 'society_hotdog', 0, 'steam:11000010da8727b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(989, 'society_hotdog', 0, 'steam:110000134bfd6cb');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(990, 'society_hotdog', 0, 'Char3:110000117f91815');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(991, 'society_hotdog', 0, 'steam:110000115b2f351');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(992, 'society_hotdog', 0, 'steam:11000013e508585');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(993, 'society_hotdog', 0, 'Char1:11000011cb6437f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(994, 'society_hotdog', 0, 'steam:110000117f91815');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(995, 'society_hotdog', 0, 'Char2:110000119075762');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(996, 'society_hotdog', 0, 'steam:110000135406755');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(997, 'society_hotdog', 0, 'Char3:1100001360397b4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(998, 'society_hotdog', 0, 'Char1:110000135406755');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1000, 'society_hotdog', 0, 'steam:1100001379f080b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1001, 'society_hotdog', 0, 'steam:11000013b8451bd');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1002, 'society_hotdog', 0, 'Char2:11000013fe26872');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1003, 'society_hotdog', 0, 'steam:11000013dd19535');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1004, 'society_hotdog', 0, 'steam:110000114813436');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1005, 'society_hotdog', 0, 'Char1:110000113787a51');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1006, 'society_hotdog', 0, 'steam:11000011c1d371b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1007, 'society_hotdog', 0, 'steam:11000011709b1e7');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1008, 'society_hotdog', 0, 'steam:11000010ec5b3c8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1011, 'society_hotdog', 0, 'steam:110000114ece646');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1012, 'society_hotdog', 0, 'Char2:11000011255f540');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1015, 'society_hotdog', 0, 'steam:11000013c330c72');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1016, 'society_hotdog', 0, 'steam:110000135a1c3c3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1017, 'society_hotdog', 0, 'steam:1100001170ccedf');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1018, 'society_hotdog', 0, 'steam:11000013e561190');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1019, 'society_hotdog', 0, 'steam:11000010acd6267');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1020, 'society_hotdog', 0, 'steam:11000013536e8dc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1021, 'society_hotdog', 0, 'steam:11000013536e8dc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1022, 'society_hotdog', 0, 'steam:11000013536e8dc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1023, 'society_hotdog', 0, 'Char2:11000011255f540');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1024, 'society_hotdog', 0, 'steam:11000013e839c68');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1025, 'society_hotdog', 0, 'steam:11000011cfb36fd');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1026, 'society_hotdog', 0, 'steam:11000013c91364f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1027, 'society_hotdog', 0, 'Char1:1100001114c81e0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1028, 'society_hotdog', 0, 'steam:1100001114c81e0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1029, 'society_hotdog', 0, 'steam:11000014049ffce');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1030, 'society_hotdog', 0, 'Char3:11000013e839c68');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1031, 'society_hotdog', 0, 'steam:1100001360397b4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1032, 'society_hotdog', 0, 'steam:11000013cc5cdc1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1033, 'society_hotdog', 0, 'Char3:11000013536e8dc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1034, 'society_hotdog', 0, 'Char2:11000011255f540');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1035, 'society_hotdog', 0, 'steam:11000010a4d3c97');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1036, 'society_hotdog', 0, 'Char2:11000011255f540');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1037, 'society_hotdog', 0, 'Char5:110000111c38fef');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1038, 'society_hotdog', 0, 'steam:11000013536e8dc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1039, 'society_hotdog', 0, 'steam:11000010bf0b6da');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1040, 'society_hotdog', 0, 'steam:11000013c330c72');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1041, 'society_hotdog', 0, 'Char2:1100001157417e0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1042, 'society_hotdog', 0, 'Char2:11000010ae7aa15');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1043, 'society_hotdog', 0, 'steam:11000013edd6216');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1044, 'society_hotdog', 0, 'steam:11000011bc9069d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1045, 'society_hotdog', 0, 'Char2:1100001157417e0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1046, 'society_hotdog', 0, 'Char2:11000011255f540');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1047, 'society_hotdog', 0, 'steam:1100001157417e0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1048, 'society_hotdog', 0, 'Char2:11000013c330c72');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1049, 'society_hotdog', 0, 'steam:11000010878a2dd');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1050, 'society_hotdog', 0, 'Char2:110000118370736');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1051, 'society_hotdog', 0, 'Char2:11000011255f540');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1052, 'society_hotdog', 0, 'steam:11000013fe26872');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1053, 'society_hotdog', 0, 'steam:110000111c38fef');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1054, 'society_hotdog', 0, 'steam:1100001410e4496');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1055, 'society_hotdog', 0, 'steam:11000013e11e83d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1056, 'society_hotdog', 0, 'steam:11000011b134692');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1057, 'society_hotdog', 0, 'Char1:1100001419d0d81');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1058, 'society_hotdog', 0, 'steam:11000013e974a74');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1060, 'society_hotdog', 0, 'steam:11000013c21717a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1061, 'society_hotdog', 0, 'Char1:110000144098d94');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1062, 'society_hotdog', 0, 'steam:11000013c213033');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1063, 'society_hotdog', 0, 'steam:11000014019aa8d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1065, 'society_hotdog', 0, 'steam:11000013b443979');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1066, 'society_hotdog', 0, 'steam:11000013d2576c2');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1067, 'society_hotdog', 0, 'steam:1100001191fef7b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1068, 'society_hotdog', 0, 'steam:110000117ff0cdc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1069, 'society_hotdog', 0, 'steam:11000013476b7c7');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1070, 'society_hotdog', 0, 'Char1:110000116de58e1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1072, 'society_hotdog', 0, 'steam:1100001437567ba');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1075, 'society_hotdog', 0, 'steam:11000013be58bd9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1076, 'society_hotdog', 0, 'steam:1100001355661ff');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1077, 'society_hotdog', 0, 'steam:110000134ba22ca');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1078, 'society_hotdog', 0, 'Char1:110000111a7b3dc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1081, 'society_hotdog', 0, 'steam:11000011c3d4ef2');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1082, 'society_hotdog', 0, 'steam:11000011b72846e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1083, 'society_hotdog', 0, 'steam:110000135b33eff');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1086, 'society_hotdog', 0, 'steam:1100001359ecefd');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1087, 'society_hotdog', 0, 'Char1:110000136bc2ecb');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1088, 'society_hotdog', 0, 'steam:110000140a6366f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1089, 'society_hotdog', 0, 'steam:110000111a90c19');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1090, 'society_hotdog', 0, 'steam:11000013d48c17c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1092, 'society_hotdog', 0, 'steam:110000132d3a65f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1093, 'society_hotdog', 0, 'Char1:11000014068718c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1095, 'society_hotdog', 0, 'steam:110000141674dc8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1096, 'society_hotdog', 0, 'steam:1100001345d3748');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1097, 'society_hotdog', 0, 'steam:110000143835b85');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1099, 'society_hotdog', 0, 'steam:110000135378c83');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1100, 'society_hotdog', 0, 'steam:110000141dd457e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1101, 'society_hotdog', 0, 'Char1:11000013cee6c14');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1102, 'society_hotdog', 0, 'steam:1100001152599c2');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1103, 'society_hotdog', 0, 'steam:11000013a3dcd17');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1104, 'society_hotdog', 0, 'steam:110000131cde930');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1105, 'society_hotdog', 0, 'steam:1100001184d185a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1106, 'society_hotdog', 0, 'steam:1100001410bfd83');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1107, 'society_hotdog', 0, 'Char1:11000010ec424bf');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1108, 'society_hotdog', 0, 'Char1:1100001361ca488');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1109, 'society_hotdog', 0, 'steam:1100001441915c0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1110, 'society_hotdog', 0, 'steam:110000137b38b4e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1111, 'society_hotdog', 0, 'steam:11000010f1a3671');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1112, 'society_hotdog', 0, 'steam:11000011c6d8faa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1113, 'society_hotdog', 0, 'steam:11000013de44fc7');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1114, 'society_hotdog', 0, 'Char1:11000010dccedce');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1116, 'society_hotdog', 0, 'steam:11000013ba0ee00');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1117, 'society_hotdog', 0, 'Char1:11000010eb2606d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1118, 'society_hotdog', 0, 'steam:110000111d20511');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1119, 'society_hotdog', 0, 'Char1:11000011599c2e9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1120, 'society_hotdog', 0, 'steam:1100001440b56da');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1121, 'society_hotdog', 0, 'steam:11000013c450d45');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1122, 'society_hotdog', 0, 'steam:11000011478fd1c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1123, 'society_hotdog', 0, 'steam:11000013e266bd3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1124, 'society_hotdog', 0, 'Char2:110000110ee6772');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1125, 'society_hotdog', 0, 'steam:110000116e086f7');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1126, 'society_hotdog', 0, 'steam:11000013eb9f5c0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1128, 'society_hotdog', 0, 'steam:110000139da79b2');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1129, 'society_hotdog', 0, 'steam:11000013cc6299c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1130, 'society_hotdog', 0, 'Char1:11000011338bb0e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1131, 'society_hotdog', 0, 'steam:11000013f87b982');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1132, 'society_hotdog', 0, 'Char1:1100001198c44f4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1133, 'society_hotdog', 0, 'Char1:11000013e59e56f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1134, 'society_hotdog', 0, 'steam:1100001198dbf4b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1135, 'society_hotdog', 0, 'steam:110000141354dcf');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1136, 'society_hotdog', 0, 'Char1:1100001000cd756');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1137, 'society_hotdog', 0, 'Char1:1100001154c57a4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1139, 'society_hotdog', 0, 'steam:110000114389cc0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1140, 'society_hotdog', 0, 'steam:11000013efd5398');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1141, 'society_hotdog', 0, 'steam:11000013c8841f3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1142, 'society_hotdog', 0, 'steam:110000109aae8c4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1143, 'society_hotdog', 0, 'steam:11000011b36ef12');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1144, 'society_hotdog', 0, 'steam:11000013e71e7e9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1145, 'society_hotdog', 0, 'steam:11000013ae6d6bb');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1147, 'society_hotdog', 0, 'steam:1100001073bc27f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1148, 'society_hotdog', 0, 'steam:11000013b4af941');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1149, 'society_hotdog', 0, 'steam:11000011967b22c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1150, 'society_hotdog', 0, 'Char1:11000013c1361ca');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1151, 'society_hotdog', 0, 'steam:11000013536e8dc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1152, 'society_hotdog', 0, 'steam:110000117714c82');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1154, 'society_hotdog', 0, 'steam:110000132b2424f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1155, 'society_hotdog', 0, 'steam:110000140a1d3b4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1156, 'society_hotdog', 0, 'steam:110000135cabb71');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1157, 'society_hotdog', 0, 'Char2:110000135d6c3b4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1158, 'society_hotdog', 0, 'steam:11000011a9f1dac');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1160, 'society_hotdog', 0, 'Char1:11000013f23a084');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1161, 'society_hotdog', 0, 'steam:1100001437f7bae');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1162, 'society_hotdog', 0, 'steam:110000115b8678f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1164, 'society_hotdog', 0, 'steam:110000110a8fe3a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1165, 'society_hotdog', 0, 'steam:110000112a1a5ad');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1166, 'society_hotdog', 0, 'steam:110000142278997');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1167, 'society_hotdog', 0, 'steam:1100001148cadc9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1168, 'society_hotdog', 0, 'steam:11000013e151789');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1169, 'society_hotdog', 0, 'steam:110000115be185a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1170, 'society_hotdog', 0, 'steam:11000013dffc950');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1171, 'society_hotdog', 0, 'steam:110000143257a35');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1172, 'society_hotdog', 0, 'steam:110000108af448b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1173, 'society_hotdog', 0, 'steam:11000010d9faf03');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1174, 'society_hotdog', 0, 'steam:11000013f6a1982');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1175, 'society_hotdog', 0, 'steam:1100001354fcb65');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1176, 'society_hotdog', 0, 'steam:110000114e2f44f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1177, 'society_hotdog', 0, 'steam:1100001171b6988');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1178, 'society_hotdog', 0, 'steam:1100001061b9ba2');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1179, 'society_hotdog', 0, 'Char1:11000013c9fc1b6');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1180, 'society_hotdog', 0, 'Char1:110000110ee6772');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1181, 'society_hotdog', 0, 'steam:110000143a3994a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1182, 'society_hotdog', 0, 'steam:110000133b0341a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1183, 'society_hotdog', 0, 'steam:11000011a4918fa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1184, 'society_hotdog', 0, 'steam:1100001197706a7');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1185, 'society_hotdog', 0, 'steam:11000010000f6a8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1186, 'society_hotdog', 0, 'steam:11000013864808c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1187, 'society_hotdog', 0, 'steam:11000013d3d5241');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1188, 'society_hotdog', 0, 'steam:11000013fbe0b1a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1189, 'society_hotdog', 0, 'Char1:11000010bd0e52e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1190, 'society_hotdog', 0, 'Char1:110000135b3bfb5');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1191, 'society_hotdog', 0, 'steam:110000142f2a2fe');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1192, 'society_hotdog', 0, 'steam:110000140cc56b8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1193, 'society_hotdog', 0, 'steam:110000110c65a2e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1194, 'society_hotdog', 0, 'Char1:11000013eb2dcb8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1198, 'society_hotdog', 0, 'steam:110000143bf45ad');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1199, 'society_hotdog', 0, 'Char2:110000117f91815');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1200, 'society_hotdog', 0, 'Char1:1100001388dbbf8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1201, 'society_hotdog', 0, 'steam:11000011351a645');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1202, 'society_hotdog', 0, 'steam:110000132c4330c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1203, 'society_hotdog', 0, 'Char1:11000013db2c267');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1204, 'society_hotdog', 0, 'steam:11000011b5de578');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1206, 'society_hotdog', 0, 'steam:110000132f6959f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1207, 'society_hotdog', 0, 'steam:110000113d3c66e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1210, 'society_hotdog', 0, 'Char1:110000105dc41f8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1211, 'society_hotdog', 0, 'steam:110000114b857af');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1213, 'society_hotdog', 0, 'Char1:11000013e625c9f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1214, 'society_hotdog', 0, 'steam:11000010f191b4f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1215, 'society_hotdog', 0, 'steam:110000118f90600');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1218, 'society_hotdog', 0, 'steam:11000013479c8aa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1220, 'society_hotdog', 0, 'steam:110000115bdbd7b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1221, 'society_hotdog', 0, 'steam:1100001401f71ae');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1222, 'society_hotdog', 0, 'Char1:110000133529c84');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1223, 'society_hotdog', 0, 'Char1:110000143fa63c7');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1224, 'society_hotdog', 0, 'steam:11000013c2c1e60');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1225, 'society_hotdog', 0, 'steam:110000134283c67');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1226, 'society_hotdog', 0, 'steam:110000135370875');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1227, 'society_hotdog', 0, 'steam:11000011af13ccd');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1228, 'society_hotdog', 0, 'steam:11000011527880c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1229, 'society_hotdog', 0, 'steam:1100001073bc27f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1230, 'society_hotdog', 0, 'steam:1100001443a2f9e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1232, 'society_hotdog', 0, 'steam:110000117ff0cdc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1233, 'society_hotdog', 0, 'steam:1100001347d2650');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1234, 'society_hotdog', 0, 'steam:110000143e205bf');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1235, 'society_hotdog', 0, 'steam:11000013fcc2f6a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1236, 'society_hotdog', 0, 'steam:1100001412ffb0b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1237, 'society_hotdog', 0, 'steam:1100001442157ff');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1238, 'society_hotdog', 0, 'steam:110000142e1086b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1239, 'society_hotdog', 0, 'steam:11000013ca0e6bb');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1240, 'society_hotdog', 0, 'steam:110000142965655');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1241, 'society_hotdog', 0, 'steam:11000013bdc7efd');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1242, 'society_hotdog', 0, 'steam:110000105dc41f8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1243, 'society_hotdog', 0, 'steam:11000013a3dcd17');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1244, 'society_hotdog', 0, 'steam:11000013dfa38fa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1245, 'society_hotdog', 0, 'steam:11000011a213461');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1247, 'society_hotdog', 0, 'steam:11000013c450d45');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1248, 'society_hotdog', 0, 'steam:110000113d75bc9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1250, 'society_hotdog', 0, 'steam:11000010b787cd6');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1252, 'society_hotdog', 0, 'steam:11000011c03c1cc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1253, 'society_hotdog', 0, 'steam:11000010e8532dc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1254, 'society_hotdog', 0, 'Char1:110000142de142c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1255, 'society_hotdog', 0, 'steam:11000010cfa9e37');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1257, 'society_hotdog', 0, 'steam:11000014115a97c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1259, 'society_hotdog', 0, 'steam:110000142f16440');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1260, 'society_hotdog', 0, 'steam:110000132048bce');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1261, 'society_hotdog', 0, 'steam:11000013c304c7b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1262, 'society_hotdog', 0, 'steam:110000144194249');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1263, 'society_hotdog', 0, 'steam:11000013e115967');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1264, 'society_hotdog', 0, 'steam:11000013e04ba5d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1266, 'society_hotdog', 0, 'steam:110000116da3d94');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1267, 'society_hotdog', 0, 'steam:11000011baaefae');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1268, 'society_hotdog', 0, 'Char1:1100001347fb0ef');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1269, 'society_hotdog', 0, 'steam:110000143755180');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1271, 'society_hotdog', 0, 'steam:110000141f22093');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1272, 'society_hotdog', 0, 'Char1:110000141611dcb');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1273, 'society_hotdog', 0, 'steam:110000118ec6e33');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1274, 'society_hotdog', 0, 'steam:1100001404aa24e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1275, 'society_hotdog', 0, 'steam:110000131f49911');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1276, 'society_hotdog', 0, 'Char1:110000107b574aa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1277, 'society_hotdog', 0, 'steam:11000011ccf21bf');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1278, 'society_hotdog', 0, 'steam:110000110a8fe3a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1279, 'society_hotdog', 0, 'steam:1100001424f0e5e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1280, 'society_hotdog', 0, 'steam:11000011b7aa745');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1281, 'society_hotdog', 0, 'Char3:11000011b7b7c18');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1282, 'society_hotdog', 0, 'Char2:110000141e99abf');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1283, 'society_hotdog', 0, 'steam:11000013db2c267');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1284, 'society_hotdog', 0, 'steam:110000143fef7f6');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1285, 'society_hotdog', 0, 'Char2:11000013cbd8d30');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1286, 'society_hotdog', 0, 'steam:11000013de38924');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1287, 'society_hotdog', 0, 'steam:11000013d34a0cf');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1289, 'society_hotdog', 0, 'steam:11000014443144d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1291, 'society_hotdog', 0, 'steam:11000010b6a7499');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1292, 'society_hotdog', 0, 'steam:110000117044f68');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1293, 'society_hotdog', 0, 'steam:11000010bfcffcb');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1296, 'society_hotdog', 0, 'steam:11000010c3d22c4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1298, 'society_hotdog', 0, 'steam:110000118f90600');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1300, 'society_hotdog', 0, 'steam:11000014443c21e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1301, 'society_hotdog', 0, 'steam:110000115ac6051');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1303, 'society_hotdog', 0, 'steam:11000010018e94d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1304, 'society_hotdog', 0, 'steam:11000013c3bc1eb');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1305, 'society_hotdog', 0, 'steam:1100001388aac37');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1306, 'society_hotdog', 0, 'steam:1100001424aedc9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1307, 'society_hotdog', 0, 'steam:110000135960589');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1308, 'society_hotdog', 0, 'steam:1100001192415b4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1310, 'society_hotdog', 0, 'steam:110000143370424');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1311, 'society_hotdog', 0, 'steam:11000011c3d4ef2');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1312, 'society_hotdog', 0, 'steam:11000011b134692');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1313, 'society_hotdog', 0, 'Char1:11000013cee6c14');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1314, 'society_hotdog', 0, 'steam:11000010bac92cf');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1315, 'society_hotdog', 0, 'steam:11000010dccedce');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1316, 'society_hotdog', 0, 'steam:11000013f7c4e87');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1317, 'society_hotdog', 0, 'steam:1100001421be3b9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1318, 'society_hotdog', 0, 'Char1:1100001142839f3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1319, 'society_hotdog', 0, 'steam:11000013e61e652');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1320, 'society_hotdog', 0, 'steam:110000135ff01b2');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1321, 'society_hotdog', 0, 'steam:11000010d9faf03');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1322, 'society_hotdog', 0, 'steam:11000013d46e01b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1323, 'society_hotdog', 0, 'Char1:110000138bb8153');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1324, 'society_hotdog', 0, 'steam:1100001343af32d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1325, 'society_hotdog', 0, 'steam:11000011b64b654');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1326, 'society_hotdog', 0, 'Char1:1100001154c57a4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1327, 'society_hotdog', 0, 'steam:110000142167eae');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1328, 'society_hotdog', 0, 'steam:11000013c34e232');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1329, 'society_hotdog', 0, 'steam:1100001367b2370');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1331, 'society_hotdog', 0, 'steam:110000119787d7c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1332, 'society_hotdog', 0, 'steam:110000118e8b8ba');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1333, 'society_hotdog', 0, 'steam:11000013fe9f8fc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1334, 'society_hotdog', 0, 'steam:1100001443619ed');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1335, 'society_hotdog', 0, 'steam:11000010e81f228');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1336, 'society_hotdog', 0, 'Char1:11000013df97bed');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1337, 'society_hotdog', 0, 'Char2:1100001192415b4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1338, 'society_hotdog', 0, 'steam:110000119da237d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1339, 'society_hotdog', 0, 'steam:11000011216a4d9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1340, 'society_hotdog', 0, 'steam:1100001360d594f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1341, 'society_hotdog', 0, 'steam:11000013cbd8d30');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1342, 'society_hotdog', 0, 'steam:11000010bac92cf');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1343, 'society_hotdog', 0, 'steam:110000141c5694a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1344, 'society_hotdog', 0, 'steam:11000011514dd0e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1345, 'society_hotdog', 0, 'Char1:1100001166cf550');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1346, 'society_hotdog', 0, 'steam:11000013e68da8c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1347, 'society_hotdog', 0, 'steam:11000013f887723');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1348, 'society_hotdog', 0, 'steam:110000114e49e99');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1349, 'society_hotdog', 0, 'steam:11000011a5742ef');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1350, 'society_hotdog', 0, 'steam:1100001000e7c1b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1351, 'society_hotdog', 0, 'steam:11000014185a788');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1352, 'society_hotdog', 0, 'steam:11000013e35b8ee');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1353, 'society_hotdog', 0, 'steam:110000113fadbbb');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1354, 'society_hotdog', 0, 'Char1:11000014123edd9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1355, 'society_hotdog', 0, 'steam:1100001331897db');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1357, 'society_hotdog', 0, 'steam:110000114f79f63');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1358, 'society_hotdog', 0, 'steam:11000011aa81b03');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1359, 'society_hotdog', 0, 'steam:1100001332f1e77');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1362, 'society_hotdog', 0, 'steam:110000133305707');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1363, 'society_hotdog', 0, 'steam:11000014188a570');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1364, 'society_hotdog', 0, 'steam:11000013cca8bd3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1365, 'society_hotdog', 0, 'steam:11000013cc7deae');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1366, 'society_hotdog', 0, 'steam:1100001412c717c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1367, 'society_hotdog', 0, 'steam:11000011b5dafaa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1368, 'society_hotdog', 0, 'steam:1100001401088f9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1369, 'society_hotdog', 0, 'steam:11000011b7bcb8e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1370, 'society_hotdog', 0, 'steam:1100001444f147c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1371, 'society_hotdog', 0, 'steam:110000116a7a5ee');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1374, 'society_hotdog', 0, 'Char1:1100001142839f3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1376, 'society_hotdog', 0, 'Char3:11000010e81f228');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1377, 'society_hotdog', 0, 'steam:1100001402d4fbc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1378, 'society_hotdog', 0, 'steam:11000011967b22c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1379, 'society_hotdog', 0, 'steam:110000141fcfb9f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1380, 'society_hotdog', 0, 'steam:110000144561d18');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1381, 'society_hotdog', 0, 'steam:110000142d0b370');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1382, 'society_hotdog', 0, 'steam:1100001022da2b4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1383, 'society_hotdog', 0, 'steam:11000010f66743b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1384, 'society_hotdog', 0, 'steam:1100001443c1782');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1385, 'society_hotdog', 0, 'steam:110000106f3cf53');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1386, 'society_hotdog', 0, 'steam:11000011998a605');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1387, 'society_hotdog', 0, 'steam:11000013fc9f8aa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1388, 'society_hotdog', 0, 'steam:11000011645e0c0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1389, 'society_hotdog', 0, 'steam:1100001410e4496');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1391, 'society_hotdog', 0, 'steam:110000141dd457e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1392, 'society_hotdog', 0, 'steam:110000141ffca01');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1393, 'society_hotdog', 0, 'steam:110000117ff0cdc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1394, 'society_hotdog', 0, 'steam:11000013dab5313');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1395, 'society_hotdog', 0, 'steam:11000013f714459');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1396, 'society_hotdog', 0, 'Char1:1100001346d3e23');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1397, 'society_hotdog', 0, 'steam:11000013f5fa7d4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1398, 'society_hotdog', 0, 'steam:11000014018c681');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1399, 'society_hotdog', 0, 'steam:1100001444b86db');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1400, 'society_hotdog', 0, 'steam:11000011a882ff4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1401, 'society_hotdog', 0, 'Char1:11000013e7bb841');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1402, 'society_hotdog', 0, 'steam:110000106dcd343');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1403, 'society_hotdog', 0, 'Char1:110000103eebf1a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1405, 'society_hotdog', 0, 'Char1:11000013da6c525');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1406, 'society_hotdog', 0, 'steam:11000011318f231');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1407, 'society_hotdog', 0, 'Char1:110000136a45473');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1408, 'society_hotdog', 0, 'steam:11000013e151789');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1409, 'society_hotdog', 0, 'steam:11000013cf656f1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1410, 'society_hotdog', 0, 'steam:11000013e65913e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1411, 'society_hotdog', 0, 'steam:1100001005d3e5c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1412, 'society_hotdog', 0, 'steam:1100001136b1908');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1413, 'society_hotdog', 0, 'Char1:1100001147943fc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1415, 'society_hotdog', 0, 'steam:110000140799100');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1416, 'society_hotdog', 0, 'steam:11000010cc78f3e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1417, 'society_hotdog', 0, 'steam:110000110f13e02');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1418, 'society_hotdog', 0, 'steam:1100001362471b3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1419, 'society_hotdog', 0, 'steam:11000013e578e67');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1420, 'society_hotdog', 0, 'steam:11000011858a982');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1421, 'society_hotdog', 0, 'steam:11000013be14daf');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1422, 'society_hotdog', 0, 'steam:11000013261d27d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1423, 'society_hotdog', 0, 'steam:110000106253991');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1424, 'society_hotdog', 0, 'Char1:11000011d3914c3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1425, 'society_hotdog', 0, 'steam:1100001143f7164');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1426, 'society_hotdog', 0, 'steam:110000140686370');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1427, 'society_hotdog', 0, 'steam:11000014440c2bc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1428, 'society_hotdog', 0, 'steam:11000013e1e7188');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1429, 'society_hotdog', 0, 'steam:11000013f8ee129');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1430, 'society_hotdog', 0, 'steam:11000013fc3535f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1431, 'society_hotdog', 0, 'steam:1100001405a8ade');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1432, 'society_hotdog', 0, 'steam:11000013fefcf48');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1433, 'society_hotdog', 0, 'steam:1100001440eb9d9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1434, 'society_hotdog', 0, 'Char1:11000013d56c290');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1436, 'society_hotdog', 0, 'steam:110000135f98cea');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1437, 'society_hotdog', 0, 'steam:1100001431c2243');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1438, 'society_hotdog', 0, 'steam:110000119420217');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1439, 'society_hotdog', 0, 'steam:11000011a9c6b85');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1441, 'society_hotdog', 0, 'steam:110000117ff0cdc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1442, 'society_hotdog', 0, 'steam:11000011ba2934b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1443, 'society_hotdog', 0, 'steam:11000013d4dcb35');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1444, 'society_hotdog', 0, 'steam:1100001182f9d64');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1445, 'society_hotdog', 0, 'steam:1100001438428f5');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1446, 'society_hotdog', 0, 'steam:110000142ac55d7');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1447, 'society_hotdog', 0, 'steam:110000136e3d12c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1448, 'society_hotdog', 0, 'steam:11000013b273341');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1449, 'society_hotdog', 0, 'steam:1100001366beda8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1451, 'society_hotdog', 0, 'steam:110000138f54256');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1452, 'society_hotdog', 0, 'steam:11000011a855d76');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1453, 'society_hotdog', 0, 'Char1:110000143ad56e4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1454, 'society_hotdog', 0, 'steam:110000142334e49');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1455, 'society_hotdog', 0, 'steam:1100001000cd756');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1456, 'society_hotdog', 0, 'Char1:11000011169c6d4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1457, 'society_hotdog', 0, 'steam:11000013e92e742');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1458, 'society_hotdog', 0, 'steam:11000011a730730');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1459, 'society_hotdog', 0, 'steam:110000144098d94');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1460, 'society_hotdog', 0, 'steam:110000140f81a09');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1461, 'society_hotdog', 0, 'Char5:11000013e77bf3f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1462, 'society_hotdog', 0, 'steam:110000117df71a3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1463, 'society_hotdog', 0, 'steam:110000144588e3b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1464, 'society_hotdog', 0, 'steam:1100001167f83e6');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1465, 'society_hotdog', 0, 'steam:1100001418d1161');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1466, 'society_hotdog', 0, 'steam:110000142e08694');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1467, 'society_hotdog', 0, 'Char1:11000013c577d95');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1468, 'society_hotdog', 0, 'steam:110000142ad9a17');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1469, 'society_hotdog', 0, 'steam:110000135eb81e3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1470, 'society_hotdog', 0, 'steam:1100001161dea02');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1471, 'society_hotdog', 0, 'steam:11000011af9d47c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1472, 'society_hotdog', 0, 'steam:1100001357efc1f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1473, 'society_hotdog', 0, 'steam:1100001110a3e98');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1474, 'society_hotdog', 0, 'steam:11000010f78a4e1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1475, 'society_hotdog', 0, 'steam:110000115b8678f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1476, 'society_hotdog', 0, 'steam:11000013fa824aa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1477, 'society_hotdog', 0, 'steam:11000013fbac4e3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1478, 'society_hotdog', 0, 'steam:110000141611dcb');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1479, 'society_hotdog', 0, 'steam:11000010c7e76ce');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1480, 'society_hotdog', 0, 'Char1:11000014300d124');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1481, 'society_hotdog', 0, 'steam:11000013568da0e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1482, 'society_hotdog', 0, 'steam:110000114fade55');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1483, 'society_hotdog', 0, 'Char1:11000010c1dfc57');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1484, 'society_hotdog', 0, 'steam:11000013a603cf7');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1485, 'society_hotdog', 0, 'steam:11000013d7f6750');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1486, 'society_hotdog', 0, 'Char2:110000117ff0cdc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1487, 'society_hotdog', 0, 'steam:110000135ab582a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1488, 'society_hotdog', 0, 'steam:1100001361c1096');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1489, 'society_hotdog', 0, 'Char1:11000010294a991');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1490, 'society_taco', 2821, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3002, 'society_lawyer', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3003, 'society_unicorn', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3007, 'society_realestate', 355882, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3100, 'society_hotdog', 0, NULL);
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3103, 'society_hotdog', 0, 'steam:11000010b287dfe');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3104, 'society_hotdog', 0, 'steam:11000013dc8945f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3105, 'society_hotdog', 0, 'steam:11000013ca0e6bb');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3106, 'society_hotdog', 0, 'steam:11000013e6f73e4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3107, 'society_hotdog', 0, 'steam:1100001409706b3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3108, 'society_hotdog', 0, 'steam:11000013536a630');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3109, 'society_hotdog', 0, 'steam:11000010d498546');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3110, 'society_hotdog', 0, 'Char1:11000014099c622');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3111, 'society_hotdog', 0, 'steam:1100001150d4361');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3112, 'society_hotdog', 0, 'Char1:110000110ee6772');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3113, 'society_hotdog', 0, 'steam:1100001421c6eef');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3114, 'society_hotdog', 0, 'steam:11000013c808ec6');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3115, 'society_hotdog', 0, 'steam:11000013e11129e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3116, 'society_hotdog', 0, 'steam:11000011bb1b063');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3117, 'society_hotdog', 0, 'steam:110000113df4c54');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3118, 'society_hotdog', 0, 'steam:11000013e5c06c5');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3119, 'society_hotdog', 0, 'steam:110000140893804');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3120, 'society_hotdog', 0, 'steam:110000134b4b40f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3121, 'society_hotdog', 0, 'steam:11000011817331c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3123, 'society_hotdog', 0, 'Char1:110000114efb958');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3124, 'society_hotdog', 0, 'steam:110000131f9bd52');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3125, 'society_hotdog', 0, 'steam:11000011ae3ebec');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3126, 'society_hotdog', 0, 'steam:11000013ec81ca0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3127, 'society_hotdog', 0, 'steam:110000131f9bd52');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3128, 'society_hotdog', 0, 'steam:110000115a67f2d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3129, 'society_hotdog', 0, 'steam:11000013e11e83d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3130, 'society_hotdog', 0, 'Char1:11000011d3914c3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3131, 'society_hotdog', 0, 'Char2:110000143257a35');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3132, 'society_hotdog', 0, 'steam:1100001192415b4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3134, 'society_hotdog', 0, 'steam:1100001445a8f5c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3135, 'society_hotdog', 0, 'Char3:1100001154c57a4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3136, 'society_hotdog', 0, 'steam:11000013b443979');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3137, 'society_hotdog', 0, 'steam:110000136a45473');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3138, 'society_hotdog', 0, 'steam:11000013c63cbe0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3139, 'society_hotdog', 0, 'Char1:11000011169c6d4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3140, 'society_hotdog', 0, 'steam:110000132955a82');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3141, 'society_hotdog', 0, 'steam:11000014068718c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3142, 'society_hotdog', 0, 'steam:110000117e2ab70');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3143, 'society_hotdog', 0, 'steam:110000141822971');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3144, 'society_hotdog', 0, 'steam:11000013f3017d8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3146, 'society_hotdog', 0, 'steam:1100001443fba0b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3147, 'society_hotdog', 0, 'Char1:110000143ad56e4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3148, 'society_hotdog', 0, 'steam:11000013fa824aa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3149, 'society_hotdog', 0, 'steam:1100001198c44f4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3150, 'society_hotdog', 0, 'steam:110000140768874');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3155, 'society_hotdog', 0, 'steam:11000013f23a084');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3156, 'society_hotdog', 0, 'steam:11000013d3a5718');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3157, 'society_hotdog', 0, 'steam:1100001191a6fed');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3158, 'society_hotdog', 0, 'steam:11000011438cffd');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3159, 'society_hotdog', 0, 'steam:110000142a56b1e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3160, 'society_hotdog', 0, 'steam:110000142cbe3f3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3161, 'society_hotdog', 0, 'steam:1100001162cb095');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3162, 'society_hotdog', 0, 'steam:11000011b353fe5');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3163, 'society_hotdog', 0, 'steam:1100001197481b8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3164, 'society_hotdog', 0, 'Char4:11000010eb2606d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3165, 'society_hotdog', 0, 'steam:11000010e38ca19');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3166, 'society_hotdog', 0, 'steam:11000010a989595');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3167, 'society_hotdog', 0, 'steam:11000011590fbc1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3168, 'society_hotdog', 0, 'steam:110000139c9c80b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3169, 'society_hotdog', 0, 'steam:110000118deaa81');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3170, 'society_hotdog', 0, 'steam:110000134e1a596');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3171, 'society_hotdog', 0, 'steam:110000135e86d46');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3172, 'society_hotdog', 0, 'steam:11000010e70d2c5');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3174, 'society_hotdog', 0, 'steam:1100001438c7697');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3175, 'society_hotdog', 0, 'steam:11000010f10aaeb');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3176, 'society_hotdog', 0, 'steam:110000106368234');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3178, 'society_hotdog', 0, 'Char1:110000107b574aa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3179, 'society_hotdog', 0, 'Char1:110000107b574aa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3180, 'society_hotdog', 0, 'Char1:11000014443fd6a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3181, 'society_hotdog', 0, 'Char1:110000111a7b3dc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3183, 'society_hotdog', 0, 'steam:11000014253bc47');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3184, 'society_hotdog', 0, 'Char1:11000010ee31963');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3185, 'society_hotdog', 0, 'steam:11000013dacca06');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3187, 'society_hotdog', 0, 'Char3:110000135d6c3b4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3188, 'society_hotdog', 0, 'steam:110000136bc2ecb');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3189, 'society_hotdog', 0, 'steam:110000133aecdd5');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3190, 'society_hotdog', 0, 'steam:110000110c65a2e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3192, 'society_hotdog', 0, 'steam:11000010f832b9f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3193, 'society_hotdog', 0, 'steam:110000115ac09f3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3194, 'society_hotdog', 0, 'steam:11000013fa824aa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3195, 'society_hotdog', 0, 'steam:11000011a1ea354');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3196, 'society_hotdog', 0, 'steam:11000011a505342');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3198, 'society_hotdog', 0, 'Char2:11000013e11e83d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3199, 'society_hotdog', 0, 'steam:11000014447b2d9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3200, 'society_hotdog', 0, 'steam:1100001138b100a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3201, 'society_hotdog', 0, 'steam:110000135b3bfb5');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3202, 'society_hotdog', 0, 'steam:11000011cc06540');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3203, 'society_hotdog', 0, 'steam:110000132aa40c6');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3204, 'society_hotdog', 0, 'Char3:11000014443fd6a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3205, 'society_hotdog', 0, 'Char2:11000010381eb9d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3206, 'society_hotdog', 0, 'Char3:11000013e11e83d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3207, 'society_hotdog', 0, 'steam:110000134ba22ca');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3208, 'society_hotdog', 0, 'steam:11000013d2576c2');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3209, 'society_hotdog', 0, 'steam:11000013f56fb42');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3211, 'society_hotdog', 0, 'steam:11000014443fd6a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3212, 'society_hotdog', 0, 'Char2:11000010bac92cf');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3213, 'society_hotdog', 0, 'steam:11000013e12afc1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3214, 'society_hotdog', 0, 'steam:11000011a2606fe');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3215, 'society_hotdog', 0, 'Char1:110000107b574aa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3216, 'society_hotdog', 0, 'steam:11000013e3a6c1d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3217, 'society_hotdog', 0, 'steam:110000141e450af');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3218, 'society_hotdog', 0, 'Char3:11000013b443979');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3219, 'society_hotdog', 0, 'steam:110000115694855');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3220, 'society_hotdog', 0, 'Char1:110000139cfcbed');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3221, 'society_hotdog', 0, 'steam:11000011963526b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3222, 'society_hotdog', 0, 'steam:110000104787cd5');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3224, 'society_hotdog', 0, 'Char1:110000111a7b3dc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3225, 'society_hotdog', 0, 'Char2:11000013c9fc1b6');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3226, 'society_hotdog', 0, 'steam:11000013c1361ca');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3227, 'society_hotdog', 0, 'steam:110000141db0874');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3228, 'society_hotdog', 0, 'steam:11000013c7e40d1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3230, 'society_hotdog', 0, 'steam:1100001347a2854');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3231, 'society_hotdog', 0, 'steam:11000013683de59');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3232, 'society_hotdog', 0, 'steam:110000142792cfe');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3233, 'society_hotdog', 0, 'steam:1100001416b8218');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3234, 'society_hotdog', 0, 'steam:11000011af74e0c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3235, 'society_hotdog', 0, 'Char3:110000143ad56e4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3236, 'society_hotdog', 0, 'Char1:110000118e84e95');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3237, 'society_hotdog', 0, 'steam:1100001186412ae');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3238, 'society_hotdog', 0, 'steam:110000141aa88cc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3239, 'society_hotdog', 0, 'Char1:110000116466749');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3240, 'society_hotdog', 0, 'steam:11000010a71440d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3242, 'society_hotdog', 0, 'steam:1100001122755cd');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3244, 'society_hotdog', 0, 'steam:110000104db0451');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3245, 'society_hotdog', 0, 'Char5:110000141611dcb');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3247, 'society_hotdog', 0, 'Char2:11000011967b22c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3248, 'society_hotdog', 0, 'steam:110000116fb3785');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3250, 'society_hotdog', 0, 'steam:11000010eb2606d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3251, 'society_hotdog', 0, 'steam:110000133529c84');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3252, 'society_hotdog', 0, 'steam:110000143e3e28a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3253, 'society_hotdog', 0, 'steam:11000013fe9b2a8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3254, 'society_hotdog', 0, 'steam:110000118cabe4d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3255, 'society_hotdog', 0, 'steam:110000111d20511');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3256, 'society_hotdog', 0, 'steam:1100001388dbbf8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3257, 'society_hotdog', 0, 'Char2:1100001147943fc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3258, 'society_hotdog', 0, 'steam:11000011a7c4864');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3259, 'society_hotdog', 0, 'steam:11000013cee6c14');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3260, 'society_hotdog', 0, 'steam:110000111096316');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3261, 'society_hotdog', 0, 'steam:11000013d131f10');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3262, 'society_hotdog', 0, 'steam:11000013c7e40d1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3263, 'society_hotdog', 0, 'steam:11000013c9fc1b6');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3264, 'society_hotdog', 0, 'steam:110000106e132fc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3265, 'society_hotdog', 0, 'steam:11000013e92b6f0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3266, 'society_hotdog', 0, 'steam:110000134b2ed23');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3268, 'society_hotdog', 0, 'steam:11000013efe5d4b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3269, 'society_hotdog', 0, 'steam:110000143618d09');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3270, 'society_hotdog', 0, 'Char1:110000118f96a40');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3271, 'society_hotdog', 0, 'steam:11000013e25fc55');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3272, 'society_hotdog', 0, 'Char1:11000010381eb9d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3273, 'society_hotdog', 0, 'Char1:110000141691c73');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3274, 'society_hotdog', 0, 'steam:11000013dfc1db6');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3275, 'society_hotdog', 0, 'steam:1100001347fb0ef');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3276, 'society_hotdog', 0, 'steam:110000118e84e95');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3277, 'society_hotdog', 0, 'steam:11000013fbe0b1a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3278, 'society_hotdog', 0, 'steam:11000013585493d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3279, 'society_hotdog', 0, 'Char1:11000010b017b42');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3280, 'society_hotdog', 0, 'steam:11000010ec424bf');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3281, 'society_hotdog', 0, 'steam:11000011aefd824');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3282, 'society_hotdog', 0, 'steam:1100001348fb652');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3283, 'society_hotdog', 0, 'Char1:110000143ef9e5e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3284, 'society_hotdog', 0, 'steam:110000143711757');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3285, 'society_hotdog', 0, 'steam:11000013e1cf8ab');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3286, 'society_hotdog', 0, 'steam:110000118c39f97');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3287, 'society_hotdog', 0, 'steam:1100001056a57ef');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3288, 'society_hotdog', 0, 'steam:11000011379ebe7');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3289, 'society_hotdog', 0, 'steam:11000011adad366');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3290, 'society_hotdog', 0, 'steam:11000011928211b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3291, 'society_hotdog', 0, 'steam:1100001446d73b3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3292, 'society_hotdog', 0, 'steam:1100001124bb713');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3293, 'society_hotdog', 0, 'steam:11000013480a0da');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3294, 'society_hotdog', 0, 'steam:11000013cf0ea76');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3295, 'society_hotdog', 0, 'steam:110000119045b2a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3296, 'society_hotdog', 0, 'steam:11000010a456542');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3297, 'society_hotdog', 0, 'Char1:11000013532b8d3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3298, 'society_hotdog', 0, 'steam:1100001347d142c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3299, 'society_hotdog', 0, 'steam:1100001360d3f71');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3300, 'society_hotdog', 0, 'steam:110000111757b76');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3301, 'society_hotdog', 0, 'Char1:1100001435145a0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3302, 'society_hotdog', 0, 'steam:11000014187b04a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3303, 'society_hotdog', 0, 'steam:1100001410325e6');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3304, 'society_hotdog', 0, 'steam:110000131e38ed2');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3305, 'society_hotdog', 0, 'steam:110000142991d01');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3306, 'society_hotdog', 0, 'steam:110000111c426dc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3307, 'society_hotdog', 0, 'steam:110000142a11fd8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3309, 'society_hotdog', 0, 'steam:1100001448788ca');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3310, 'society_hotdog', 0, 'steam:110000115af3f8d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3311, 'society_hotdog', 0, 'Char1:11000011d2c3821');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3312, 'society_hotdog', 0, 'Char2:11000013e11e83d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3313, 'society_hotdog', 0, 'Char3:11000013b443979');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3314, 'society_hotdog', 0, 'steam:110000144825df4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3315, 'society_hotdog', 0, 'steam:110000116e8b23f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3316, 'society_hotdog', 0, 'steam:11000014367f232');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3317, 'society_hotdog', 0, 'steam:11000013d0a14aa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3318, 'society_hotdog', 0, 'steam:11000011c74cd97');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3319, 'society_hotdog', 0, 'steam:11000013ef25414');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3320, 'society_hotdog', 0, 'steam:110000133b79eaa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3321, 'society_hotdog', 0, 'steam:11000013d1d2a60');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3322, 'society_hotdog', 0, 'steam:11000013d3260b3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3323, 'society_hotdog', 0, 'steam:110000118f96a40');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3324, 'society_hotdog', 0, 'steam:110000116d3fe29');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3325, 'society_hotdog', 0, 'steam:11000011c8ecdac');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3326, 'society_hotdog', 0, 'steam:11000011aba1f9c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3327, 'society_hotdog', 0, 'steam:110000115149446');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3328, 'society_hotdog', 0, 'steam:110000144744ae7');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3329, 'society_hotdog', 0, 'steam:110000138428454');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3330, 'society_hotdog', 0, 'steam:11000013b0aee61');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3332, 'society_hotdog', 0, 'steam:1100001146e7f18');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3333, 'society_hotdog', 0, 'steam:11000013f8d4b03');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3334, 'society_hotdog', 0, 'steam:11000013e3a6c1d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3335, 'society_hotdog', 0, 'steam:1100001364c8801');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3336, 'society_hotdog', 0, 'steam:1100001141188cc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3337, 'society_hotdog', 0, 'steam:110000112a62ce3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3338, 'society_hotdog', 0, 'Char1:11000010edfc70c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3339, 'society_hotdog', 0, 'steam:110000136f973ca');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3340, 'society_hotdog', 0, 'Char1:11000013c6fa1db');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3341, 'society_hotdog', 0, 'steam:1100001419d0d81');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3342, 'society_hotdog', 0, 'steam:11000013c450d45');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3343, 'society_hotdog', 0, 'Char1:11000013dc65968');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3344, 'society_hotdog', 0, 'steam:11000011637e3aa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3345, 'society_hotdog', 0, 'steam:11000011abbcdd2');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3346, 'society_hotdog', 0, 'steam:11000014475c8aa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3347, 'society_hotdog', 0, 'steam:11000013b0aee61');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3348, 'society_hotdog', 0, 'steam:11000011ad1d6b0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3349, 'society_hotdog', 0, 'steam:11000013e0a73d0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3350, 'society_hotdog', 0, 'steam:110000111f25660');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3351, 'society_hotdog', 0, 'steam:11000011a7b34a5');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3352, 'society_hotdog', 0, 'steam:110000135710604');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3353, 'society_hotdog', 0, 'steam:11000013442352f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3354, 'society_hotdog', 0, 'Char1:110000114bbac9a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3355, 'society_hotdog', 0, 'steam:110000144338b4c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3356, 'society_hotdog', 0, 'steam:110000141611dcb');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3357, 'society_hotdog', 0, 'steam:11000011cfb36fd');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3360, 'society_hotdog', 0, 'steam:110000116de58e1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3361, 'society_hotdog', 0, 'Char1:11000011d2c3821');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3362, 'society_hotdog', 0, 'steam:11000013e4fe3da');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3363, 'society_hotdog', 0, 'steam:11000010b550415');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3364, 'society_hotdog', 0, 'steam:11000013de14e39');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3365, 'society_hotdog', 0, 'steam:1100001340b9d07');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3366, 'society_hotdog', 0, 'steam:11000010ec424bf');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3367, 'society_hotdog', 0, 'steam:11000013f1d0f04');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3368, 'society_hotdog', 0, 'steam:1100001376579c1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3369, 'society_hotdog', 0, 'steam:110000134b5ddb1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3370, 'society_hotdog', 0, 'steam:110000110ee6772');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3371, 'society_hotdog', 0, 'steam:1100001147943fc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3372, 'society_hotdog', 0, 'steam:11000010b017b42');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3373, 'society_hotdog', 0, 'steam:1100001370b1636');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3374, 'society_hotdog', 0, 'Char1:110000142935b66');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3375, 'society_hotdog', 0, 'Char1:11000011169c6d4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3378, 'society_hotdog', 0, 'steam:11000011a104ed3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3380, 'society_hotdog', 0, 'steam:110000132b2424f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3381, 'society_hotdog', 0, 'steam:11000013e11e83d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3382, 'society_hotdog', 0, 'Char3:110000135b3bfb5');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3384, 'society_hotdog', 0, 'steam:11000013c2883d4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3385, 'society_hotdog', 0, 'steam:1100001365e10bf');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3386, 'society_hotdog', 0, 'steam:11000011169c6d4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3387, 'society_hotdog', 0, 'steam:110000134b5ddb1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3388, 'society_hotdog', 0, 'steam:110000134ba22ca');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3389, 'society_hotdog', 0, 'steam:11000010b32602f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3390, 'society_hotdog', 0, 'steam:1100001438428f5');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3391, 'society_hotdog', 0, 'Char1:110000114bbac9a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3393, 'society_hotdog', 0, 'steam:11000011a2606fe');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3394, 'society_hotdog', 0, 'steam:110000119c0eb0c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3395, 'society_hotdog', 0, 'steam:11000011320b735');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3396, 'society_hotdog', 0, 'steam:11000011113544c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3397, 'society_hotdog', 0, 'steam:11000011d2c3821');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3398, 'society_hotdog', 0, 'steam:110000142935b66');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3399, 'society_hotdog', 0, 'steam:11000010a2f701b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3400, 'society_hotdog', 0, 'Char3:11000013b0aee61');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3401, 'society_hotdog', 0, 'steam:11000010c9afdd9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3403, 'society_hotdog', 0, 'steam:110000111c50769');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3404, 'society_hotdog', 0, 'steam:1100001361ca488');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3405, 'society_hotdog', 0, 'steam:11000011d3f19dd');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3406, 'society_hotdog', 0, 'steam:110000138e6cb6d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3407, 'society_hotdog', 0, 'steam:110000107163efb');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3408, 'society_hotdog', 0, 'Char1:11000013c59f720');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3410, 'society_hotdog', 0, 'Char2:1100001417e2fcc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3411, 'society_hotdog', 0, 'Char2:11000011438cffd');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3412, 'society_hotdog', 0, 'steam:11000013dfa481d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3413, 'society_hotdog', 0, 'Char2:11000010edfc70c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3414, 'society_hotdog', 0, 'steam:11000013f50e36b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3417, 'society_hotdog', 0, 'steam:11000013f45719e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3419, 'society_hotdog', 0, 'steam:11000013e5aa2ca');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3420, 'society_hotdog', 0, 'steam:11000010381eb9d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3421, 'society_hotdog', 0, 'Char1:110000107b574aa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3422, 'society_hotdog', 0, 'steam:110000137677f6e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3423, 'society_hotdog', 0, 'Char5:11000014235c8cc');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3424, 'society_hotdog', 0, 'steam:1100001165ef931');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3425, 'society_hotdog', 0, 'Char1:11000013c3eabce');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3426, 'society_hotdog', 0, 'steam:11000013623058a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3427, 'society_hotdog', 0, 'steam:1100001338baa5c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3428, 'society_hotdog', 0, 'steam:110000141e56b2b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3429, 'society_hotdog', 0, 'steam:11000013c1baf11');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3430, 'society_hotdog', 0, 'steam:110000143469755');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3431, 'society_hotdog', 0, 'steam:11000013e6ccdab');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3432, 'society_hotdog', 0, 'steam:1100001422f08d9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3433, 'society_hotdog', 0, 'steam:11000011599c2e9');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3434, 'society_hotdog', 0, 'Char1:1100001160ca893');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3435, 'society_hotdog', 0, 'steam:1100001153f89d1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3437, 'society_hotdog', 0, 'Char4:110000110ee6772');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3438, 'society_hotdog', 0, 'steam:1100001154c57a4');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3439, 'society_hotdog', 0, 'steam:110000114bbac9a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3441, 'society_hotdog', 0, 'steam:11000013dd166a1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3442, 'society_hotdog', 0, 'steam:11000011a30a1a6');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3443, 'society_hotdog', 0, 'steam:110000139cfcbed');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3444, 'society_hotdog', 0, 'Char1:11000013c37faf5');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3445, 'society_hotdog', 0, 'steam:1100001403ec353');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3446, 'society_hotdog', 0, 'steam:11000013dc65968');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3447, 'society_hotdog', 0, 'steam:11000010e48c1e5');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3448, 'society_hotdog', 0, 'steam:11000011ade5f23');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3449, 'society_hotdog', 0, 'steam:11000013f5cb873');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3450, 'society_hotdog', 0, 'steam:1100001037b05c1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3451, 'society_hotdog', 0, 'steam:1100001117fc212');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3453, 'society_hotdog', 0, 'steam:11000010a2f701b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3454, 'society_hotdog', 0, 'steam:11000013fccadc2');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3455, 'society_hotdog', 0, 'steam:11000013386bbcd');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3456, 'society_hotdog', 0, 'steam:1100001362c422e');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3457, 'society_hotdog', 0, 'steam:11000013c6fa1db');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3458, 'society_hotdog', 0, 'steam:11000011bd9371b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3460, 'society_hotdog', 0, 'steam:1100001428e4f60');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3461, 'society_hotdog', 0, 'steam:11000010f191b4f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3462, 'society_hotdog', 0, 'steam:11000010e7046fd');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3463, 'society_hotdog', 0, 'steam:11000013d149e60');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3464, 'society_hotdog', 0, 'steam:11000011d3914c3');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3465, 'society_hotdog', 0, 'steam:11000013edf9f76');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3466, 'society_hotdog', 0, 'steam:110000116ff8048');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3467, 'society_hotdog', 0, 'steam:11000013db2306f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3468, 'society_hotdog', 0, 'Char1:1100001444b4cbd');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3469, 'society_hotdog', 0, 'steam:11000011578c5b1');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3470, 'society_hotdog', 0, 'Char1:110000114785f47');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3471, 'society_hotdog', 0, 'steam:110000114efb958');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3472, 'society_hotdog', 0, 'Char2:11000011320b735');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3473, 'society_hotdog', 0, 'steam:1100001144c9f03');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3475, 'society_hotdog', 0, 'steam:11000011564c8b8');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3476, 'society_hotdog', 0, 'steam:110000142585a4b');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3477, 'society_hotdog', 0, 'Char1:1100001444295b0');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3478, 'society_hotdog', 0, 'steam:11000014243bfc7');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3479, 'society_hotdog', 0, 'steam:11000010edfc70c');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3480, 'society_hotdog', 0, 'steam:11000013d7ec991');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3482, 'society_hotdog', 0, 'steam:110000114785f47');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3483, 'society_hotdog', 0, 'steam:1100001148c2737');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3484, 'society_hotdog', 0, 'steam:1100001114c9e32');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3485, 'society_hotdog', 0, 'steam:11000010bef4caa');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3486, 'society_hotdog', 0, 'steam:11000011b399ecf');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3487, 'society_hotdog', 0, 'steam:110000136168635');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3488, 'society_hotdog', 0, 'steam:1100001407e91c5');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3489, 'society_hotdog', 0, 'steam:11000013fd2cb8d');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3490, 'society_hotdog', 0, 'steam:110000112c8b65a');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3491, 'society_hotdog', 0, 'steam:1100001176d53c1');
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Dumping structure for table evrp.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.addon_inventory: ~230 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_1', 'BILINGSGATE MOTEL Room 1 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_10', 'BILINGSGATE MOTEL Room 10 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_10_bed', 'BILINGSGATE MOTEL Room 10 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_11', 'BILINGSGATE MOTEL Room 11 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_11_bed', 'BILINGSGATE MOTEL Room 11 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_12', 'BILINGSGATE MOTEL Room 12 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_12_bed', 'BILINGSGATE MOTEL Room 12 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_14', 'BILINGSGATE MOTEL Room 14 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_14_bed', 'BILINGSGATE MOTEL Room 14 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_15', 'BILINGSGATE MOTEL Room 15 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_15_bed', 'BILINGSGATE MOTEL Room 15 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_1_bed', 'BILINGSGATE MOTEL Room 1 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_2', 'BILINGSGATE MOTEL Room 2 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_2_bed', 'BILINGSGATE MOTEL Room 2 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_3', 'BILINGSGATE MOTEL Room 3 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_3_bed', 'BILINGSGATE MOTEL Room 3 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_4', 'BILINGSGATE MOTEL Room 4 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_4_bed', 'BILINGSGATE MOTEL Room 4 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_5', 'BILINGSGATE MOTEL Room 5 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_5_bed', 'BILINGSGATE MOTEL Room 5 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_6', 'BILINGSGATE MOTEL Room 6 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_6_bed', 'BILINGSGATE MOTEL Room 6 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_7', 'BILINGSGATE MOTEL Room 7 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_7_bed', 'BILINGSGATE MOTEL Room 7 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_8', 'BILINGSGATE MOTEL Room 8 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_8_bed', 'BILINGSGATE MOTEL Room 8 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_1', 'DREAM VIEW MOTEL Room 1 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_11', 'DREAM VIEW MOTEL Room 11 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_11_bed', 'DREAM VIEW MOTEL Room 11 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_12', 'DREAM VIEW MOTEL Room 12 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_12_bed', 'DREAM VIEW MOTEL Room 12 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_13', 'DREAM VIEW MOTEL Room 13 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_13_bed', 'DREAM VIEW MOTEL Room 13 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_14', 'DREAM VIEW MOTEL Room 14 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_14_bed', 'DREAM VIEW MOTEL Room 14 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_15', 'DREAM VIEW MOTEL Room 15 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_15_bed', 'DREAM VIEW MOTEL Room 15 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_16', 'DREAM VIEW MOTEL Room 16 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_16_bed', 'DREAM VIEW MOTEL Room 16 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_17', 'DREAM VIEW MOTEL Room 17 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_17_bed', 'DREAM VIEW MOTEL Room 17 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_18', 'DREAM VIEW MOTEL Room 18 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_18_bed', 'DREAM VIEW MOTEL Room 18 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_19', 'DREAM VIEW MOTEL Room 19 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_19_bed', 'DREAM VIEW MOTEL Room 19 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_1_bed', 'DREAM VIEW MOTEL Room 1 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_2', 'DREAM VIEW MOTEL Room 2 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_20', 'DREAM VIEW MOTEL Room 20 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_20_bed', 'DREAM VIEW MOTEL Room 20 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_21', 'DREAM VIEW MOTEL Room 21 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_21_bed', 'DREAM VIEW MOTEL Room 21 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_22', 'DREAM VIEW MOTEL Room 22 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_22_bed', 'DREAM VIEW MOTEL Room 22 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_2_bed', 'DREAM VIEW MOTEL Room 2 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_3', 'DREAM VIEW MOTEL Room 3 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_3_bed', 'DREAM VIEW MOTEL Room 3 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_4', 'DREAM VIEW MOTEL Room 4 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_4_bed', 'DREAM VIEW MOTEL Room 4 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_5', 'DREAM VIEW MOTEL Room 5 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_5_bed', 'DREAM VIEW MOTEL Room 5 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_6', 'DREAM VIEW MOTEL Room 6 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_6_bed', 'DREAM VIEW MOTEL Room 6 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_7', 'DREAM VIEW MOTEL Room 7 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_7_bed', 'DREAM VIEW MOTEL Room 7 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_8', 'DREAM VIEW MOTEL Room 8 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_8_bed', 'DREAM VIEW MOTEL Room 8 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_9', 'DREAM VIEW MOTEL Room 9 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_9_bed', 'DREAM VIEW MOTEL Room 9 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_1', 'PERRERA BEACH MOTEL Room 1 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_10', 'PERRERA BEACH MOTEL Room 10 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_10_bed', 'PERRERA BEACH MOTEL Room 10 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_11', 'PERRERA BEACH MOTEL Room 11 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_11_bed', 'PERRERA BEACH MOTEL Room 11 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_12', 'PERRERA BEACH MOTEL Room 12 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_12_bed', 'PERRERA BEACH MOTEL Room 12 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_13', 'PERRERA BEACH MOTEL Room 13 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_13_bed', 'PERRERA BEACH MOTEL Room 13 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_14', 'PERRERA BEACH MOTEL Room 14 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_14_bed', 'PERRERA BEACH MOTEL Room 14 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_15', 'PERRERA BEACH MOTEL Room 15 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_15_bed', 'PERRERA BEACH MOTEL Room 15 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_16', 'PERRERA BEACH MOTEL Room 16 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_16_bed', 'PERRERA BEACH MOTEL Room 16 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_17', 'PERRERA BEACH MOTEL Room 17 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_17_bed', 'PERRERA BEACH MOTEL Room 17 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_18', 'PERRERA BEACH MOTEL Room 18 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_18_bed', 'PERRERA BEACH MOTEL Room 18 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_19', 'PERRERA BEACH MOTEL Room 19 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_19_bed', 'PERRERA BEACH MOTEL Room 19 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_1_bed', 'PERRERA BEACH MOTEL Room 1 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_2', 'PERRERA BEACH MOTEL Room 2 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_20', 'PERRERA BEACH MOTEL Room 20 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_20_bed', 'PERRERA BEACH MOTEL Room 20 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_21', 'PERRERA BEACH MOTEL Room 21 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_21_bed', 'PERRERA BEACH MOTEL Room 21 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_22', 'PERRERA BEACH MOTEL Room 22 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_22_bed', 'PERRERA BEACH MOTEL Room 22 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_23', 'PERRERA BEACH MOTEL Room 23 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_23_bed', 'PERRERA BEACH MOTEL Room 23 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_24', 'PERRERA BEACH MOTEL Room 24 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_24_bed', 'PERRERA BEACH MOTEL Room 24 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_25', 'PERRERA BEACH MOTEL Room 25 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_25_bed', 'PERRERA BEACH MOTEL Room 25 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_26', 'PERRERA BEACH MOTEL Room 26 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_26_bed', 'PERRERA BEACH MOTEL Room 26 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_27', 'PERRERA BEACH MOTEL Room 27 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_27_bed', 'PERRERA BEACH MOTEL Room 27 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_28', 'PERRERA BEACH MOTEL Room 28 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_28_bed', 'PERRERA BEACH MOTEL Room 28 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_29', 'PERRERA BEACH MOTEL Room 29 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_29_bed', 'PERRERA BEACH MOTEL Room 29 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_2_bed', 'PERRERA BEACH MOTEL Room 2 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_3', 'PERRERA BEACH MOTEL Room 3 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_30', 'PERRERA BEACH MOTEL Room 30 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_30_bed', 'PERRERA BEACH MOTEL Room 30 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_31', 'PERRERA BEACH MOTEL Room 31 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_31_bed', 'PERRERA BEACH MOTEL Room 31 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_32', 'PERRERA BEACH MOTEL Room 32 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_32_bed', 'PERRERA BEACH MOTEL Room 32 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_33', 'PERRERA BEACH MOTEL Room 33 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_33_bed', 'PERRERA BEACH MOTEL Room 33 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_34', 'PERRERA BEACH MOTEL Room 34 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_34_bed', 'PERRERA BEACH MOTEL Room 34 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_35', 'PERRERA BEACH MOTEL Room 35 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_35_bed', 'PERRERA BEACH MOTEL Room 35 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_36', 'PERRERA BEACH MOTEL Room 36 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_36_bed', 'PERRERA BEACH MOTEL Room 36 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_37', 'PERRERA BEACH MOTEL Room 37 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_37_bed', 'PERRERA BEACH MOTEL Room 37 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_38', 'PERRERA BEACH MOTEL Room 38 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_38_bed', 'PERRERA BEACH MOTEL Room 38 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_3_bed', 'PERRERA BEACH MOTEL Room 3 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_4', 'PERRERA BEACH MOTEL Room 4 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_4_bed', 'PERRERA BEACH MOTEL Room 4 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_5', 'PERRERA BEACH MOTEL Room 5 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_5_bed', 'PERRERA BEACH MOTEL Room 5 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_6', 'PERRERA BEACH MOTEL Room 6 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_6_bed', 'PERRERA BEACH MOTEL Room 6 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_7', 'PERRERA BEACH MOTEL Room 7 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_7_bed', 'PERRERA BEACH MOTEL Room 7 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_8', 'PERRERA BEACH MOTEL Room 8 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_8_bed', 'PERRERA BEACH MOTEL Room 8 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_9', 'PERRERA BEACH MOTEL Room 9 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_9_bed', 'PERRERA BEACH MOTEL Room 9 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_1', 'THE PINK CAGE MOTEL Room 1 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_11', 'THE PINK CAGE MOTEL Room 11 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_11_bed', 'THE PINK CAGE MOTEL Room 11 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_12', 'THE PINK CAGE MOTEL Room 12 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_12_bed', 'THE PINK CAGE MOTEL Room 12 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_13', 'THE PINK CAGE MOTEL Room 13 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_13_bed', 'THE PINK CAGE MOTEL Room 13 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_14', 'THE PINK CAGE MOTEL Room 14 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_14_bed', 'THE PINK CAGE MOTEL Room 14 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_15', 'THE PINK CAGE MOTEL Room 15 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_15_bed', 'THE PINK CAGE MOTEL Room 15 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_16', 'THE PINK CAGE MOTEL Room 16 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_16_bed', 'THE PINK CAGE MOTEL Room 16 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_17', 'THE PINK CAGE MOTEL Room 17 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_17_bed', 'THE PINK CAGE MOTEL Room 17 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_18', 'THE PINK CAGE MOTEL Room 18 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_18_bed', 'THE PINK CAGE MOTEL Room 18 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_19', 'THE PINK CAGE MOTEL Room 19 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_19_bed', 'THE PINK CAGE MOTEL Room 19 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_1_bed', 'THE PINK CAGE MOTEL Room 1 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_2', 'THE PINK CAGE MOTEL Room 2 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_20', 'THE PINK CAGE MOTEL Room 20 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_20_bed', 'THE PINK CAGE MOTEL Room 20 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_21', 'THE PINK CAGE MOTEL Room 21 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_21_bed', 'THE PINK CAGE MOTEL Room 21 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_22', 'THE PINK CAGE MOTEL Room 22 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_22_bed', 'THE PINK CAGE MOTEL Room 22 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_23', 'THE PINK CAGE MOTEL Room 23 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_23_bed', 'THE PINK CAGE MOTEL Room 23 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_24', 'THE PINK CAGE MOTEL Room 24 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_24_bed', 'THE PINK CAGE MOTEL Room 24 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_25', 'THE PINK CAGE MOTEL Room 25 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_25_bed', 'THE PINK CAGE MOTEL Room 25 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_26', 'THE PINK CAGE MOTEL Room 26 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_26_bed', 'THE PINK CAGE MOTEL Room 26 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_27', 'THE PINK CAGE MOTEL Room 27 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_27_bed', 'THE PINK CAGE MOTEL Room 27 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_28', 'THE PINK CAGE MOTEL Room 28 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_28_bed', 'THE PINK CAGE MOTEL Room 28 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_29', 'THE PINK CAGE MOTEL Room 29 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_29_bed', 'THE PINK CAGE MOTEL Room 29 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_2_bed', 'THE PINK CAGE MOTEL Room 2 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_3', 'THE PINK CAGE MOTEL Room 3 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_30', 'THE PINK CAGE MOTEL Room 30 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_30_bed', 'THE PINK CAGE MOTEL Room 30 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_31', 'THE PINK CAGE MOTEL Room 31 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_31_bed', 'THE PINK CAGE MOTEL Room 31 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_32', 'THE PINK CAGE MOTEL Room 32 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_32_bed', 'THE PINK CAGE MOTEL Room 32 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_33', 'THE PINK CAGE MOTEL Room 33 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_33_bed', 'THE PINK CAGE MOTEL Room 33 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_34', 'THE PINK CAGE MOTEL Room 34 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_34_bed', 'THE PINK CAGE MOTEL Room 34 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_36', 'THE PINK CAGE MOTEL Room 36 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_36_bed', 'THE PINK CAGE MOTEL Room 36 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_37', 'THE PINK CAGE MOTEL Room 37 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_37_bed', 'THE PINK CAGE MOTEL Room 37 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_39', 'THE PINK CAGE MOTEL Room 39 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_39_bed', 'THE PINK CAGE MOTEL Room 39 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_3_bed', 'THE PINK CAGE MOTEL Room 3 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_4', 'THE PINK CAGE MOTEL Room 4 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_4_bed', 'THE PINK CAGE MOTEL Room 4 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_5a', 'THE PINK CAGE MOTEL Room 5a Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_5a_bed', 'THE PINK CAGE MOTEL Room 5a Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_5b', 'THE PINK CAGE MOTEL Room 5b Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_5b_bed', 'THE PINK CAGE MOTEL Room 5b Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_6', 'THE PINK CAGE MOTEL Room 6 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_6_bed', 'THE PINK CAGE MOTEL Room 6 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_7', 'THE PINK CAGE MOTEL Room 7 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_7_bed', 'THE PINK CAGE MOTEL Room 7 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_8', 'THE PINK CAGE MOTEL Room 8 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_8_bed', 'THE PINK CAGE MOTEL Room 8 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_9', 'THE PINK CAGE MOTEL Room 9 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_9_bed', 'THE PINK CAGE MOTEL Room 9 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_13', 'THE RANCHO MOTEL Room 13 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_13_bed', 'THE RANCHO MOTEL Room 13 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_14', 'THE RANCHO MOTEL Room 14 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_14_bed', 'THE RANCHO MOTEL Room 14 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_15a', 'THE RANCHO MOTEL Room 15a Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_15a_bed', 'THE RANCHO MOTEL Room 15a Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_15b', 'THE RANCHO MOTEL Room 15b Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_15b_bed', 'THE RANCHO MOTEL Room 15b Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_16', 'THE RANCHO MOTEL Room 16 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_16_bed', 'THE RANCHO MOTEL Room 16 Motel Bed Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_17', 'THE RANCHO MOTEL Room 17 Motel Storage', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_17_bed', 'THE RANCHO MOTEL Room 17 Motel Bed Storage', 1);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- Dumping structure for table evrp.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.addon_inventory_items: ~8 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
	(1, 'society_cardealer', 'phone', -1, NULL);
INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
	(2, 'society_cardealer', 'bread', -5, NULL);
INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
	(3, 'society_cardealer', 'hamburger', -5, NULL);
INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
	(4, 'society_cardealer', 'water', -5, NULL);
INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
	(5, 'society_cardealer', 'fixkit', -5, NULL);
INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
	(6, 'society_taxi', 'bread', 0, NULL);
INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
	(7, 'society_taxi', 'water', 0, NULL);
INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
	(8, 'society_cardealer', 'medkit', -5, NULL);
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- Dumping structure for table evrp.allhousing
CREATE TABLE IF NOT EXISTS `allhousing` (
  `id` int(11) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `ownername` varchar(50) NOT NULL,
  `owned` tinyint(4) NOT NULL,
  `price` int(11) NOT NULL,
  `resalepercent` int(11) NOT NULL,
  `resalejob` varchar(50) NOT NULL,
  `entry` longtext NOT NULL,
  `garage` longtext NOT NULL,
  `furniture` longtext NOT NULL,
  `shell` varchar(50) NOT NULL,
  `shells` longtext NOT NULL,
  `housekeys` longtext NOT NULL,
  `wardrobe` longtext NOT NULL,
  `inventory` longtext NOT NULL,
  `inventorylocation` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.allhousing: ~0 rows (approximately)
/*!40000 ALTER TABLE `allhousing` DISABLE KEYS */;
/*!40000 ALTER TABLE `allhousing` ENABLE KEYS */;

-- Dumping structure for table evrp.apartments
CREATE TABLE IF NOT EXISTS `apartments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `citizenid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table evrp.apartments: ~2 rows (approximately)
/*!40000 ALTER TABLE `apartments` DISABLE KEYS */;
INSERT INTO `apartments` (`id`, `identifier`, `name`, `type`, `label`, `citizenid`) VALUES
	(1, 'Char3:110000107b574aa', 'apartment53005', 'apartment5', 'Fantastic Plaza 3005', NULL);
INSERT INTO `apartments` (`id`, `identifier`, `name`, `type`, `label`, `citizenid`) VALUES
	(2, 'steam:1100001176d53c1', 'apartment15190', 'apartment1', 'South Rockford Drive 5190', NULL);
INSERT INTO `apartments` (`id`, `identifier`, `name`, `type`, `label`, `citizenid`) VALUES
	(3, 'steam:110000107b574aa', 'apartment5793', 'apartment5', 'Fantastic Plaza 793', NULL);
/*!40000 ALTER TABLE `apartments` ENABLE KEYS */;

-- Dumping structure for table evrp.baninfo
CREATE TABLE IF NOT EXISTS `baninfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table evrp.baninfo: ~2 rows (approximately)
/*!40000 ALTER TABLE `baninfo` DISABLE KEYS */;
INSERT INTO `baninfo` (`id`, `license`, `identifier`, `liveid`, `xblid`, `discord`, `playerip`, `playername`) VALUES
	(1, 'license:af87b1a26b31ec2ee38d85b14f5f47f35b18c259', 'steam:110000107b574aa', 'live:985154175461683', 'xbl:2535426249657373', 'discord:259659015393509387', 'ip:89.138.175.116', 'Liquid');
INSERT INTO `baninfo` (`id`, `license`, `identifier`, `liveid`, `xblid`, `discord`, `playerip`, `playername`) VALUES
	(2, 'license:fc32ee9a53c951c8d7748248ad2596da152c05e7', 'steam:1100001176d53c1', NULL, NULL, 'discord:263010997793587201', 'ip:77.137.151.139', 'PsyD33X');
/*!40000 ALTER TABLE `baninfo` ENABLE KEYS */;

-- Dumping structure for table evrp.bank_transfer
CREATE TABLE IF NOT EXISTS `bank_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.bank_transfer: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_transfer` ENABLE KEYS */;

-- Dumping structure for table evrp.banlist
CREATE TABLE IF NOT EXISTS `banlist` (
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`license`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table evrp.banlist: ~0 rows (approximately)
/*!40000 ALTER TABLE `banlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `banlist` ENABLE KEYS */;

-- Dumping structure for table evrp.banlisthistory
CREATE TABLE IF NOT EXISTS `banlisthistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table evrp.banlisthistory: ~0 rows (approximately)
/*!40000 ALTER TABLE `banlisthistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `banlisthistory` ENABLE KEYS */;

-- Dumping structure for table evrp.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8_bin NOT NULL,
  `sender` varchar(255) COLLATE utf8_bin NOT NULL,
  `target_type` varchar(50) COLLATE utf8_bin NOT NULL,
  `target` varchar(255) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.billing: ~0 rows (approximately)
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;

-- Dumping structure for table evrp.bought_houses
CREATE TABLE IF NOT EXISTS `bought_houses` (
  `houseid` int(50) NOT NULL,
  PRIMARY KEY (`houseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table evrp.bought_houses: ~0 rows (approximately)
/*!40000 ALTER TABLE `bought_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `bought_houses` ENABLE KEYS */;

-- Dumping structure for table evrp.cardealer_vehicles
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) COLLATE utf8_bin NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.cardealer_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;

-- Dumping structure for table evrp.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8_bin NOT NULL,
  `firstname` varchar(255) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(255) COLLATE utf8_bin NOT NULL,
  `dateofbirth` varchar(255) COLLATE utf8_bin NOT NULL,
  `sex` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'M',
  `height` varchar(128) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.characters: ~2 rows (approximately)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
	(1, 'Char3:110000107b574aa', 'ליקוויד', 'ליקוויד', '19.10.1999', 'm', '200');
INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
	(2, 'steam:1100001176d53c1', 'ליאור', 'אברגל', '22.05.1998', 'm', '200');
INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
	(3, 'steam:110000107b574aa', 'ליקוויד', 'ליקוויד', '19.10.1999', 'm', '200');
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Dumping structure for table evrp.characters_motels
CREATE TABLE IF NOT EXISTS `characters_motels` (
  `userIdentifier` varchar(50) NOT NULL,
  `motelData` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table evrp.characters_motels: ~0 rows (approximately)
/*!40000 ALTER TABLE `characters_motels` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_motels` ENABLE KEYS */;

-- Dumping structure for table evrp.characters_storages
CREATE TABLE IF NOT EXISTS `characters_storages` (
  `storageId` varchar(255) NOT NULL,
  `storageData` longtext NOT NULL,
  PRIMARY KEY (`storageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table evrp.characters_storages: ~0 rows (approximately)
/*!40000 ALTER TABLE `characters_storages` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_storages` ENABLE KEYS */;

-- Dumping structure for table evrp.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.datastore: ~386 rows (approximately)
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_1', 'BAYVIEW LODGE MOTEL Room 1 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_10', 'BAYVIEW LODGE MOTEL Room 10 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_10_bed', 'BAYVIEW LODGE MOTEL Room 10 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_1_bed', 'BAYVIEW LODGE MOTEL Room 1 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_2', 'BAYVIEW LODGE MOTEL Room 2 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_2_bed', 'BAYVIEW LODGE MOTEL Room 2 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_3', 'BAYVIEW LODGE MOTEL Room 3 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_3_bed', 'BAYVIEW LODGE MOTEL Room 3 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_4', 'BAYVIEW LODGE MOTEL Room 4 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_4_bed', 'BAYVIEW LODGE MOTEL Room 4 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_5', 'BAYVIEW LODGE MOTEL Room 5 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_5_bed', 'BAYVIEW LODGE MOTEL Room 5 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_6', 'BAYVIEW LODGE MOTEL Room 6 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_6_bed', 'BAYVIEW LODGE MOTEL Room 6 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_7', 'BAYVIEW LODGE MOTEL Room 7 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_7_bed', 'BAYVIEW LODGE MOTEL Room 7 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_8', 'BAYVIEW LODGE MOTEL Room 8 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_8_bed', 'BAYVIEW LODGE MOTEL Room 8 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_9', 'BAYVIEW LODGE MOTEL Room 9 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BayviewLodgeMotel_9_bed', 'BAYVIEW LODGE MOTEL Room 9 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_1', 'BILINGSGATE MOTEL Room 1 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_10', 'BILINGSGATE MOTEL Room 10 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_10_bed', 'BILINGSGATE MOTEL Room 10 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_11', 'BILINGSGATE MOTEL Room 11 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_11_bed', 'BILINGSGATE MOTEL Room 11 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_12', 'BILINGSGATE MOTEL Room 12 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_12_bed', 'BILINGSGATE MOTEL Room 12 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_14', 'BILINGSGATE MOTEL Room 14 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_14_bed', 'BILINGSGATE MOTEL Room 14 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_15', 'BILINGSGATE MOTEL Room 15 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_15_bed', 'BILINGSGATE MOTEL Room 15 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_1_bed', 'BILINGSGATE MOTEL Room 1 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_2', 'BILINGSGATE MOTEL Room 2 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_2_bed', 'BILINGSGATE MOTEL Room 2 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_3', 'BILINGSGATE MOTEL Room 3 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_3_bed', 'BILINGSGATE MOTEL Room 3 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_4', 'BILINGSGATE MOTEL Room 4 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_4_bed', 'BILINGSGATE MOTEL Room 4 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_5', 'BILINGSGATE MOTEL Room 5 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_5_bed', 'BILINGSGATE MOTEL Room 5 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_6', 'BILINGSGATE MOTEL Room 6 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_6_bed', 'BILINGSGATE MOTEL Room 6 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_7', 'BILINGSGATE MOTEL Room 7 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_7_bed', 'BILINGSGATE MOTEL Room 7 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_8', 'BILINGSGATE MOTEL Room 8 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('BilingsgateMotel_8_bed', 'BILINGSGATE MOTEL Room 8 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_1', 'CROWN JEWELS MOTEL Room 1 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_10', 'CROWN JEWELS MOTEL Room 10 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_10_bed', 'CROWN JEWELS MOTEL Room 10 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_11', 'CROWN JEWELS MOTEL Room 11 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_11_bed', 'CROWN JEWELS MOTEL Room 11 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_12', 'CROWN JEWELS MOTEL Room 12 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_12_bed', 'CROWN JEWELS MOTEL Room 12 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_13', 'CROWN JEWELS MOTEL Room 13 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_13_bed', 'CROWN JEWELS MOTEL Room 13 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_14', 'CROWN JEWELS MOTEL Room 14 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_14_bed', 'CROWN JEWELS MOTEL Room 14 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_15', 'CROWN JEWELS MOTEL Room 15 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_15_bed', 'CROWN JEWELS MOTEL Room 15 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_16', 'CROWN JEWELS MOTEL Room 16 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_16_bed', 'CROWN JEWELS MOTEL Room 16 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_17', 'CROWN JEWELS MOTEL Room 17 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_17_bed', 'CROWN JEWELS MOTEL Room 17 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_1_bed', 'CROWN JEWELS MOTEL Room 1 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_2', 'CROWN JEWELS MOTEL Room 2 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_2_bed', 'CROWN JEWELS MOTEL Room 2 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_3', 'CROWN JEWELS MOTEL Room 3 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_3_bed', 'CROWN JEWELS MOTEL Room 3 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_4', 'CROWN JEWELS MOTEL Room 4 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_4_bed', 'CROWN JEWELS MOTEL Room 4 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_5', 'CROWN JEWELS MOTEL Room 5 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_5_bed', 'CROWN JEWELS MOTEL Room 5 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_6', 'CROWN JEWELS MOTEL Room 6 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_6_bed', 'CROWN JEWELS MOTEL Room 6 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_7', 'CROWN JEWELS MOTEL Room 7 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_7_bed', 'CROWN JEWELS MOTEL Room 7 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_8', 'CROWN JEWELS MOTEL Room 8 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_8_bed', 'CROWN JEWELS MOTEL Room 8 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_9', 'CROWN JEWELS MOTEL Room 9 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('CrownJewelsMotel_9_bed', 'CROWN JEWELS MOTEL Room 9 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_1', 'DREAM VIEW MOTEL Room 1 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_11', 'DREAM VIEW MOTEL Room 11 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_11_bed', 'DREAM VIEW MOTEL Room 11 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_12', 'DREAM VIEW MOTEL Room 12 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_12_bed', 'DREAM VIEW MOTEL Room 12 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_13', 'DREAM VIEW MOTEL Room 13 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_13_bed', 'DREAM VIEW MOTEL Room 13 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_14', 'DREAM VIEW MOTEL Room 14 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_14_bed', 'DREAM VIEW MOTEL Room 14 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_15', 'DREAM VIEW MOTEL Room 15 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_15_bed', 'DREAM VIEW MOTEL Room 15 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_16', 'DREAM VIEW MOTEL Room 16 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_16_bed', 'DREAM VIEW MOTEL Room 16 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_17', 'DREAM VIEW MOTEL Room 17 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_17_bed', 'DREAM VIEW MOTEL Room 17 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_18', 'DREAM VIEW MOTEL Room 18 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_18_bed', 'DREAM VIEW MOTEL Room 18 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_19', 'DREAM VIEW MOTEL Room 19 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_19_bed', 'DREAM VIEW MOTEL Room 19 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_1_bed', 'DREAM VIEW MOTEL Room 1 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_2', 'DREAM VIEW MOTEL Room 2 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_20', 'DREAM VIEW MOTEL Room 20 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_20_bed', 'DREAM VIEW MOTEL Room 20 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_21', 'DREAM VIEW MOTEL Room 21 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_21_bed', 'DREAM VIEW MOTEL Room 21 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_22', 'DREAM VIEW MOTEL Room 22 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_22_bed', 'DREAM VIEW MOTEL Room 22 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_2_bed', 'DREAM VIEW MOTEL Room 2 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_3', 'DREAM VIEW MOTEL Room 3 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_3_bed', 'DREAM VIEW MOTEL Room 3 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_4', 'DREAM VIEW MOTEL Room 4 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_4_bed', 'DREAM VIEW MOTEL Room 4 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_5', 'DREAM VIEW MOTEL Room 5 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_5_bed', 'DREAM VIEW MOTEL Room 5 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_6', 'DREAM VIEW MOTEL Room 6 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_6_bed', 'DREAM VIEW MOTEL Room 6 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_7', 'DREAM VIEW MOTEL Room 7 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_7_bed', 'DREAM VIEW MOTEL Room 7 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_8', 'DREAM VIEW MOTEL Room 8 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_8_bed', 'DREAM VIEW MOTEL Room 8 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_9', 'DREAM VIEW MOTEL Room 9 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('DreamViewMotel_9_bed', 'DREAM VIEW MOTEL Room 9 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_1', 'EASTERN MOTEL Room 1 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_10', 'EASTERN MOTEL Room 10 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_10_bed', 'EASTERN MOTEL Room 10 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_1_bed', 'EASTERN MOTEL Room 1 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_2', 'EASTERN MOTEL Room 2 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_2_bed', 'EASTERN MOTEL Room 2 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_3', 'EASTERN MOTEL Room 3 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_3_bed', 'EASTERN MOTEL Room 3 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_4', 'EASTERN MOTEL Room 4 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_4_bed', 'EASTERN MOTEL Room 4 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_5', 'EASTERN MOTEL Room 5 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_5_bed', 'EASTERN MOTEL Room 5 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_6', 'EASTERN MOTEL Room 6 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_6_bed', 'EASTERN MOTEL Room 6 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_7', 'EASTERN MOTEL Room 7 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_7_bed', 'EASTERN MOTEL Room 7 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_8', 'EASTERN MOTEL Room 8 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_8_bed', 'EASTERN MOTEL Room 8 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_9', 'EASTERN MOTEL Room 9 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('EasternMotel_9_bed', 'EASTERN MOTEL Room 9 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_1', 'PERRERA BEACH MOTEL Room 1 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_10', 'PERRERA BEACH MOTEL Room 10 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_10_bed', 'PERRERA BEACH MOTEL Room 10 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_11', 'PERRERA BEACH MOTEL Room 11 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_11_bed', 'PERRERA BEACH MOTEL Room 11 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_12', 'PERRERA BEACH MOTEL Room 12 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_12_bed', 'PERRERA BEACH MOTEL Room 12 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_13', 'PERRERA BEACH MOTEL Room 13 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_13_bed', 'PERRERA BEACH MOTEL Room 13 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_14', 'PERRERA BEACH MOTEL Room 14 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_14_bed', 'PERRERA BEACH MOTEL Room 14 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_15', 'PERRERA BEACH MOTEL Room 15 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_15_bed', 'PERRERA BEACH MOTEL Room 15 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_16', 'PERRERA BEACH MOTEL Room 16 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_16_bed', 'PERRERA BEACH MOTEL Room 16 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_17', 'PERRERA BEACH MOTEL Room 17 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_17_bed', 'PERRERA BEACH MOTEL Room 17 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_18', 'PERRERA BEACH MOTEL Room 18 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_18_bed', 'PERRERA BEACH MOTEL Room 18 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_19', 'PERRERA BEACH MOTEL Room 19 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_19_bed', 'PERRERA BEACH MOTEL Room 19 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_1_bed', 'PERRERA BEACH MOTEL Room 1 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_2', 'PERRERA BEACH MOTEL Room 2 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_20', 'PERRERA BEACH MOTEL Room 20 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_20_bed', 'PERRERA BEACH MOTEL Room 20 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_21', 'PERRERA BEACH MOTEL Room 21 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_21_bed', 'PERRERA BEACH MOTEL Room 21 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_22', 'PERRERA BEACH MOTEL Room 22 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_22_bed', 'PERRERA BEACH MOTEL Room 22 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_23', 'PERRERA BEACH MOTEL Room 23 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_23_bed', 'PERRERA BEACH MOTEL Room 23 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_24', 'PERRERA BEACH MOTEL Room 24 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_24_bed', 'PERRERA BEACH MOTEL Room 24 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_25', 'PERRERA BEACH MOTEL Room 25 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_25_bed', 'PERRERA BEACH MOTEL Room 25 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_26', 'PERRERA BEACH MOTEL Room 26 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_26_bed', 'PERRERA BEACH MOTEL Room 26 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_27', 'PERRERA BEACH MOTEL Room 27 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_27_bed', 'PERRERA BEACH MOTEL Room 27 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_28', 'PERRERA BEACH MOTEL Room 28 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_28_bed', 'PERRERA BEACH MOTEL Room 28 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_29', 'PERRERA BEACH MOTEL Room 29 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_29_bed', 'PERRERA BEACH MOTEL Room 29 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_2_bed', 'PERRERA BEACH MOTEL Room 2 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_3', 'PERRERA BEACH MOTEL Room 3 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_30', 'PERRERA BEACH MOTEL Room 30 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_30_bed', 'PERRERA BEACH MOTEL Room 30 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_31', 'PERRERA BEACH MOTEL Room 31 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_31_bed', 'PERRERA BEACH MOTEL Room 31 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_32', 'PERRERA BEACH MOTEL Room 32 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_32_bed', 'PERRERA BEACH MOTEL Room 32 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_33', 'PERRERA BEACH MOTEL Room 33 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_33_bed', 'PERRERA BEACH MOTEL Room 33 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_34', 'PERRERA BEACH MOTEL Room 34 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_34_bed', 'PERRERA BEACH MOTEL Room 34 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_35', 'PERRERA BEACH MOTEL Room 35 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_35_bed', 'PERRERA BEACH MOTEL Room 35 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_36', 'PERRERA BEACH MOTEL Room 36 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_36_bed', 'PERRERA BEACH MOTEL Room 36 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_37', 'PERRERA BEACH MOTEL Room 37 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_37_bed', 'PERRERA BEACH MOTEL Room 37 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_38', 'PERRERA BEACH MOTEL Room 38 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_38_bed', 'PERRERA BEACH MOTEL Room 38 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_3_bed', 'PERRERA BEACH MOTEL Room 3 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_4', 'PERRERA BEACH MOTEL Room 4 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_4_bed', 'PERRERA BEACH MOTEL Room 4 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_5', 'PERRERA BEACH MOTEL Room 5 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_5_bed', 'PERRERA BEACH MOTEL Room 5 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_6', 'PERRERA BEACH MOTEL Room 6 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_6_bed', 'PERRERA BEACH MOTEL Room 6 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_7', 'PERRERA BEACH MOTEL Room 7 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_7_bed', 'PERRERA BEACH MOTEL Room 7 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_8', 'PERRERA BEACH MOTEL Room 8 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_8_bed', 'PERRERA BEACH MOTEL Room 8 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_9', 'PERRERA BEACH MOTEL Room 9 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('PerreraBeachMotel_9_bed', 'PERRERA BEACH MOTEL Room 9 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_1', 'THE MOTOR MOTEL Room 1 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_10', 'THE MOTOR MOTEL Room 10 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_10_bed', 'THE MOTOR MOTEL Room 10 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_11', 'THE MOTOR MOTEL Room 11 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_11_bed', 'THE MOTOR MOTEL Room 11 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_12', 'THE MOTOR MOTEL Room 12 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_12_bed', 'THE MOTOR MOTEL Room 12 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_1_bed', 'THE MOTOR MOTEL Room 1 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_2', 'THE MOTOR MOTEL Room 2 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_2_bed', 'THE MOTOR MOTEL Room 2 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_3', 'THE MOTOR MOTEL Room 3 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_3_bed', 'THE MOTOR MOTEL Room 3 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_4', 'THE MOTOR MOTEL Room 4 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_4_bed', 'THE MOTOR MOTEL Room 4 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_5', 'THE MOTOR MOTEL Room 5 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_5_bed', 'THE MOTOR MOTEL Room 5 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_6', 'THE MOTOR MOTEL Room 6 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_6_bed', 'THE MOTOR MOTEL Room 6 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_7', 'THE MOTOR MOTEL Room 7 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_7_bed', 'THE MOTOR MOTEL Room 7 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_8', 'THE MOTOR MOTEL Room 8 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_8_bed', 'THE MOTOR MOTEL Room 8 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_9', 'THE MOTOR MOTEL Room 9 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheMotorMotel_9_bed', 'THE MOTOR MOTEL Room 9 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_1', 'THE PINK CAGE MOTEL Room 1 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_11', 'THE PINK CAGE MOTEL Room 11 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_11_bed', 'THE PINK CAGE MOTEL Room 11 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_12', 'THE PINK CAGE MOTEL Room 12 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_12_bed', 'THE PINK CAGE MOTEL Room 12 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_13', 'THE PINK CAGE MOTEL Room 13 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_13_bed', 'THE PINK CAGE MOTEL Room 13 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_14', 'THE PINK CAGE MOTEL Room 14 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_14_bed', 'THE PINK CAGE MOTEL Room 14 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_15', 'THE PINK CAGE MOTEL Room 15 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_15_bed', 'THE PINK CAGE MOTEL Room 15 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_16', 'THE PINK CAGE MOTEL Room 16 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_16_bed', 'THE PINK CAGE MOTEL Room 16 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_17', 'THE PINK CAGE MOTEL Room 17 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_17_bed', 'THE PINK CAGE MOTEL Room 17 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_18', 'THE PINK CAGE MOTEL Room 18 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_18_bed', 'THE PINK CAGE MOTEL Room 18 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_19', 'THE PINK CAGE MOTEL Room 19 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_19_bed', 'THE PINK CAGE MOTEL Room 19 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_1_bed', 'THE PINK CAGE MOTEL Room 1 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_2', 'THE PINK CAGE MOTEL Room 2 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_20', 'THE PINK CAGE MOTEL Room 20 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_20_bed', 'THE PINK CAGE MOTEL Room 20 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_21', 'THE PINK CAGE MOTEL Room 21 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_21_bed', 'THE PINK CAGE MOTEL Room 21 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_22', 'THE PINK CAGE MOTEL Room 22 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_22_bed', 'THE PINK CAGE MOTEL Room 22 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_23', 'THE PINK CAGE MOTEL Room 23 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_23_bed', 'THE PINK CAGE MOTEL Room 23 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_24', 'THE PINK CAGE MOTEL Room 24 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_24_bed', 'THE PINK CAGE MOTEL Room 24 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_25', 'THE PINK CAGE MOTEL Room 25 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_25_bed', 'THE PINK CAGE MOTEL Room 25 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_26', 'THE PINK CAGE MOTEL Room 26 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_26_bed', 'THE PINK CAGE MOTEL Room 26 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_27', 'THE PINK CAGE MOTEL Room 27 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_27_bed', 'THE PINK CAGE MOTEL Room 27 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_28', 'THE PINK CAGE MOTEL Room 28 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_28_bed', 'THE PINK CAGE MOTEL Room 28 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_29', 'THE PINK CAGE MOTEL Room 29 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_29_bed', 'THE PINK CAGE MOTEL Room 29 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_2_bed', 'THE PINK CAGE MOTEL Room 2 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_3', 'THE PINK CAGE MOTEL Room 3 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_30', 'THE PINK CAGE MOTEL Room 30 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_30_bed', 'THE PINK CAGE MOTEL Room 30 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_31', 'THE PINK CAGE MOTEL Room 31 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_31_bed', 'THE PINK CAGE MOTEL Room 31 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_32', 'THE PINK CAGE MOTEL Room 32 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_32_bed', 'THE PINK CAGE MOTEL Room 32 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_33', 'THE PINK CAGE MOTEL Room 33 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_33_bed', 'THE PINK CAGE MOTEL Room 33 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_34', 'THE PINK CAGE MOTEL Room 34 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_34_bed', 'THE PINK CAGE MOTEL Room 34 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_36', 'THE PINK CAGE MOTEL Room 36 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_36_bed', 'THE PINK CAGE MOTEL Room 36 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_37', 'THE PINK CAGE MOTEL Room 37 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_37_bed', 'THE PINK CAGE MOTEL Room 37 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_39', 'THE PINK CAGE MOTEL Room 39 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_39_bed', 'THE PINK CAGE MOTEL Room 39 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_3_bed', 'THE PINK CAGE MOTEL Room 3 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_4', 'THE PINK CAGE MOTEL Room 4 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_4_bed', 'THE PINK CAGE MOTEL Room 4 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_5a', 'THE PINK CAGE MOTEL Room 5a Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_5a_bed', 'THE PINK CAGE MOTEL Room 5a Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_5b', 'THE PINK CAGE MOTEL Room 5b Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_5b_bed', 'THE PINK CAGE MOTEL Room 5b Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_6', 'THE PINK CAGE MOTEL Room 6 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_6_bed', 'THE PINK CAGE MOTEL Room 6 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_7', 'THE PINK CAGE MOTEL Room 7 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_7_bed', 'THE PINK CAGE MOTEL Room 7 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_8', 'THE PINK CAGE MOTEL Room 8 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_8_bed', 'THE PINK CAGE MOTEL Room 8 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_9', 'THE PINK CAGE MOTEL Room 9 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('ThePinkCageMotel_9_bed', 'THE PINK CAGE MOTEL Room 9 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_13', 'THE RANCHO MOTEL Room 13 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_13_bed', 'THE RANCHO MOTEL Room 13 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_14', 'THE RANCHO MOTEL Room 14 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_14_bed', 'THE RANCHO MOTEL Room 14 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_15a', 'THE RANCHO MOTEL Room 15a Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_15a_bed', 'THE RANCHO MOTEL Room 15a Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_15b', 'THE RANCHO MOTEL Room 15b Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_15b_bed', 'THE RANCHO MOTEL Room 15b Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_16', 'THE RANCHO MOTEL Room 16 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_16_bed', 'THE RANCHO MOTEL Room 16 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_17', 'THE RANCHO MOTEL Room 17 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('TheRanchoMotel_17_bed', 'THE RANCHO MOTEL Room 17 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_1', 'VON CRASTENBURG MOTEL Room 1 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_10', 'VON CRASTENBURG MOTEL Room 10 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_10_bed', 'VON CRASTENBURG MOTEL Room 10 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_11', 'VON CRASTENBURG MOTEL Room 11 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_11_bed', 'VON CRASTENBURG MOTEL Room 11 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_12', 'VON CRASTENBURG MOTEL Room 12 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_12_bed', 'VON CRASTENBURG MOTEL Room 12 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_13', 'VON CRASTENBURG MOTEL Room 13 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_13_bed', 'VON CRASTENBURG MOTEL Room 13 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_14', 'VON CRASTENBURG MOTEL Room 14 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_14_bed', 'VON CRASTENBURG MOTEL Room 14 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_15', 'VON CRASTENBURG MOTEL Room 15 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_15_bed', 'VON CRASTENBURG MOTEL Room 15 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_16', 'VON CRASTENBURG MOTEL Room 16 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_16_bed', 'VON CRASTENBURG MOTEL Room 16 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_17', 'VON CRASTENBURG MOTEL Room 17 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_17_bed', 'VON CRASTENBURG MOTEL Room 17 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_18', 'VON CRASTENBURG MOTEL Room 18 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_18_bed', 'VON CRASTENBURG MOTEL Room 18 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_19', 'VON CRASTENBURG MOTEL Room 19 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_19_bed', 'VON CRASTENBURG MOTEL Room 19 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_1_bed', 'VON CRASTENBURG MOTEL Room 1 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_2', 'VON CRASTENBURG MOTEL Room 2 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_20', 'VON CRASTENBURG MOTEL Room 20 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_20_bed', 'VON CRASTENBURG MOTEL Room 20 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_21', 'VON CRASTENBURG MOTEL Room 21 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_21_bed', 'VON CRASTENBURG MOTEL Room 21 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_22', 'VON CRASTENBURG MOTEL Room 22 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_22_bed', 'VON CRASTENBURG MOTEL Room 22 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_23', 'VON CRASTENBURG MOTEL Room 23 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_23_bed', 'VON CRASTENBURG MOTEL Room 23 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_2_bed', 'VON CRASTENBURG MOTEL Room 2 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_3', 'VON CRASTENBURG MOTEL Room 3 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_3_bed', 'VON CRASTENBURG MOTEL Room 3 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_4', 'VON CRASTENBURG MOTEL Room 4 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_4_bed', 'VON CRASTENBURG MOTEL Room 4 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_5', 'VON CRASTENBURG MOTEL Room 5 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_5_bed', 'VON CRASTENBURG MOTEL Room 5 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_6', 'VON CRASTENBURG MOTEL Room 6 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_6_bed', 'VON CRASTENBURG MOTEL Room 6 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_7', 'VON CRASTENBURG MOTEL Room 7 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_7_bed', 'VON CRASTENBURG MOTEL Room 7 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_8', 'VON CRASTENBURG MOTEL Room 8 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_8_bed', 'VON CRASTENBURG MOTEL Room 8 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_9', 'VON CRASTENBURG MOTEL Room 9 Motel Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('VonCrastenburgMotel_9_bed', 'VON CRASTENBURG MOTEL Room 9 Motel Bed Datastore Storage', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('housing', 'Housing', 0);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('motels', 'Motels Datastore', 0);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('motels_bed', 'Motels Bed Datastore', 0);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_ambulance', 'Ambulance', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_ballas', 'ballas', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_hotdog', 'Hotdog', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_lawyer', 'society_lawyer', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_realestate', 'Realestate', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_taco', 'Taco', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_taxi', 'Taxi', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_unicorn', 'Unicorn', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_vagos', 'vagos', 1);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Dumping structure for table evrp.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `data` longtext COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_datastore_owner_name` (`owner`,`name`),
  KEY `index_datastore_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4254 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.datastore_data: ~2,862 rows (approximately)
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1, 'BayviewLodgeMotel_1', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2, 'BayviewLodgeMotel_10', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3, 'BayviewLodgeMotel_10_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4, 'BayviewLodgeMotel_1_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(5, 'BayviewLodgeMotel_2', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(6, 'BayviewLodgeMotel_2_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(7, 'BayviewLodgeMotel_3', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(8, 'BayviewLodgeMotel_3_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(9, 'BayviewLodgeMotel_4', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(10, 'BayviewLodgeMotel_4_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(11, 'BayviewLodgeMotel_5', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(12, 'BayviewLodgeMotel_5_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(13, 'BayviewLodgeMotel_6', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(14, 'BayviewLodgeMotel_6_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(15, 'BayviewLodgeMotel_7', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(16, 'BayviewLodgeMotel_7_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(17, 'BayviewLodgeMotel_8', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(18, 'BayviewLodgeMotel_8_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(19, 'BayviewLodgeMotel_9', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(20, 'BayviewLodgeMotel_9_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(21, 'BilingsgateMotel_1', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(22, 'BilingsgateMotel_10', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(23, 'BilingsgateMotel_10_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(24, 'BilingsgateMotel_11', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(25, 'BilingsgateMotel_11_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(26, 'BilingsgateMotel_12', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(27, 'BilingsgateMotel_12_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(28, 'BilingsgateMotel_14', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(29, 'BilingsgateMotel_14_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(30, 'BilingsgateMotel_15', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(31, 'BilingsgateMotel_15_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(32, 'BilingsgateMotel_1_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(33, 'BilingsgateMotel_2', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(34, 'BilingsgateMotel_2_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(35, 'BilingsgateMotel_3', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(36, 'BilingsgateMotel_3_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(37, 'BilingsgateMotel_4', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(38, 'BilingsgateMotel_4_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(39, 'BilingsgateMotel_5', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(40, 'BilingsgateMotel_5_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(41, 'BilingsgateMotel_6', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(42, 'BilingsgateMotel_6_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(43, 'BilingsgateMotel_7', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(44, 'BilingsgateMotel_7_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(45, 'BilingsgateMotel_8', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(46, 'BilingsgateMotel_8_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(47, 'CrownJewelsMotel_1', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(48, 'CrownJewelsMotel_10', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(49, 'CrownJewelsMotel_10_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(50, 'CrownJewelsMotel_11', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(51, 'CrownJewelsMotel_11_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(52, 'CrownJewelsMotel_12', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(53, 'CrownJewelsMotel_12_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(54, 'CrownJewelsMotel_13', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(55, 'CrownJewelsMotel_13_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(56, 'CrownJewelsMotel_14', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(57, 'CrownJewelsMotel_14_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(58, 'CrownJewelsMotel_15', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(59, 'CrownJewelsMotel_15_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(60, 'CrownJewelsMotel_16', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(61, 'CrownJewelsMotel_16_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(62, 'CrownJewelsMotel_17', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(63, 'CrownJewelsMotel_17_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(64, 'CrownJewelsMotel_1_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(65, 'CrownJewelsMotel_2', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(66, 'CrownJewelsMotel_2_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(67, 'CrownJewelsMotel_3', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(68, 'CrownJewelsMotel_3_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(69, 'CrownJewelsMotel_4', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(70, 'CrownJewelsMotel_4_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(71, 'CrownJewelsMotel_5', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(72, 'CrownJewelsMotel_5_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(73, 'CrownJewelsMotel_6', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(74, 'CrownJewelsMotel_6_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(75, 'CrownJewelsMotel_7', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(76, 'CrownJewelsMotel_7_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(77, 'CrownJewelsMotel_8', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(78, 'CrownJewelsMotel_8_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(79, 'CrownJewelsMotel_9', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(80, 'CrownJewelsMotel_9_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(81, 'DreamViewMotel_1', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(82, 'DreamViewMotel_11', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(83, 'DreamViewMotel_11_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(84, 'DreamViewMotel_12', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(85, 'DreamViewMotel_12_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(86, 'DreamViewMotel_13', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(87, 'DreamViewMotel_13_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(88, 'DreamViewMotel_14', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(89, 'DreamViewMotel_14_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(90, 'DreamViewMotel_15', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(91, 'DreamViewMotel_15_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(92, 'DreamViewMotel_16', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(93, 'DreamViewMotel_16_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(94, 'DreamViewMotel_17', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(95, 'DreamViewMotel_17_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(96, 'DreamViewMotel_18', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(97, 'DreamViewMotel_18_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(98, 'DreamViewMotel_19', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(99, 'DreamViewMotel_19_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(100, 'DreamViewMotel_1_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(101, 'DreamViewMotel_2', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(102, 'DreamViewMotel_20', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(103, 'DreamViewMotel_20_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(104, 'DreamViewMotel_21', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(105, 'DreamViewMotel_21_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(106, 'DreamViewMotel_22', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(107, 'DreamViewMotel_22_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(108, 'DreamViewMotel_2_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(109, 'DreamViewMotel_3', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(110, 'DreamViewMotel_3_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(111, 'DreamViewMotel_4', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(112, 'DreamViewMotel_4_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(113, 'DreamViewMotel_5', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(114, 'DreamViewMotel_5_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(115, 'DreamViewMotel_6', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(116, 'DreamViewMotel_6_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(117, 'DreamViewMotel_7', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(118, 'DreamViewMotel_7_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(119, 'DreamViewMotel_8', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(120, 'DreamViewMotel_8_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(121, 'DreamViewMotel_9', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(122, 'DreamViewMotel_9_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(123, 'EasternMotel_1', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(124, 'EasternMotel_10', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(125, 'EasternMotel_10_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(126, 'EasternMotel_1_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(127, 'EasternMotel_2', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(128, 'EasternMotel_2_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(129, 'EasternMotel_3', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(130, 'EasternMotel_3_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(131, 'EasternMotel_4', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(132, 'EasternMotel_4_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(133, 'EasternMotel_5', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(134, 'EasternMotel_5_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(135, 'EasternMotel_6', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(136, 'EasternMotel_6_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(137, 'EasternMotel_7', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(138, 'EasternMotel_7_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(139, 'EasternMotel_8', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(140, 'EasternMotel_8_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(141, 'EasternMotel_9', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(142, 'EasternMotel_9_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(143, 'PerreraBeachMotel_1', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(144, 'PerreraBeachMotel_10', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(145, 'PerreraBeachMotel_10_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(146, 'PerreraBeachMotel_11', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(147, 'PerreraBeachMotel_11_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(148, 'PerreraBeachMotel_12', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(149, 'PerreraBeachMotel_12_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(150, 'PerreraBeachMotel_13', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(151, 'PerreraBeachMotel_13_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(152, 'PerreraBeachMotel_14', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(153, 'PerreraBeachMotel_14_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(154, 'PerreraBeachMotel_15', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(155, 'PerreraBeachMotel_15_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(156, 'PerreraBeachMotel_16', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(157, 'PerreraBeachMotel_16_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(158, 'PerreraBeachMotel_17', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(159, 'PerreraBeachMotel_17_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(160, 'PerreraBeachMotel_18', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(161, 'PerreraBeachMotel_18_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(162, 'PerreraBeachMotel_19', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(163, 'PerreraBeachMotel_19_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(164, 'PerreraBeachMotel_1_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(165, 'PerreraBeachMotel_2', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(166, 'PerreraBeachMotel_20', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(167, 'PerreraBeachMotel_20_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(168, 'PerreraBeachMotel_21', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(169, 'PerreraBeachMotel_21_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(170, 'PerreraBeachMotel_22', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(171, 'PerreraBeachMotel_22_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(172, 'PerreraBeachMotel_23', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(173, 'PerreraBeachMotel_23_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(174, 'PerreraBeachMotel_24', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(175, 'PerreraBeachMotel_24_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(176, 'PerreraBeachMotel_25', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(177, 'PerreraBeachMotel_25_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(178, 'PerreraBeachMotel_26', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(179, 'PerreraBeachMotel_26_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(180, 'PerreraBeachMotel_27', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(181, 'PerreraBeachMotel_27_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(182, 'PerreraBeachMotel_28', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(183, 'PerreraBeachMotel_28_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(184, 'PerreraBeachMotel_29', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(185, 'PerreraBeachMotel_29_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(186, 'PerreraBeachMotel_2_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(187, 'PerreraBeachMotel_3', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(188, 'PerreraBeachMotel_30', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(189, 'PerreraBeachMotel_30_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(190, 'PerreraBeachMotel_31', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(191, 'PerreraBeachMotel_31_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(192, 'PerreraBeachMotel_32', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(193, 'PerreraBeachMotel_32_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(194, 'PerreraBeachMotel_33', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(195, 'PerreraBeachMotel_33_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(196, 'PerreraBeachMotel_34', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(197, 'PerreraBeachMotel_34_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(198, 'PerreraBeachMotel_35', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(199, 'PerreraBeachMotel_35_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(200, 'PerreraBeachMotel_36', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(201, 'PerreraBeachMotel_36_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(202, 'PerreraBeachMotel_37', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(203, 'PerreraBeachMotel_37_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(204, 'PerreraBeachMotel_38', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(205, 'PerreraBeachMotel_38_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(206, 'PerreraBeachMotel_3_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(207, 'PerreraBeachMotel_4', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(208, 'PerreraBeachMotel_4_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(209, 'PerreraBeachMotel_5', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(210, 'PerreraBeachMotel_5_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(211, 'PerreraBeachMotel_6', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(212, 'PerreraBeachMotel_6_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(213, 'PerreraBeachMotel_7', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(214, 'PerreraBeachMotel_7_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(215, 'PerreraBeachMotel_8', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(216, 'PerreraBeachMotel_8_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(217, 'PerreraBeachMotel_9', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(218, 'PerreraBeachMotel_9_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(219, 'TheMotorMotel_1', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(220, 'TheMotorMotel_10', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(221, 'TheMotorMotel_10_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(222, 'TheMotorMotel_11', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(223, 'TheMotorMotel_11_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(224, 'TheMotorMotel_12', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(225, 'TheMotorMotel_12_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(226, 'TheMotorMotel_1_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(227, 'TheMotorMotel_2', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(228, 'TheMotorMotel_2_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(229, 'TheMotorMotel_3', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(230, 'TheMotorMotel_3_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(231, 'TheMotorMotel_4', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(232, 'TheMotorMotel_4_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(233, 'TheMotorMotel_5', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(234, 'TheMotorMotel_5_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(235, 'TheMotorMotel_6', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(236, 'TheMotorMotel_6_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(237, 'TheMotorMotel_7', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(238, 'TheMotorMotel_7_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(239, 'TheMotorMotel_8', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(240, 'TheMotorMotel_8_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(241, 'TheMotorMotel_9', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(242, 'TheMotorMotel_9_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(243, 'ThePinkCageMotel_1', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(244, 'ThePinkCageMotel_11', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(245, 'ThePinkCageMotel_11_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(246, 'ThePinkCageMotel_12', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(247, 'ThePinkCageMotel_12_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(248, 'ThePinkCageMotel_13', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(249, 'ThePinkCageMotel_13_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(250, 'ThePinkCageMotel_14', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(251, 'ThePinkCageMotel_14_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(252, 'ThePinkCageMotel_15', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(253, 'ThePinkCageMotel_15_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(254, 'ThePinkCageMotel_16', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(255, 'ThePinkCageMotel_16_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(256, 'ThePinkCageMotel_17', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(257, 'ThePinkCageMotel_17_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(258, 'ThePinkCageMotel_18', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(259, 'ThePinkCageMotel_18_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(260, 'ThePinkCageMotel_19', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(261, 'ThePinkCageMotel_19_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(262, 'ThePinkCageMotel_1_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(263, 'ThePinkCageMotel_2', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(264, 'ThePinkCageMotel_20', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(265, 'ThePinkCageMotel_20_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(266, 'ThePinkCageMotel_21', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(267, 'ThePinkCageMotel_21_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(268, 'ThePinkCageMotel_22', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(269, 'ThePinkCageMotel_22_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(270, 'ThePinkCageMotel_23', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(271, 'ThePinkCageMotel_23_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(272, 'ThePinkCageMotel_24', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(273, 'ThePinkCageMotel_24_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(274, 'ThePinkCageMotel_25', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(275, 'ThePinkCageMotel_25_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(276, 'ThePinkCageMotel_26', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(277, 'ThePinkCageMotel_26_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(278, 'ThePinkCageMotel_27', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(279, 'ThePinkCageMotel_27_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(280, 'ThePinkCageMotel_28', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(281, 'ThePinkCageMotel_28_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(282, 'ThePinkCageMotel_29', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(283, 'ThePinkCageMotel_29_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(284, 'ThePinkCageMotel_2_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(285, 'ThePinkCageMotel_3', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(286, 'ThePinkCageMotel_30', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(287, 'ThePinkCageMotel_30_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(288, 'ThePinkCageMotel_31', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(289, 'ThePinkCageMotel_31_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(290, 'ThePinkCageMotel_32', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(291, 'ThePinkCageMotel_32_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(292, 'ThePinkCageMotel_33', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(293, 'ThePinkCageMotel_33_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(294, 'ThePinkCageMotel_34', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(295, 'ThePinkCageMotel_34_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(296, 'ThePinkCageMotel_36', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(297, 'ThePinkCageMotel_36_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(298, 'ThePinkCageMotel_37', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(299, 'ThePinkCageMotel_37_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(300, 'ThePinkCageMotel_39', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(301, 'ThePinkCageMotel_39_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(302, 'ThePinkCageMotel_3_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(303, 'ThePinkCageMotel_4', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(304, 'ThePinkCageMotel_4_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(305, 'ThePinkCageMotel_5a', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(306, 'ThePinkCageMotel_5a_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(307, 'ThePinkCageMotel_5b', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(308, 'ThePinkCageMotel_5b_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(309, 'ThePinkCageMotel_6', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(310, 'ThePinkCageMotel_6_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(311, 'ThePinkCageMotel_7', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(312, 'ThePinkCageMotel_7_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(313, 'ThePinkCageMotel_8', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(314, 'ThePinkCageMotel_8_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(315, 'ThePinkCageMotel_9', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(316, 'ThePinkCageMotel_9_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(317, 'TheRanchoMotel_13', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(318, 'TheRanchoMotel_13_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(319, 'TheRanchoMotel_14', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(320, 'TheRanchoMotel_14_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(321, 'TheRanchoMotel_15a', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(322, 'TheRanchoMotel_15a_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(323, 'TheRanchoMotel_15b', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(324, 'TheRanchoMotel_15b_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(325, 'TheRanchoMotel_16', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(326, 'TheRanchoMotel_16_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(327, 'TheRanchoMotel_17', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(328, 'TheRanchoMotel_17_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(329, 'VonCrastenburgMotel_1', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(330, 'VonCrastenburgMotel_10', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(331, 'VonCrastenburgMotel_10_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(332, 'VonCrastenburgMotel_11', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(333, 'VonCrastenburgMotel_11_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(334, 'VonCrastenburgMotel_12', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(335, 'VonCrastenburgMotel_12_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(336, 'VonCrastenburgMotel_13', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(337, 'VonCrastenburgMotel_13_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(338, 'VonCrastenburgMotel_14', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(339, 'VonCrastenburgMotel_14_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(340, 'VonCrastenburgMotel_15', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(341, 'VonCrastenburgMotel_15_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(342, 'VonCrastenburgMotel_16', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(343, 'VonCrastenburgMotel_16_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(344, 'VonCrastenburgMotel_17', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(345, 'VonCrastenburgMotel_17_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(346, 'VonCrastenburgMotel_18', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(347, 'VonCrastenburgMotel_18_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(348, 'VonCrastenburgMotel_19', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(349, 'VonCrastenburgMotel_19_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(350, 'VonCrastenburgMotel_1_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(351, 'VonCrastenburgMotel_2', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(352, 'VonCrastenburgMotel_20', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(353, 'VonCrastenburgMotel_20_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(354, 'VonCrastenburgMotel_21', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(355, 'VonCrastenburgMotel_21_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(356, 'VonCrastenburgMotel_22', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(357, 'VonCrastenburgMotel_22_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(358, 'VonCrastenburgMotel_23', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(359, 'VonCrastenburgMotel_23_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(360, 'VonCrastenburgMotel_2_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(361, 'VonCrastenburgMotel_3', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(362, 'VonCrastenburgMotel_3_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(363, 'VonCrastenburgMotel_4', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(364, 'VonCrastenburgMotel_4_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(365, 'VonCrastenburgMotel_5', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(366, 'VonCrastenburgMotel_5_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(367, 'VonCrastenburgMotel_6', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(368, 'VonCrastenburgMotel_6_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(369, 'VonCrastenburgMotel_7', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(370, 'VonCrastenburgMotel_7_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(371, 'VonCrastenburgMotel_8', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(372, 'VonCrastenburgMotel_8_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(373, 'VonCrastenburgMotel_9', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(374, 'VonCrastenburgMotel_9_bed', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(375, 'society_ambulance', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(376, 'society_ballas', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(377, 'society_taxi', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(378, 'society_unicorn', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(379, 'society_vagos', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(380, 'housing', 'Char1:11000013536e8dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(381, 'motels', 'Char1:11000013536e8dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(382, 'motels_bed', 'Char1:11000013536e8dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(386, 'housing', 'steam:1100001347a49b9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(387, 'motels', 'steam:1100001347a49b9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(388, 'motels_bed', 'steam:1100001347a49b9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(389, 'housing', 'Char1:110000133529c84', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(390, 'motels_bed', 'Char1:110000133529c84', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(391, 'motels', 'Char1:110000133529c84', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(392, 'housing', 'Char1:11000011bc9069d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(393, 'motels', 'Char1:11000011bc9069d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(394, 'motels_bed', 'Char1:11000011bc9069d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(395, 'motels', 'steam:110000136ff869c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(396, 'housing', 'steam:110000136ff869c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(397, 'motels_bed', 'steam:110000136ff869c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(398, 'housing', 'steam:11000013c330c72', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(399, 'motels', 'steam:11000013c330c72', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(400, 'motels_bed', 'steam:11000013c330c72', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(401, 'housing', 'Char1:1100001347a1ef4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(402, 'motels', 'Char1:1100001347a1ef4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(403, 'motels_bed', 'Char1:1100001347a1ef4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(404, 'housing', 'steam:11000010940d584', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(405, 'motels', 'steam:11000010940d584', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(406, 'motels_bed', 'steam:11000010940d584', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(407, 'housing', 'steam:11000011cc06540', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(408, 'motels', 'steam:11000011cc06540', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(409, 'motels_bed', 'steam:11000011cc06540', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(410, 'housing', 'steam:11000011480a524', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(411, 'motels', 'steam:11000011480a524', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(412, 'motels_bed', 'steam:11000011480a524', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(413, 'housing', 'Char1:11000011cb6437f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(414, 'motels_bed', 'Char1:11000011cb6437f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(415, 'motels', 'Char1:11000011cb6437f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(428, 'housing', 'steam:11000013248482a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(429, 'motels', 'steam:11000013248482a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(430, 'motels_bed', 'steam:11000013248482a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(431, 'housing', 'steam:11000010b3fe095', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(432, 'motels', 'steam:11000010b3fe095', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(433, 'motels_bed', 'steam:11000010b3fe095', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(434, 'housing', 'steam:11000011a5a1934', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(435, 'motels', 'steam:11000011a5a1934', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(436, 'motels_bed', 'steam:11000011a5a1934', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(440, 'housing', 'steam:11000013585bd1e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(441, 'motels', 'steam:11000013585bd1e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(442, 'motels_bed', 'steam:11000013585bd1e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(443, 'housing', 'steam:110000119075762', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(444, 'motels', 'steam:110000119075762', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(445, 'motels_bed', 'steam:110000119075762', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(446, 'housing', 'steam:110000118370736', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(447, 'motels', 'steam:110000118370736', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(448, 'motels_bed', 'steam:110000118370736', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(449, 'housing', 'steam:11000010a4d3c97', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(450, 'motels', 'steam:11000010a4d3c97', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(451, 'motels_bed', 'steam:11000010a4d3c97', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(452, 'housing', 'steam:11000013ba0ee00', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(453, 'motels_bed', 'steam:11000013ba0ee00', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(454, 'motels', 'steam:11000013ba0ee00', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(461, 'housing', 'steam:11000010e95c90d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(462, 'motels', 'steam:11000010e95c90d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(463, 'motels_bed', 'steam:11000010e95c90d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(464, 'housing', 'steam:11000013e723200', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(465, 'motels', 'steam:11000013e723200', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(466, 'motels_bed', 'steam:11000013e723200', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(467, 'housing', 'steam:1100001114c9e32', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(468, 'motels', 'steam:1100001114c9e32', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(469, 'motels_bed', 'steam:1100001114c9e32', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(470, 'housing', 'steam:11000010bebdb9e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(471, 'motels', 'steam:11000010bebdb9e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(472, 'motels_bed', 'steam:11000010bebdb9e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(473, 'housing', 'steam:1100001132a18a5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(474, 'motels', 'steam:1100001132a18a5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(475, 'motels_bed', 'steam:1100001132a18a5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(479, 'housing', 'Char1:110000135406755', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(480, 'motels', 'Char1:110000135406755', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(481, 'motels_bed', 'Char1:110000135406755', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(482, 'housing', 'steam:110000133a2e500', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(483, 'motels', 'steam:110000133a2e500', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(484, 'motels_bed', 'steam:110000133a2e500', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(485, 'motels', 'steam:110000113e9a782', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(486, 'motels_bed', 'steam:110000113e9a782', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(487, 'housing', 'steam:110000113e9a782', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(488, 'housing', 'steam:110000138b6938b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(489, 'motels', 'steam:110000138b6938b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(490, 'motels_bed', 'steam:110000138b6938b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(491, 'housing', 'Char1:110000140e928cf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(492, 'motels', 'Char1:110000140e928cf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(493, 'motels_bed', 'Char1:110000140e928cf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(494, 'housing', 'steam:110000132bde6d0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(495, 'motels_bed', 'steam:110000132bde6d0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(496, 'motels', 'steam:110000132bde6d0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(497, 'housing', 'steam:11000010efd8bbd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(498, 'motels', 'steam:11000010efd8bbd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(499, 'motels_bed', 'steam:11000010efd8bbd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(500, 'motels', 'steam:11000013cd21d3c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(501, 'housing', 'steam:11000013cd21d3c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(502, 'motels_bed', 'steam:11000013cd21d3c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(506, 'housing', 'Char1:11000013cc5cdc1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(507, 'motels', 'Char1:11000013cc5cdc1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(508, 'motels_bed', 'Char1:11000013cc5cdc1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(509, 'housing', 'steam:11000011255f540', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(510, 'motels', 'steam:11000011255f540', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(511, 'motels_bed', 'steam:11000011255f540', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(512, 'housing', 'Char1:110000107b574aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(513, 'motels', 'Char1:110000107b574aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(514, 'motels_bed', 'Char1:110000107b574aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(515, 'housing', 'steam:110000136f475e8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(516, 'motels', 'steam:110000136f475e8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(517, 'motels_bed', 'steam:110000136f475e8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(518, 'housing', 'steam:110000139d97fab', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(519, 'motels', 'steam:110000139d97fab', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(520, 'motels_bed', 'steam:110000139d97fab', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(521, 'housing', 'Char1:11000011308992f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(522, 'motels_bed', 'Char1:11000011308992f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(523, 'motels', 'Char1:11000011308992f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(524, 'housing', 'steam:11000011ccf21bf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(525, 'motels', 'steam:11000011ccf21bf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(526, 'motels_bed', 'steam:11000011ccf21bf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(527, 'housing', 'steam:11000013b8451bd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(528, 'motels_bed', 'steam:11000013b8451bd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(529, 'motels', 'steam:11000013b8451bd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(536, 'housing', 'steam:11000010ed98020', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(537, 'motels_bed', 'steam:11000010ed98020', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(538, 'motels', 'steam:11000010ed98020', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(539, 'housing', 'steam:11000010d9dac32', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(540, 'motels', 'steam:11000010d9dac32', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(541, 'motels_bed', 'steam:11000010d9dac32', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(548, 'housing', 'steam:11000010d68707e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(549, 'motels', 'steam:11000010d68707e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(550, 'motels_bed', 'steam:11000010d68707e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(551, 'housing', 'steam:1100001136fbf1c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(552, 'motels', 'steam:1100001136fbf1c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(553, 'motels_bed', 'steam:1100001136fbf1c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(554, 'housing', 'Char1:11000013cbd8d30', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(555, 'motels', 'Char1:11000013cbd8d30', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(556, 'motels_bed', 'Char1:11000013cbd8d30', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(557, 'housing', 'steam:11000013c177517', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(558, 'motels', 'steam:11000013c177517', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(559, 'motels_bed', 'steam:11000013c177517', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(560, 'housing', 'steam:11000011379ebe7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(561, 'motels', 'steam:11000011379ebe7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(562, 'motels_bed', 'steam:11000011379ebe7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(563, 'housing', 'steam:11000011961dae4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(564, 'motels', 'steam:11000011961dae4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(565, 'motels_bed', 'steam:11000011961dae4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(566, 'housing', 'steam:1100001051fe87b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(567, 'motels', 'steam:1100001051fe87b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(568, 'motels_bed', 'steam:1100001051fe87b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(569, 'housing', 'steam:11000013ef3006d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(570, 'motels', 'steam:11000013ef3006d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(571, 'motels_bed', 'steam:11000013ef3006d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(572, 'housing', 'steam:110000135597562', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(573, 'motels', 'steam:110000135597562', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(574, 'motels_bed', 'steam:110000135597562', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(575, 'housing', 'steam:110000116ac2b64', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(576, 'motels', 'steam:110000116ac2b64', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(577, 'motels_bed', 'steam:110000116ac2b64', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(578, 'housing', 'steam:110000117f91815', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(579, 'motels', 'steam:110000117f91815', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(580, 'motels_bed', 'steam:110000117f91815', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(584, 'housing', 'steam:110000140b614f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(585, 'motels', 'steam:110000140b614f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(586, 'motels_bed', 'steam:110000140b614f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(587, 'housing', 'steam:11000010630ca3c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(588, 'motels', 'steam:11000010630ca3c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(589, 'motels_bed', 'steam:11000010630ca3c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(590, 'housing', 'steam:11000013ba3a198', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(591, 'motels', 'steam:11000013ba3a198', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(592, 'motels_bed', 'steam:11000013ba3a198', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(593, 'housing', 'steam:11000013e4beab1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(594, 'motels', 'steam:11000013e4beab1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(595, 'motels_bed', 'steam:11000013e4beab1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(605, 'housing', 'steam:11000011220844d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(606, 'motels', 'steam:11000011220844d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(607, 'motels_bed', 'steam:11000011220844d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(608, 'housing', 'steam:11000011420a945', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(609, 'motels', 'steam:11000011420a945', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(610, 'motels_bed', 'steam:11000011420a945', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(611, 'housing', 'steam:11000014081c91c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(612, 'motels_bed', 'steam:11000014081c91c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(613, 'motels', 'steam:11000014081c91c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(614, 'housing', 'steam:11000013df8dd28', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(615, 'motels', 'steam:11000013df8dd28', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(616, 'motels_bed', 'steam:11000013df8dd28', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(620, 'housing', 'steam:110000137bd1f65', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(621, 'motels', 'steam:110000137bd1f65', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(622, 'motels_bed', 'steam:110000137bd1f65', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(623, 'housing', 'steam:11000014174d8ea', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(624, 'motels', 'steam:11000014174d8ea', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(625, 'motels_bed', 'steam:11000014174d8ea', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(626, 'housing', 'steam:11000013e1e5811', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(627, 'motels', 'steam:11000013e1e5811', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(628, 'motels_bed', 'steam:11000013e1e5811', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(632, 'housing', 'Char1:11000010da8727b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(633, 'motels_bed', 'Char1:11000010da8727b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(634, 'motels', 'Char1:11000010da8727b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(635, 'housing', 'Char2:110000137bd1f65', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(636, 'motels', 'Char2:110000137bd1f65', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(637, 'motels_bed', 'Char2:110000137bd1f65', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(641, 'housing', 'steam:11000010a04e478', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(642, 'motels', 'steam:11000010a04e478', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(643, 'motels_bed', 'steam:11000010a04e478', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(659, 'motels_bed', 'steam:11000013cebd956', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(660, 'housing', 'steam:11000013cebd956', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(661, 'motels', 'steam:11000013cebd956', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(662, 'housing', 'steam:1100001339b5a11', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(663, 'motels', 'steam:1100001339b5a11', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(664, 'motels_bed', 'steam:1100001339b5a11', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(674, 'housing', 'steam:1100001073f3f21', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(675, 'motels', 'steam:1100001073f3f21', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(676, 'motels_bed', 'steam:1100001073f3f21', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(680, 'housing', 'Char1:110000138bb8153', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(681, 'motels_bed', 'Char1:110000138bb8153', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(682, 'motels', 'Char1:110000138bb8153', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(683, 'housing', 'steam:11000013474c652', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(684, 'motels', 'steam:11000013474c652', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(685, 'motels_bed', 'steam:11000013474c652', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(686, 'housing', 'steam:11000014049ffce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(687, 'motels', 'steam:11000014049ffce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(688, 'motels_bed', 'steam:11000014049ffce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(692, 'housing', 'steam:110000135406755', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(693, 'motels_bed', 'steam:110000135406755', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(694, 'motels', 'steam:110000135406755', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(695, 'housing', 'Char2:1100001132a18a5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(696, 'motels', 'Char2:1100001132a18a5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(697, 'motels_bed', 'Char2:1100001132a18a5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(701, 'housing', 'steam:11000010bfcffcb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(702, 'motels', 'steam:11000010bfcffcb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(703, 'motels_bed', 'steam:11000010bfcffcb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(707, 'housing', 'steam:11000013544a95a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(708, 'motels_bed', 'steam:11000013544a95a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(709, 'motels', 'steam:11000013544a95a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(710, 'housing', 'steam:110000141a97089', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(711, 'motels', 'steam:110000141a97089', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(712, 'motels_bed', 'steam:110000141a97089', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(713, 'housing', 'Char2:1100001157417e0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(714, 'motels', 'Char2:1100001157417e0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(715, 'motels_bed', 'Char2:1100001157417e0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(725, 'housing', 'steam:1100001347a1ef4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(726, 'motels', 'steam:1100001347a1ef4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(727, 'motels_bed', 'steam:1100001347a1ef4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(728, 'housing', 'steam:11000013cc2c21b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(729, 'motels', 'steam:11000013cc2c21b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(730, 'motels_bed', 'steam:11000013cc2c21b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(734, 'housing', 'steam:11000013358c1cf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(735, 'motels', 'steam:11000013358c1cf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(736, 'motels_bed', 'steam:11000013358c1cf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(740, 'housing', 'steam:11000013ecd3341', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(741, 'motels_bed', 'steam:11000013ecd3341', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(742, 'motels', 'steam:11000013ecd3341', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(743, 'housing', 'steam:11000013218ef32', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(744, 'motels', 'steam:11000013218ef32', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(745, 'motels_bed', 'steam:11000013218ef32', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(746, 'housing', 'steam:110000134bfd6cb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(747, 'motels', 'steam:110000134bfd6cb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(748, 'motels_bed', 'steam:110000134bfd6cb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(749, 'housing', 'Char4:110000134bfd6cb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(750, 'motels_bed', 'Char4:110000134bfd6cb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(751, 'motels', 'Char4:110000134bfd6cb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(755, 'housing', 'steam:1100001409736d3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(756, 'motels', 'steam:1100001409736d3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(757, 'motels_bed', 'steam:1100001409736d3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(758, 'housing', 'steam:11000013cd08a7d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(759, 'motels', 'steam:11000013cd08a7d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(760, 'motels_bed', 'steam:11000013cd08a7d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(761, 'housing', 'Char1:1100001360397b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(762, 'motels', 'Char1:1100001360397b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(763, 'motels_bed', 'Char1:1100001360397b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(770, 'housing', 'steam:110000115b2f351', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(771, 'motels', 'steam:110000115b2f351', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(772, 'motels_bed', 'steam:110000115b2f351', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(773, 'housing', 'steam:11000013edd6216', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(774, 'motels', 'steam:11000013edd6216', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(775, 'motels_bed', 'steam:11000013edd6216', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(776, 'housing', 'steam:11000013f9981d3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(777, 'motels', 'steam:11000013f9981d3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(778, 'motels_bed', 'steam:11000013f9981d3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(779, 'housing', 'steam:110000102b79f43', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(780, 'motels', 'steam:110000102b79f43', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(781, 'motels_bed', 'steam:110000102b79f43', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(782, 'housing', 'steam:110000118d845c5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(783, 'motels', 'steam:110000118d845c5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(784, 'motels_bed', 'steam:110000118d845c5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(785, 'housing', 'steam:11000011a2049d0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(786, 'motels', 'steam:11000011a2049d0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(787, 'motels_bed', 'steam:11000011a2049d0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(788, 'housing', 'steam:110000119a11451', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(789, 'motels', 'steam:110000119a11451', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(790, 'motels_bed', 'steam:110000119a11451', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(791, 'motels', 'steam:11000011adcecf5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(792, 'housing', 'steam:11000011adcecf5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(793, 'motels_bed', 'steam:11000011adcecf5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(794, 'housing', 'steam:11000011b635f72', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(795, 'motels', 'steam:11000011b635f72', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(796, 'motels_bed', 'steam:11000011b635f72', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(800, 'motels', 'steam:11000010ae7aa15', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(801, 'housing', 'steam:11000010ae7aa15', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(802, 'motels_bed', 'steam:11000010ae7aa15', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(803, 'housing', 'steam:11000011c99168f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(804, 'motels', 'steam:11000011c99168f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(805, 'motels_bed', 'steam:11000011c99168f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(806, 'housing', 'steam:1100001379f080b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(807, 'motels', 'steam:1100001379f080b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(808, 'motels_bed', 'steam:1100001379f080b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(809, 'housing', 'steam:11000012e88f1d8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(810, 'motels', 'steam:11000012e88f1d8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(811, 'motels_bed', 'steam:11000012e88f1d8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(812, 'housing', 'steam:110000119f2f7a9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(813, 'motels', 'steam:110000119f2f7a9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(814, 'motels_bed', 'steam:110000119f2f7a9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(815, 'housing', 'steam:1100001114a20ce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(816, 'motels', 'steam:1100001114a20ce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(817, 'motels_bed', 'steam:1100001114a20ce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(821, 'housing', 'steam:11000011a7c4864', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(822, 'motels', 'steam:11000011a7c4864', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(823, 'motels_bed', 'steam:11000011a7c4864', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(827, 'housing', 'Char2:11000013c330c72', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(828, 'motels', 'Char2:11000013c330c72', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(829, 'motels_bed', 'Char2:11000013c330c72', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(830, 'housing', 'Char2:110000117f91815', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(831, 'motels', 'Char2:110000117f91815', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(832, 'motels_bed', 'Char2:110000117f91815', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(836, 'housing', 'steam:11000013dfa38fa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(837, 'motels', 'steam:11000013dfa38fa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(838, 'motels_bed', 'steam:11000013dfa38fa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(839, 'housing', 'steam:11000013bdc6c7f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(840, 'motels', 'steam:11000013bdc6c7f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(841, 'motels_bed', 'steam:11000013bdc6c7f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(842, 'motels', 'steam:11000010e39ac41', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(843, 'housing', 'steam:11000010e39ac41', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(844, 'motels_bed', 'steam:11000010e39ac41', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(845, 'housing', 'steam:11000010bc2b771', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(846, 'motels', 'steam:11000010bc2b771', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(847, 'motels_bed', 'steam:11000010bc2b771', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(848, 'housing', 'steam:11000011635bfbc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(849, 'motels', 'steam:11000011635bfbc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(850, 'motels_bed', 'steam:11000011635bfbc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(851, 'housing', 'steam:11000011c45ceee', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(852, 'motels', 'steam:11000011c45ceee', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(853, 'motels_bed', 'steam:11000011c45ceee', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(857, 'housing', 'Char1:1100001166c9613', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(858, 'motels', 'Char1:1100001166c9613', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(859, 'motels_bed', 'Char1:1100001166c9613', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(863, 'housing', 'steam:1100001069d10d6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(864, 'motels', 'steam:1100001069d10d6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(865, 'motels_bed', 'steam:1100001069d10d6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(866, 'housing', 'steam:11000013cc6299c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(867, 'motels', 'steam:11000013cc6299c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(868, 'motels_bed', 'steam:11000013cc6299c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(869, 'housing', 'Char2:11000010bf7aee8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(870, 'motels', 'Char2:11000010bf7aee8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(871, 'motels_bed', 'Char2:11000010bf7aee8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(872, 'housing', 'steam:1100001421c4a91', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(873, 'motels', 'steam:1100001421c4a91', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(874, 'motels_bed', 'steam:1100001421c4a91', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(878, 'housing', 'steam:11000013536e8dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(879, 'motels', 'steam:11000013536e8dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(880, 'motels_bed', 'steam:11000013536e8dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(881, 'housing', 'steam:11000013dd19535', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(882, 'motels', 'steam:11000013dd19535', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(883, 'motels_bed', 'steam:11000013dd19535', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(884, 'housing', 'steam:11000011308992f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(885, 'motels', 'steam:11000011308992f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(886, 'motels_bed', 'steam:11000011308992f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(887, 'housing', 'steam:11000011bc9069d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(888, 'motels', 'steam:11000011bc9069d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(889, 'motels_bed', 'steam:11000011bc9069d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(890, 'housing', 'Char2:110000118370736', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(891, 'motels_bed', 'Char2:110000118370736', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(892, 'motels', 'Char2:110000118370736', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(893, 'housing', 'steam:11000013c10ee70', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(894, 'motels', 'steam:11000013c10ee70', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(895, 'motels_bed', 'steam:11000013c10ee70', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(896, 'motels', 'steam:11000014187d8c8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(897, 'housing', 'steam:11000014187d8c8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(898, 'motels_bed', 'steam:11000014187d8c8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(899, 'housing', 'steam:11000013fe26872', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(900, 'motels', 'steam:11000013fe26872', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(901, 'motels_bed', 'steam:11000013fe26872', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(908, 'motels', 'Char2:11000013dd19535', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(909, 'housing', 'Char2:11000013dd19535', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(910, 'motels_bed', 'Char2:11000013dd19535', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(914, 'motels', 'steam:110000115c655f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(915, 'housing', 'steam:110000115c655f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(916, 'motels_bed', 'steam:110000115c655f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(917, 'housing', 'steam:11000013541883b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(918, 'motels_bed', 'steam:11000013541883b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(919, 'motels', 'steam:11000013541883b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(923, 'housing', 'steam:11000013eafd48d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(924, 'motels', 'steam:11000013eafd48d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(925, 'motels_bed', 'steam:11000013eafd48d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(926, 'housing', 'steam:11000013e508585', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(927, 'motels', 'steam:11000013e508585', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(928, 'motels_bed', 'steam:11000013e508585', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(932, 'housing', 'Char2:11000013fe26872', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(933, 'motels', 'Char2:11000013fe26872', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(934, 'motels_bed', 'Char2:11000013fe26872', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(941, 'housing', 'Char3:110000117f91815', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(942, 'motels', 'Char3:110000117f91815', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(943, 'motels_bed', 'Char3:110000117f91815', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(944, 'housing', 'steam:1100001130c1062', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(945, 'motels', 'steam:1100001130c1062', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(946, 'motels_bed', 'steam:1100001130c1062', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(953, 'housing', 'Char3:1100001360397b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(954, 'motels', 'Char3:1100001360397b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(955, 'motels_bed', 'Char3:1100001360397b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(956, 'housing', 'Char2:11000011255f540', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(957, 'motels', 'Char2:11000011255f540', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(958, 'motels_bed', 'Char2:11000011255f540', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(959, 'housing', 'steam:11000010bf7aee8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(960, 'motels', 'steam:11000010bf7aee8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(961, 'motels_bed', 'steam:11000010bf7aee8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(962, 'housing', 'steam:11000011cb6437f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(963, 'motels', 'steam:11000011cb6437f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(964, 'motels_bed', 'steam:11000011cb6437f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(968, 'housing', 'steam:11000011a929699', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(969, 'motels', 'steam:11000011a929699', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(970, 'motels_bed', 'steam:11000011a929699', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(971, 'housing', 'steam:1100001118ad9e7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(972, 'motels', 'steam:1100001118ad9e7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(973, 'motels_bed', 'steam:1100001118ad9e7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(974, 'motels', 'Char1:1100001331897db', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(975, 'housing', 'Char1:1100001331897db', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(976, 'motels_bed', 'Char1:1100001331897db', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(977, 'housing', 'steam:11000010da8727b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(978, 'motels_bed', 'steam:11000010da8727b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(979, 'motels', 'steam:11000010da8727b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(980, 'housing', 'Char2:110000119075762', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(981, 'motels', 'Char2:110000119075762', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(982, 'motels_bed', 'Char2:110000119075762', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(986, 'housing', 'steam:110000114813436', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(987, 'motels', 'steam:110000114813436', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(988, 'motels_bed', 'steam:110000114813436', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(989, 'motels', 'Char1:110000113787a51', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(990, 'housing', 'Char1:110000113787a51', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(991, 'motels_bed', 'Char1:110000113787a51', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(992, 'housing', 'steam:11000011c1d371b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(993, 'motels', 'steam:11000011c1d371b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(994, 'motels_bed', 'steam:11000011c1d371b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(995, 'housing', 'steam:11000011709b1e7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(996, 'motels', 'steam:11000011709b1e7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(997, 'motels_bed', 'steam:11000011709b1e7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(998, 'housing', 'steam:11000010ec5b3c8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(999, 'motels', 'steam:11000010ec5b3c8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1000, 'motels_bed', 'steam:11000010ec5b3c8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1007, 'motels', 'steam:110000114ece646', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1008, 'housing', 'steam:110000114ece646', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1009, 'motels_bed', 'steam:110000114ece646', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1013, 'housing', 'steam:110000135a1c3c3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1014, 'motels', 'steam:110000135a1c3c3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1015, 'motels_bed', 'steam:110000135a1c3c3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1016, 'housing', 'steam:1100001170ccedf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1017, 'motels', 'steam:1100001170ccedf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1018, 'motels_bed', 'steam:1100001170ccedf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1019, 'housing', 'steam:11000013e561190', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1020, 'motels', 'steam:11000013e561190', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1021, 'motels_bed', 'steam:11000013e561190', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1022, 'housing', 'steam:11000010acd6267', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1023, 'motels', 'steam:11000010acd6267', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1024, 'motels_bed', 'steam:11000010acd6267', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1025, 'housing', 'steam:11000013e839c68', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1026, 'motels', 'steam:11000013e839c68', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1027, 'motels_bed', 'steam:11000013e839c68', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1028, 'housing', 'steam:11000011cfb36fd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1029, 'motels', 'steam:11000011cfb36fd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1030, 'motels_bed', 'steam:11000011cfb36fd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1031, 'housing', 'steam:11000013c91364f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1032, 'motels', 'steam:11000013c91364f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1033, 'motels_bed', 'steam:11000013c91364f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1034, 'housing', 'Char1:1100001114c81e0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1035, 'motels_bed', 'Char1:1100001114c81e0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1036, 'motels', 'Char1:1100001114c81e0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1037, 'housing', 'steam:1100001114c81e0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1038, 'motels', 'steam:1100001114c81e0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1039, 'motels_bed', 'steam:1100001114c81e0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1040, 'housing', 'Char3:11000013e839c68', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1041, 'motels', 'Char3:11000013e839c68', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1042, 'motels_bed', 'Char3:11000013e839c68', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1043, 'housing', 'steam:1100001360397b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1044, 'motels_bed', 'steam:1100001360397b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1045, 'motels', 'steam:1100001360397b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1046, 'housing', 'steam:11000013cc5cdc1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1047, 'motels_bed', 'steam:11000013cc5cdc1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1048, 'motels', 'steam:11000013cc5cdc1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1049, 'housing', 'Char3:11000013536e8dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1050, 'motels', 'Char3:11000013536e8dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1051, 'motels_bed', 'Char3:11000013536e8dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1052, 'housing', 'Char5:110000111c38fef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1053, 'motels', 'Char5:110000111c38fef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1054, 'motels_bed', 'Char5:110000111c38fef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1055, 'housing', 'steam:11000010bf0b6da', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1056, 'motels', 'steam:11000010bf0b6da', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1057, 'motels_bed', 'steam:11000010bf0b6da', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1064, 'housing', 'Char2:11000010ae7aa15', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1065, 'motels', 'Char2:11000010ae7aa15', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1066, 'motels_bed', 'Char2:11000010ae7aa15', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1073, 'housing', 'steam:1100001157417e0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1074, 'motels', 'steam:1100001157417e0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1075, 'motels_bed', 'steam:1100001157417e0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1076, 'housing', 'steam:11000010878a2dd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1077, 'motels', 'steam:11000010878a2dd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1078, 'motels_bed', 'steam:11000010878a2dd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1079, 'motels', 'steam:110000111c38fef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1080, 'housing', 'steam:110000111c38fef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1081, 'motels_bed', 'steam:110000111c38fef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1082, 'motels_bed', 'steam:1100001410e4496', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1083, 'housing', 'steam:1100001410e4496', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1084, 'motels', 'steam:1100001410e4496', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1085, 'motels_bed', 'steam:11000013e11e83d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1086, 'motels', 'steam:11000013e11e83d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1087, 'housing', 'steam:11000013e11e83d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1088, 'motels_bed', 'steam:11000011b134692', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1089, 'motels', 'steam:11000011b134692', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1090, 'housing', 'steam:11000011b134692', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1091, 'motels_bed', 'Char1:1100001419d0d81', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1092, 'housing', 'Char1:1100001419d0d81', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1093, 'motels', 'Char1:1100001419d0d81', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1094, 'motels', 'steam:11000013e974a74', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1095, 'housing', 'steam:11000013e974a74', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1096, 'motels_bed', 'steam:11000013e974a74', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1100, 'motels', 'steam:11000013c21717a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1101, 'housing', 'steam:11000013c21717a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1102, 'motels_bed', 'steam:11000013c21717a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1103, 'housing', 'Char1:110000144098d94', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1104, 'motels_bed', 'Char1:110000144098d94', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1105, 'motels', 'Char1:110000144098d94', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1106, 'motels_bed', 'steam:11000013c213033', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1107, 'motels', 'steam:11000013c213033', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1108, 'housing', 'steam:11000013c213033', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1109, 'motels', 'steam:11000014019aa8d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1110, 'housing', 'steam:11000014019aa8d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1111, 'motels_bed', 'steam:11000014019aa8d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1115, 'housing', 'steam:11000013b443979', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1116, 'motels_bed', 'steam:11000013b443979', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1117, 'motels', 'steam:11000013b443979', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1118, 'housing', 'steam:11000013d2576c2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1119, 'motels', 'steam:11000013d2576c2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1120, 'motels_bed', 'steam:11000013d2576c2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1121, 'motels', 'steam:1100001191fef7b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1122, 'motels_bed', 'steam:1100001191fef7b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1123, 'housing', 'steam:1100001191fef7b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1124, 'housing', 'steam:110000117ff0cdc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1125, 'motels_bed', 'steam:110000117ff0cdc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1126, 'motels', 'steam:110000117ff0cdc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1127, 'motels', 'steam:11000013476b7c7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1128, 'housing', 'steam:11000013476b7c7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1129, 'motels_bed', 'steam:11000013476b7c7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1130, 'housing', 'Char1:110000116de58e1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1131, 'motels_bed', 'Char1:110000116de58e1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1132, 'motels', 'Char1:110000116de58e1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1136, 'motels_bed', 'steam:1100001437567ba', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1137, 'motels', 'steam:1100001437567ba', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1138, 'housing', 'steam:1100001437567ba', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1145, 'housing', 'steam:11000013be58bd9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1146, 'motels_bed', 'steam:11000013be58bd9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1147, 'motels', 'steam:11000013be58bd9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1148, 'housing', 'steam:1100001355661ff', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1149, 'motels_bed', 'steam:1100001355661ff', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1150, 'motels', 'steam:1100001355661ff', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1151, 'housing', 'steam:110000134ba22ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1152, 'motels_bed', 'steam:110000134ba22ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1153, 'motels', 'steam:110000134ba22ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1154, 'housing', 'Char1:110000111a7b3dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1155, 'motels', 'Char1:110000111a7b3dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1156, 'motels_bed', 'Char1:110000111a7b3dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1163, 'motels_bed', 'steam:11000011c3d4ef2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1164, 'housing', 'steam:11000011c3d4ef2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1165, 'motels', 'steam:11000011c3d4ef2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1166, 'motels', 'steam:11000011b72846e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1167, 'motels_bed', 'steam:11000011b72846e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1168, 'housing', 'steam:11000011b72846e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1169, 'motels', 'steam:110000135b33eff', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1170, 'motels_bed', 'steam:110000135b33eff', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1171, 'housing', 'steam:110000135b33eff', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1178, 'motels_bed', 'steam:1100001359ecefd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1179, 'motels', 'steam:1100001359ecefd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1180, 'housing', 'steam:1100001359ecefd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1181, 'motels', 'Char1:110000136bc2ecb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1182, 'motels_bed', 'Char1:110000136bc2ecb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1183, 'housing', 'Char1:110000136bc2ecb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1184, 'motels_bed', 'steam:110000140a6366f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1185, 'motels', 'steam:110000140a6366f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1186, 'housing', 'steam:110000140a6366f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1187, 'housing', 'steam:110000111a90c19', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1188, 'motels', 'steam:110000111a90c19', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1189, 'motels_bed', 'steam:110000111a90c19', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1190, 'motels_bed', 'steam:11000013d48c17c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1191, 'motels', 'steam:11000013d48c17c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1192, 'housing', 'steam:11000013d48c17c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1196, 'motels_bed', 'steam:110000132d3a65f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1197, 'housing', 'steam:110000132d3a65f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1198, 'motels', 'steam:110000132d3a65f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1199, 'motels_bed', 'Char1:11000014068718c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1200, 'motels', 'Char1:11000014068718c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1201, 'housing', 'Char1:11000014068718c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1205, 'housing', 'steam:110000141674dc8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1206, 'motels_bed', 'steam:110000141674dc8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1207, 'motels', 'steam:110000141674dc8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1208, 'housing', 'steam:1100001345d3748', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1209, 'motels', 'steam:1100001345d3748', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1210, 'motels_bed', 'steam:1100001345d3748', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1211, 'motels', 'steam:110000143835b85', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1212, 'housing', 'steam:110000143835b85', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1213, 'motels_bed', 'steam:110000143835b85', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1217, 'housing', 'steam:110000135378c83', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1218, 'motels', 'steam:110000135378c83', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1219, 'motels_bed', 'steam:110000135378c83', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1220, 'motels_bed', 'Char1:110000141dd457e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1221, 'motels', 'Char1:110000141dd457e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1222, 'housing', 'Char1:110000141dd457e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1223, 'housing', 'Char1:11000013cee6c14', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1224, 'motels', 'Char1:11000013cee6c14', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1225, 'motels_bed', 'Char1:11000013cee6c14', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1226, 'housing', 'steam:1100001152599c2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1227, 'motels_bed', 'steam:1100001152599c2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1228, 'motels', 'steam:1100001152599c2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1229, 'housing', 'steam:11000013a3dcd17', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1230, 'motels', 'steam:11000013a3dcd17', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1231, 'motels_bed', 'steam:11000013a3dcd17', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1232, 'motels', 'steam:110000131cde930', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1233, 'housing', 'steam:110000131cde930', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1234, 'motels_bed', 'steam:110000131cde930', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1235, 'motels_bed', 'steam:1100001184d185a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1236, 'housing', 'steam:1100001184d185a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1237, 'motels', 'steam:1100001184d185a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1238, 'housing', 'steam:1100001410bfd83', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1239, 'motels', 'steam:1100001410bfd83', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1240, 'motels_bed', 'steam:1100001410bfd83', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1241, 'housing', 'Char1:11000010ec424bf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1242, 'motels_bed', 'Char1:11000010ec424bf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1243, 'motels', 'Char1:11000010ec424bf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1244, 'housing', 'Char1:1100001361ca488', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1245, 'motels_bed', 'Char1:1100001361ca488', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1246, 'motels', 'Char1:1100001361ca488', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1247, 'motels_bed', 'steam:1100001441915c0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1248, 'motels', 'steam:1100001441915c0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1249, 'housing', 'steam:1100001441915c0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1250, 'motels_bed', 'steam:110000137b38b4e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1251, 'housing', 'steam:110000137b38b4e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1252, 'motels', 'steam:110000137b38b4e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1253, 'housing', 'steam:11000010f1a3671', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1254, 'motels_bed', 'steam:11000010f1a3671', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1255, 'motels', 'steam:11000010f1a3671', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1256, 'motels', 'steam:11000011c6d8faa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1257, 'housing', 'steam:11000011c6d8faa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1258, 'motels_bed', 'steam:11000011c6d8faa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1259, 'motels', 'steam:11000013de44fc7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1260, 'housing', 'steam:11000013de44fc7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1261, 'motels_bed', 'steam:11000013de44fc7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1262, 'housing', 'Char1:11000010dccedce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1263, 'motels', 'Char1:11000010dccedce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1264, 'motels_bed', 'Char1:11000010dccedce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1268, 'housing', 'Char1:11000010eb2606d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1269, 'motels', 'Char1:11000010eb2606d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1270, 'motels_bed', 'Char1:11000010eb2606d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1271, 'motels', 'steam:110000111d20511', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1272, 'motels_bed', 'steam:110000111d20511', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1273, 'housing', 'steam:110000111d20511', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1274, 'motels_bed', 'Char1:11000011599c2e9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1275, 'motels', 'Char1:11000011599c2e9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1276, 'housing', 'Char1:11000011599c2e9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1277, 'motels_bed', 'steam:1100001440b56da', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1278, 'housing', 'steam:1100001440b56da', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1279, 'motels', 'steam:1100001440b56da', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1280, 'housing', 'Char1:11000013c450d45', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1281, 'motels_bed', 'Char1:11000013c450d45', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1282, 'motels', 'Char1:11000013c450d45', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1283, 'motels', 'steam:11000011478fd1c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1284, 'motels_bed', 'steam:11000011478fd1c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1285, 'housing', 'steam:11000011478fd1c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1286, 'housing', 'steam:11000013e266bd3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1287, 'motels', 'steam:11000013e266bd3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1288, 'motels_bed', 'steam:11000013e266bd3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1289, 'housing', 'Char2:110000110ee6772', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1290, 'motels', 'Char2:110000110ee6772', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1291, 'motels_bed', 'Char2:110000110ee6772', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1292, 'motels_bed', 'steam:110000116e086f7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1293, 'housing', 'steam:110000116e086f7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1294, 'motels', 'steam:110000116e086f7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1295, 'housing', 'steam:11000013eb9f5c0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1296, 'motels', 'steam:11000013eb9f5c0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1297, 'motels_bed', 'steam:11000013eb9f5c0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1300, 'society_taco', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1301, 'housing', 'steam:110000139da79b2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1302, 'motels', 'steam:110000139da79b2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1303, 'motels_bed', 'steam:110000139da79b2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1304, 'motels_bed', 'Char1:11000011338bb0e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1305, 'housing', 'Char1:11000011338bb0e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1306, 'motels', 'Char1:11000011338bb0e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1307, 'housing', 'steam:11000013f87b982', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1308, 'motels_bed', 'steam:11000013f87b982', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1309, 'motels', 'steam:11000013f87b982', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1310, 'motels_bed', 'Char1:1100001198c44f4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1311, 'housing', 'Char1:1100001198c44f4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1312, 'motels', 'Char1:1100001198c44f4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1313, 'housing', 'Char1:11000013e59e56f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1314, 'motels_bed', 'Char1:11000013e59e56f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1315, 'motels', 'Char1:11000013e59e56f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1316, 'housing', 'steam:1100001198dbf4b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1317, 'motels', 'steam:1100001198dbf4b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1318, 'motels_bed', 'steam:1100001198dbf4b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1319, 'motels', 'steam:110000141354dcf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1320, 'housing', 'steam:110000141354dcf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1321, 'motels_bed', 'steam:110000141354dcf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1322, 'housing', 'Char1:1100001000cd756', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1323, 'motels_bed', 'Char1:1100001000cd756', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1324, 'motels', 'Char1:1100001000cd756', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1325, 'motels_bed', 'Char1:1100001154c57a4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1326, 'housing', 'Char1:1100001154c57a4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1327, 'motels', 'Char1:1100001154c57a4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1331, 'motels_bed', 'steam:110000114389cc0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1332, 'motels', 'steam:110000114389cc0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1333, 'housing', 'steam:110000114389cc0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1334, 'housing', 'steam:11000013efd5398', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1335, 'motels', 'steam:11000013efd5398', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1336, 'motels_bed', 'steam:11000013efd5398', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1337, 'motels_bed', 'steam:11000013c8841f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1338, 'housing', 'steam:11000013c8841f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1339, 'motels', 'steam:11000013c8841f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1340, 'housing', 'steam:110000109aae8c4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1341, 'motels', 'steam:110000109aae8c4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1342, 'motels_bed', 'steam:110000109aae8c4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1343, 'housing', 'steam:11000011b36ef12', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1344, 'motels', 'steam:11000011b36ef12', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1345, 'motels_bed', 'steam:11000011b36ef12', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1346, 'housing', 'steam:11000013e71e7e9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1347, 'motels_bed', 'steam:11000013e71e7e9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1348, 'motels', 'steam:11000013e71e7e9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1349, 'housing', 'steam:11000013ae6d6bb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1350, 'motels_bed', 'steam:11000013ae6d6bb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1351, 'motels', 'steam:11000013ae6d6bb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1355, 'housing', 'Char1:1100001073bc27f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1356, 'motels', 'Char1:1100001073bc27f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1357, 'motels_bed', 'Char1:1100001073bc27f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1358, 'housing', 'steam:11000013b4af941', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1359, 'motels', 'steam:11000013b4af941', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1360, 'motels_bed', 'steam:11000013b4af941', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1361, 'housing', 'steam:11000011967b22c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1362, 'motels', 'steam:11000011967b22c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1363, 'motels_bed', 'steam:11000011967b22c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1364, 'housing', 'Char1:11000013c1361ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1365, 'motels_bed', 'Char1:11000013c1361ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1366, 'motels', 'Char1:11000013c1361ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1367, 'housing', 'steam:110000117714c82', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1368, 'motels', 'steam:110000117714c82', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1369, 'motels_bed', 'steam:110000117714c82', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1373, 'housing', 'steam:110000132b2424f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1374, 'motels', 'steam:110000132b2424f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1375, 'motels_bed', 'steam:110000132b2424f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1376, 'motels_bed', 'steam:110000140a1d3b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1377, 'housing', 'steam:110000140a1d3b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1378, 'motels', 'steam:110000140a1d3b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1379, 'motels', 'steam:110000135cabb71', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1380, 'housing', 'steam:110000135cabb71', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1381, 'motels_bed', 'steam:110000135cabb71', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1382, 'motels', 'Char2:110000135d6c3b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1383, 'motels_bed', 'Char2:110000135d6c3b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1384, 'housing', 'Char2:110000135d6c3b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1385, 'motels_bed', 'steam:11000011a9f1dac', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1386, 'motels', 'steam:11000011a9f1dac', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1387, 'housing', 'steam:11000011a9f1dac', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1391, 'housing', 'Char1:11000013f23a084', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1392, 'motels', 'Char1:11000013f23a084', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1393, 'motels_bed', 'Char1:11000013f23a084', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1394, 'housing', 'steam:1100001437f7bae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1395, 'motels_bed', 'steam:1100001437f7bae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1396, 'motels', 'steam:1100001437f7bae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1397, 'motels', 'Char1:110000115b8678f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1398, 'housing', 'Char1:110000115b8678f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1399, 'motels_bed', 'Char1:110000115b8678f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1403, 'motels_bed', 'steam:110000110a8fe3a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1404, 'housing', 'steam:110000110a8fe3a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1405, 'motels', 'steam:110000110a8fe3a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1406, 'housing', 'steam:110000112a1a5ad', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1407, 'motels_bed', 'steam:110000112a1a5ad', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1408, 'motels', 'steam:110000112a1a5ad', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1409, 'housing', 'steam:110000142278997', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1410, 'motels', 'steam:110000142278997', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1411, 'motels_bed', 'steam:110000142278997', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1412, 'motels', 'steam:1100001148cadc9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1413, 'housing', 'steam:1100001148cadc9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1414, 'motels_bed', 'steam:1100001148cadc9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1415, 'motels', 'steam:11000013e151789', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1416, 'housing', 'steam:11000013e151789', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1417, 'motels_bed', 'steam:11000013e151789', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1418, 'motels', 'steam:110000115be185a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1419, 'motels_bed', 'steam:110000115be185a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1420, 'housing', 'steam:110000115be185a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1421, 'housing', 'steam:11000013dffc950', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1422, 'motels', 'steam:11000013dffc950', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1423, 'motels_bed', 'steam:11000013dffc950', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1424, 'housing', 'steam:110000143257a35', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1425, 'motels', 'steam:110000143257a35', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1426, 'motels_bed', 'steam:110000143257a35', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1427, 'housing', 'steam:110000108af448b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1428, 'motels', 'steam:110000108af448b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1429, 'motels_bed', 'steam:110000108af448b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1430, 'housing', 'steam:11000010d9faf03', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1431, 'motels', 'steam:11000010d9faf03', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1432, 'motels_bed', 'steam:11000010d9faf03', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1433, 'housing', 'steam:11000013f6a1982', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1434, 'motels', 'steam:11000013f6a1982', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1435, 'motels_bed', 'steam:11000013f6a1982', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1436, 'housing', 'steam:1100001354fcb65', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1437, 'motels', 'steam:1100001354fcb65', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1438, 'motels_bed', 'steam:1100001354fcb65', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1439, 'motels_bed', 'steam:110000114e2f44f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1440, 'motels', 'steam:110000114e2f44f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1441, 'housing', 'steam:110000114e2f44f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1442, 'housing', 'steam:1100001171b6988', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1443, 'motels', 'steam:1100001171b6988', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1444, 'motels_bed', 'steam:1100001171b6988', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1445, 'motels', 'steam:1100001061b9ba2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1446, 'motels_bed', 'steam:1100001061b9ba2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1447, 'housing', 'steam:1100001061b9ba2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1448, 'housing', 'Char1:11000013c9fc1b6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1449, 'motels', 'Char1:11000013c9fc1b6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1450, 'motels_bed', 'Char1:11000013c9fc1b6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1451, 'housing', 'Char1:110000110ee6772', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1452, 'motels', 'Char1:110000110ee6772', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1453, 'motels_bed', 'Char1:110000110ee6772', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1454, 'housing', 'steam:110000143a3994a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1455, 'motels', 'steam:110000143a3994a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1456, 'motels_bed', 'steam:110000143a3994a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1457, 'housing', 'steam:110000133b0341a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1458, 'motels', 'steam:110000133b0341a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1459, 'motels_bed', 'steam:110000133b0341a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1460, 'motels', 'steam:11000011a4918fa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1461, 'housing', 'steam:11000011a4918fa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1462, 'motels_bed', 'steam:11000011a4918fa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1463, 'housing', 'steam:1100001197706a7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1464, 'motels', 'steam:1100001197706a7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1465, 'motels_bed', 'steam:1100001197706a7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1466, 'motels', 'steam:11000010000f6a8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1467, 'housing', 'steam:11000010000f6a8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1468, 'motels_bed', 'steam:11000010000f6a8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1469, 'housing', 'steam:11000013864808c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1470, 'motels', 'steam:11000013864808c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1471, 'motels_bed', 'steam:11000013864808c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1472, 'housing', 'steam:11000013d3d5241', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1473, 'motels', 'steam:11000013d3d5241', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1474, 'motels_bed', 'steam:11000013d3d5241', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1475, 'housing', 'steam:11000013fbe0b1a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1476, 'motels', 'steam:11000013fbe0b1a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1477, 'motels_bed', 'steam:11000013fbe0b1a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1478, 'housing', 'Char1:11000010bd0e52e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1479, 'motels', 'Char1:11000010bd0e52e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1480, 'motels_bed', 'Char1:11000010bd0e52e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1481, 'motels_bed', 'Char1:110000135b3bfb5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1482, 'housing', 'Char1:110000135b3bfb5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1483, 'motels', 'Char1:110000135b3bfb5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1484, 'motels_bed', 'steam:110000142f2a2fe', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1485, 'motels', 'steam:110000142f2a2fe', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1486, 'housing', 'steam:110000142f2a2fe', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1487, 'housing', 'steam:110000140cc56b8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1488, 'motels', 'steam:110000140cc56b8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1489, 'motels_bed', 'steam:110000140cc56b8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1490, 'housing', 'steam:110000110c65a2e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1491, 'motels', 'steam:110000110c65a2e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1492, 'motels_bed', 'steam:110000110c65a2e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1493, 'housing', 'Char1:11000013eb2dcb8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1494, 'motels', 'Char1:11000013eb2dcb8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1495, 'motels_bed', 'Char1:11000013eb2dcb8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1505, 'motels_bed', 'steam:110000143bf45ad', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1506, 'motels', 'steam:110000143bf45ad', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1507, 'housing', 'steam:110000143bf45ad', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1508, 'housing', 'Char1:1100001388dbbf8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1509, 'motels', 'Char1:1100001388dbbf8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1510, 'motels_bed', 'Char1:1100001388dbbf8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1511, 'motels_bed', 'steam:11000011351a645', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1512, 'motels', 'steam:11000011351a645', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1513, 'housing', 'steam:11000011351a645', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1514, 'housing', 'steam:110000132c4330c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1515, 'motels_bed', 'steam:110000132c4330c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1516, 'motels', 'steam:110000132c4330c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1517, 'motels_bed', 'Char1:11000013db2c267', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1518, 'motels', 'Char1:11000013db2c267', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1519, 'housing', 'Char1:11000013db2c267', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1520, 'housing', 'steam:11000011b5de578', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1521, 'motels', 'steam:11000011b5de578', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1522, 'motels_bed', 'steam:11000011b5de578', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1526, 'housing', 'steam:110000132f6959f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1527, 'motels', 'steam:110000132f6959f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1528, 'motels_bed', 'steam:110000132f6959f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1529, 'housing', 'steam:110000113d3c66e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1530, 'motels', 'steam:110000113d3c66e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1531, 'motels_bed', 'steam:110000113d3c66e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1538, 'housing', 'Char1:110000105dc41f8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1539, 'motels', 'Char1:110000105dc41f8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1540, 'motels_bed', 'Char1:110000105dc41f8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1541, 'housing', 'steam:110000114b857af', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1542, 'motels', 'steam:110000114b857af', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1543, 'motels_bed', 'steam:110000114b857af', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1547, 'housing', 'Char1:11000013e625c9f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1548, 'motels', 'Char1:11000013e625c9f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1549, 'motels_bed', 'Char1:11000013e625c9f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1550, 'housing', 'steam:11000010f191b4f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1551, 'motels_bed', 'steam:11000010f191b4f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1552, 'motels', 'steam:11000010f191b4f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1553, 'motels', 'Char1:110000118f90600', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1554, 'motels_bed', 'Char1:110000118f90600', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1555, 'housing', 'Char1:110000118f90600', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1562, 'housing', 'steam:11000013479c8aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1563, 'motels_bed', 'steam:11000013479c8aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1564, 'motels', 'steam:11000013479c8aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1568, 'motels', 'steam:110000115bdbd7b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1569, 'housing', 'steam:110000115bdbd7b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1570, 'motels_bed', 'steam:110000115bdbd7b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1571, 'motels', 'steam:1100001401f71ae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1572, 'motels_bed', 'steam:1100001401f71ae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1573, 'housing', 'steam:1100001401f71ae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1574, 'motels_bed', 'Char1:110000143fa63c7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1575, 'housing', 'Char1:110000143fa63c7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1576, 'motels', 'Char1:110000143fa63c7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1577, 'housing', 'steam:11000013c2c1e60', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1578, 'motels', 'steam:11000013c2c1e60', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1579, 'motels_bed', 'steam:11000013c2c1e60', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1580, 'motels', 'steam:110000134283c67', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1581, 'motels_bed', 'steam:110000134283c67', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1582, 'housing', 'steam:110000134283c67', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1583, 'motels_bed', 'steam:110000135370875', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1584, 'motels', 'steam:110000135370875', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1585, 'housing', 'steam:110000135370875', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1586, 'housing', 'steam:11000011af13ccd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1587, 'motels', 'steam:11000011af13ccd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1588, 'motels_bed', 'steam:11000011af13ccd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1589, 'motels', 'steam:11000011527880c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1590, 'housing', 'steam:11000011527880c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1591, 'motels_bed', 'steam:11000011527880c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1592, 'housing', 'steam:1100001073bc27f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1593, 'motels', 'steam:1100001073bc27f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1594, 'motels_bed', 'steam:1100001073bc27f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1595, 'motels', 'steam:1100001443a2f9e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1596, 'housing', 'steam:1100001443a2f9e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1597, 'motels_bed', 'steam:1100001443a2f9e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1604, 'housing', 'steam:1100001347d2650', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1605, 'motels_bed', 'steam:1100001347d2650', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1606, 'motels', 'steam:1100001347d2650', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1607, 'motels_bed', 'steam:110000143e205bf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1608, 'housing', 'steam:110000143e205bf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1609, 'motels', 'steam:110000143e205bf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1610, 'housing', 'steam:11000013fcc2f6a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1611, 'motels', 'steam:11000013fcc2f6a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1612, 'motels_bed', 'steam:11000013fcc2f6a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1613, 'housing', 'steam:1100001412ffb0b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1614, 'motels', 'steam:1100001412ffb0b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1615, 'motels_bed', 'steam:1100001412ffb0b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1616, 'housing', 'steam:1100001442157ff', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1617, 'motels', 'steam:1100001442157ff', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1618, 'motels_bed', 'steam:1100001442157ff', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1619, 'housing', 'steam:110000142e1086b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1620, 'motels_bed', 'steam:110000142e1086b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1621, 'motels', 'steam:110000142e1086b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1622, 'housing', 'Char1:11000013ca0e6bb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1623, 'motels', 'Char1:11000013ca0e6bb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1624, 'motels_bed', 'Char1:11000013ca0e6bb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1625, 'housing', 'steam:110000142965655', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1626, 'motels', 'steam:110000142965655', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1627, 'motels_bed', 'steam:110000142965655', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1628, 'housing', 'steam:11000013bdc7efd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1629, 'motels_bed', 'steam:11000013bdc7efd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1630, 'motels', 'steam:11000013bdc7efd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1631, 'housing', 'steam:110000105dc41f8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1632, 'motels_bed', 'steam:110000105dc41f8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1633, 'motels', 'steam:110000105dc41f8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1637, 'housing', 'steam:11000011a213461', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1638, 'motels', 'steam:11000011a213461', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1639, 'motels_bed', 'steam:11000011a213461', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1643, 'housing', 'steam:11000013c450d45', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1644, 'motels', 'steam:11000013c450d45', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1645, 'motels_bed', 'steam:11000013c450d45', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1646, 'housing', 'steam:110000113d75bc9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1647, 'motels', 'steam:110000113d75bc9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1648, 'motels_bed', 'steam:110000113d75bc9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1652, 'motels', 'steam:11000010b787cd6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1653, 'motels_bed', 'steam:11000010b787cd6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1654, 'housing', 'steam:11000010b787cd6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1658, 'motels_bed', 'steam:11000011c03c1cc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1659, 'motels', 'steam:11000011c03c1cc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1660, 'housing', 'steam:11000011c03c1cc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1661, 'motels', 'steam:11000010e8532dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1662, 'motels_bed', 'steam:11000010e8532dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1663, 'housing', 'steam:11000010e8532dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1664, 'housing', 'Char1:110000142de142c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1665, 'motels_bed', 'Char1:110000142de142c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1666, 'motels', 'Char1:110000142de142c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1667, 'motels_bed', 'steam:11000010cfa9e37', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1668, 'housing', 'steam:11000010cfa9e37', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1669, 'motels', 'steam:11000010cfa9e37', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1673, 'housing', 'steam:11000014115a97c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1674, 'motels', 'steam:11000014115a97c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1675, 'motels_bed', 'steam:11000014115a97c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1679, 'housing', 'steam:110000142f16440', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1680, 'motels', 'steam:110000142f16440', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1681, 'motels_bed', 'steam:110000142f16440', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1682, 'housing', 'steam:110000132048bce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1683, 'motels', 'steam:110000132048bce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1684, 'motels_bed', 'steam:110000132048bce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1685, 'housing', 'steam:11000013c304c7b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1686, 'motels_bed', 'steam:11000013c304c7b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1687, 'motels', 'steam:11000013c304c7b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1688, 'housing', 'steam:110000144194249', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1689, 'motels_bed', 'steam:110000144194249', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1690, 'motels', 'steam:110000144194249', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1691, 'motels_bed', 'steam:11000013e115967', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1692, 'motels', 'steam:11000013e115967', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1693, 'housing', 'steam:11000013e115967', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1694, 'motels', 'steam:11000013e04ba5d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1695, 'housing', 'steam:11000013e04ba5d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1696, 'motels_bed', 'steam:11000013e04ba5d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1700, 'housing', 'steam:110000116da3d94', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1701, 'motels', 'steam:110000116da3d94', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1702, 'motels_bed', 'steam:110000116da3d94', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1703, 'motels_bed', 'steam:11000011baaefae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1704, 'housing', 'steam:11000011baaefae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1705, 'motels', 'steam:11000011baaefae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1706, 'motels', 'Char1:1100001347fb0ef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1707, 'housing', 'Char1:1100001347fb0ef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1708, 'motels_bed', 'Char1:1100001347fb0ef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1709, 'housing', 'steam:110000143755180', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1710, 'motels', 'steam:110000143755180', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1711, 'motels_bed', 'steam:110000143755180', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1715, 'motels', 'steam:110000141f22093', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1716, 'motels_bed', 'steam:110000141f22093', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1717, 'housing', 'steam:110000141f22093', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1718, 'housing', 'Char1:110000141611dcb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1719, 'motels', 'Char1:110000141611dcb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1720, 'motels_bed', 'Char1:110000141611dcb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1721, 'housing', 'steam:110000118ec6e33', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1722, 'motels', 'steam:110000118ec6e33', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1723, 'motels_bed', 'steam:110000118ec6e33', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1724, 'housing', 'steam:1100001404aa24e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1725, 'motels', 'steam:1100001404aa24e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1726, 'motels_bed', 'steam:1100001404aa24e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1727, 'housing', 'steam:110000131f49911', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1728, 'motels', 'steam:110000131f49911', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1729, 'motels_bed', 'steam:110000131f49911', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1736, 'housing', 'steam:1100001424f0e5e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1737, 'motels', 'steam:1100001424f0e5e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1738, 'motels_bed', 'steam:1100001424f0e5e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1739, 'housing', 'steam:11000011b7aa745', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1740, 'motels', 'steam:11000011b7aa745', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1741, 'motels_bed', 'steam:11000011b7aa745', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1742, 'housing', 'Char3:11000011b7b7c18', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1743, 'motels', 'Char3:11000011b7b7c18', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1744, 'motels_bed', 'Char3:11000011b7b7c18', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1745, 'housing', 'Char2:110000141e99abf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1746, 'motels', 'Char2:110000141e99abf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1747, 'motels_bed', 'Char2:110000141e99abf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1748, 'housing', 'steam:11000013db2c267', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1749, 'motels_bed', 'steam:11000013db2c267', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1750, 'motels', 'steam:11000013db2c267', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1751, 'motels', 'steam:110000143fef7f6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1752, 'motels_bed', 'steam:110000143fef7f6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1753, 'housing', 'steam:110000143fef7f6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1754, 'housing', 'Char2:11000013cbd8d30', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1755, 'motels', 'Char2:11000013cbd8d30', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1756, 'motels_bed', 'Char2:11000013cbd8d30', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1757, 'housing', 'steam:11000013de38924', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1758, 'motels', 'steam:11000013de38924', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1759, 'motels_bed', 'steam:11000013de38924', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1760, 'motels', 'steam:11000013d34a0cf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1761, 'housing', 'steam:11000013d34a0cf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1762, 'motels_bed', 'steam:11000013d34a0cf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1766, 'motels', 'steam:11000014443144d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1767, 'housing', 'steam:11000014443144d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1768, 'motels_bed', 'steam:11000014443144d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1772, 'housing', 'steam:11000010b6a7499', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1773, 'motels_bed', 'steam:11000010b6a7499', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1774, 'motels', 'steam:11000010b6a7499', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1775, 'housing', 'steam:110000117044f68', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1776, 'motels_bed', 'steam:110000117044f68', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1777, 'motels', 'steam:110000117044f68', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1781, 'housing', 'steam:110000140768874', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1782, 'motels_bed', 'steam:110000140768874', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1783, 'motels', 'steam:110000140768874', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1784, 'housing', 'steam:11000010c3d22c4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1785, 'motels', 'steam:11000010c3d22c4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1786, 'motels_bed', 'steam:11000010c3d22c4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1790, 'housing', 'steam:110000118f90600', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1791, 'motels_bed', 'steam:110000118f90600', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1792, 'motels', 'steam:110000118f90600', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1796, 'housing', 'steam:11000014443c21e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1797, 'motels_bed', 'steam:11000014443c21e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1798, 'motels', 'steam:11000014443c21e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1799, 'housing', 'steam:110000115ac6051', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1800, 'motels_bed', 'steam:110000115ac6051', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1801, 'motels', 'steam:110000115ac6051', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1805, 'housing', 'steam:11000010018e94d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1806, 'motels', 'steam:11000010018e94d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1807, 'motels_bed', 'steam:11000010018e94d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1808, 'housing', 'steam:11000013c3bc1eb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1809, 'motels', 'steam:11000013c3bc1eb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1810, 'motels_bed', 'steam:11000013c3bc1eb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1811, 'motels', 'steam:1100001388aac37', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1812, 'housing', 'steam:1100001388aac37', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1813, 'motels_bed', 'steam:1100001388aac37', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1814, 'motels', 'steam:1100001424aedc9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1815, 'housing', 'steam:1100001424aedc9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1816, 'motels_bed', 'steam:1100001424aedc9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1817, 'housing', 'steam:110000135960589', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1818, 'motels', 'steam:110000135960589', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1819, 'motels_bed', 'steam:110000135960589', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1820, 'housing', 'steam:1100001192415b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1821, 'motels', 'steam:1100001192415b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1822, 'motels_bed', 'steam:1100001192415b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1826, 'housing', 'steam:110000143370424', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1827, 'motels', 'steam:110000143370424', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1828, 'motels_bed', 'steam:110000143370424', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1835, 'housing', 'steam:11000013cee6c14', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1836, 'motels_bed', 'steam:11000013cee6c14', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1837, 'motels', 'steam:11000013cee6c14', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1838, 'motels', 'steam:11000010bac92cf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1839, 'motels_bed', 'steam:11000010bac92cf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1840, 'housing', 'steam:11000010bac92cf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1841, 'housing', 'steam:11000010dccedce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1842, 'motels_bed', 'steam:11000010dccedce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1843, 'motels', 'steam:11000010dccedce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1844, 'housing', 'steam:11000013f7c4e87', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1845, 'motels', 'steam:11000013f7c4e87', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1846, 'motels_bed', 'steam:11000013f7c4e87', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1847, 'housing', 'steam:1100001421be3b9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1848, 'motels', 'steam:1100001421be3b9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1849, 'motels_bed', 'steam:1100001421be3b9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1850, 'motels_bed', 'Char1:1100001142839f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1851, 'housing', 'Char1:1100001142839f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1852, 'motels', 'Char1:1100001142839f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1853, 'motels', 'steam:11000013e61e652', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1854, 'motels_bed', 'steam:11000013e61e652', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1855, 'housing', 'steam:11000013e61e652', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1856, 'housing', 'steam:110000135ff01b2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1857, 'motels_bed', 'steam:110000135ff01b2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1858, 'motels', 'steam:110000135ff01b2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1862, 'housing', 'steam:11000013d46e01b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1863, 'motels', 'steam:11000013d46e01b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1864, 'motels_bed', 'steam:11000013d46e01b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1865, 'motels_bed', 'steam:1100001343af32d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1866, 'motels', 'steam:1100001343af32d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1867, 'housing', 'steam:1100001343af32d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1868, 'housing', 'steam:11000011b64b654', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1869, 'motels', 'steam:11000011b64b654', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1870, 'motels_bed', 'steam:11000011b64b654', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1871, 'housing', 'Char3:1100001154c57a4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1872, 'motels_bed', 'Char3:1100001154c57a4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1873, 'motels', 'Char3:1100001154c57a4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1874, 'housing', 'steam:110000142167eae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1875, 'motels_bed', 'steam:110000142167eae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1876, 'motels', 'steam:110000142167eae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1877, 'housing', 'steam:11000013c34e232', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1878, 'motels_bed', 'steam:11000013c34e232', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1879, 'motels', 'steam:11000013c34e232', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1880, 'housing', 'steam:1100001367b2370', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1881, 'motels', 'steam:1100001367b2370', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1882, 'motels_bed', 'steam:1100001367b2370', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1886, 'housing', 'steam:110000119787d7c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1887, 'motels', 'steam:110000119787d7c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1888, 'motels_bed', 'steam:110000119787d7c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1889, 'housing', 'steam:110000118e8b8ba', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1890, 'motels', 'steam:110000118e8b8ba', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1891, 'motels_bed', 'steam:110000118e8b8ba', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1892, 'housing', 'steam:11000013fe9f8fc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1893, 'motels', 'steam:11000013fe9f8fc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1894, 'motels_bed', 'steam:11000013fe9f8fc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1895, 'housing', 'steam:1100001443619ed', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1896, 'motels', 'steam:1100001443619ed', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1897, 'motels_bed', 'steam:1100001443619ed', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1898, 'housing', 'steam:11000010e81f228', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1899, 'motels', 'steam:11000010e81f228', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1900, 'motels_bed', 'steam:11000010e81f228', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1901, 'housing', 'Char1:11000013df97bed', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1902, 'motels', 'Char1:11000013df97bed', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1903, 'motels_bed', 'Char1:11000013df97bed', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1904, 'housing', 'Char2:1100001192415b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1905, 'motels', 'Char2:1100001192415b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1906, 'motels_bed', 'Char2:1100001192415b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1907, 'housing', 'steam:110000119da237d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1908, 'motels', 'steam:110000119da237d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1909, 'motels_bed', 'steam:110000119da237d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1910, 'housing', 'steam:11000011216a4d9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1911, 'motels', 'steam:11000011216a4d9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1912, 'motels_bed', 'steam:11000011216a4d9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1913, 'housing', 'steam:1100001360d594f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1914, 'motels', 'steam:1100001360d594f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1915, 'motels_bed', 'steam:1100001360d594f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1916, 'housing', 'steam:11000013cbd8d30', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1917, 'motels', 'steam:11000013cbd8d30', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1918, 'motels_bed', 'steam:11000013cbd8d30', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1922, 'housing', 'steam:110000141c5694a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1923, 'motels', 'steam:110000141c5694a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1924, 'motels_bed', 'steam:110000141c5694a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1925, 'motels_bed', 'steam:11000011514dd0e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1926, 'motels', 'steam:11000011514dd0e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1927, 'housing', 'steam:11000011514dd0e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1928, 'motels', 'Char1:1100001166cf550', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1929, 'housing', 'Char1:1100001166cf550', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1930, 'motels_bed', 'Char1:1100001166cf550', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1931, 'motels', 'steam:11000013e68da8c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1932, 'motels_bed', 'steam:11000013e68da8c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1933, 'housing', 'steam:11000013e68da8c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1934, 'motels_bed', 'steam:11000013f887723', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1935, 'motels', 'steam:11000013f887723', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1936, 'housing', 'steam:11000013f887723', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1937, 'housing', 'steam:110000114e49e99', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1938, 'motels_bed', 'steam:110000114e49e99', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1939, 'motels', 'steam:110000114e49e99', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1940, 'motels', 'steam:11000011a5742ef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1941, 'motels_bed', 'steam:11000011a5742ef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1942, 'housing', 'steam:11000011a5742ef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1943, 'housing', 'steam:1100001000e7c1b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1944, 'motels_bed', 'steam:1100001000e7c1b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1945, 'motels', 'steam:1100001000e7c1b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1946, 'motels', 'steam:11000014185a788', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1947, 'housing', 'steam:11000014185a788', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1948, 'motels_bed', 'steam:11000014185a788', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1949, 'motels', 'steam:11000013e35b8ee', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1950, 'motels_bed', 'steam:11000013e35b8ee', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1951, 'housing', 'steam:11000013e35b8ee', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1952, 'motels_bed', 'steam:110000113fadbbb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1953, 'housing', 'steam:110000113fadbbb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1954, 'motels', 'steam:110000113fadbbb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1955, 'housing', 'Char1:11000014123edd9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1956, 'motels', 'Char1:11000014123edd9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1957, 'motels_bed', 'Char1:11000014123edd9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1958, 'housing', 'steam:1100001331897db', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1959, 'motels_bed', 'steam:1100001331897db', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1960, 'motels', 'steam:1100001331897db', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1964, 'motels_bed', 'steam:110000114f79f63', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1965, 'motels', 'steam:110000114f79f63', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1966, 'housing', 'steam:110000114f79f63', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1967, 'housing', 'steam:11000011aa81b03', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1968, 'motels', 'steam:11000011aa81b03', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1969, 'motels_bed', 'steam:11000011aa81b03', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1970, 'housing', 'steam:1100001332f1e77', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1971, 'motels_bed', 'steam:1100001332f1e77', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1972, 'motels', 'steam:1100001332f1e77', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1979, 'motels', 'steam:110000133305707', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1980, 'housing', 'steam:110000133305707', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1981, 'motels_bed', 'steam:110000133305707', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1982, 'motels_bed', 'steam:11000014188a570', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1983, 'housing', 'steam:11000014188a570', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1984, 'motels', 'steam:11000014188a570', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1985, 'motels_bed', 'steam:11000013cca8bd3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1986, 'housing', 'steam:11000013cca8bd3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1987, 'motels', 'steam:11000013cca8bd3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1988, 'housing', 'steam:11000013cc7deae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1989, 'motels', 'steam:11000013cc7deae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1990, 'motels_bed', 'steam:11000013cc7deae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1991, 'housing', 'steam:1100001412c717c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1992, 'motels', 'steam:1100001412c717c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1993, 'motels_bed', 'steam:1100001412c717c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1994, 'housing', 'steam:11000011b5dafaa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1995, 'motels_bed', 'steam:11000011b5dafaa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1996, 'motels', 'steam:11000011b5dafaa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1997, 'housing', 'steam:1100001401088f9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1998, 'motels', 'steam:1100001401088f9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1999, 'motels_bed', 'steam:1100001401088f9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2000, 'housing', 'steam:11000011b7bcb8e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2001, 'motels', 'steam:11000011b7bcb8e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2002, 'motels_bed', 'steam:11000011b7bcb8e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2003, 'housing', 'steam:1100001444f147c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2004, 'motels', 'steam:1100001444f147c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2005, 'motels_bed', 'steam:1100001444f147c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2006, 'motels_bed', 'steam:110000116a7a5ee', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2007, 'motels', 'steam:110000116a7a5ee', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2008, 'housing', 'steam:110000116a7a5ee', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2021, 'housing', 'Char3:11000010e81f228', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2022, 'motels', 'Char3:11000010e81f228', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2023, 'motels_bed', 'Char3:11000010e81f228', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2024, 'motels', 'steam:1100001402d4fbc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2025, 'motels_bed', 'steam:1100001402d4fbc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2026, 'housing', 'steam:1100001402d4fbc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2030, 'motels', 'steam:110000141fcfb9f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2031, 'motels_bed', 'steam:110000141fcfb9f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2032, 'housing', 'steam:110000141fcfb9f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2033, 'motels', 'steam:110000144561d18', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2034, 'housing', 'steam:110000144561d18', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2035, 'motels_bed', 'steam:110000144561d18', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2036, 'housing', 'steam:110000142d0b370', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2037, 'motels', 'steam:110000142d0b370', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2038, 'motels_bed', 'steam:110000142d0b370', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2039, 'motels_bed', 'steam:1100001022da2b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2040, 'motels', 'steam:1100001022da2b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2041, 'housing', 'steam:1100001022da2b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2042, 'housing', 'steam:11000010f66743b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2043, 'motels', 'steam:11000010f66743b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2044, 'motels_bed', 'steam:11000010f66743b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2045, 'motels', 'steam:1100001443c1782', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2046, 'housing', 'steam:1100001443c1782', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2047, 'motels_bed', 'steam:1100001443c1782', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2048, 'housing', 'steam:110000106f3cf53', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2049, 'motels_bed', 'steam:110000106f3cf53', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2050, 'motels', 'steam:110000106f3cf53', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2051, 'housing', 'steam:11000011998a605', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2052, 'motels_bed', 'steam:11000011998a605', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2053, 'motels', 'steam:11000011998a605', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2054, 'motels', 'steam:11000013fc9f8aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2055, 'motels_bed', 'steam:11000013fc9f8aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2056, 'housing', 'steam:11000013fc9f8aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2057, 'housing', 'steam:11000011645e0c0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2058, 'motels', 'steam:11000011645e0c0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2059, 'motels_bed', 'steam:11000011645e0c0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2066, 'motels', 'steam:110000141dd457e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2067, 'housing', 'steam:110000141dd457e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2068, 'motels_bed', 'steam:110000141dd457e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2069, 'motels', 'steam:110000141ffca01', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2070, 'motels_bed', 'steam:110000141ffca01', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2071, 'housing', 'steam:110000141ffca01', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2075, 'housing', 'steam:11000013dab5313', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2076, 'motels_bed', 'steam:11000013dab5313', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2077, 'motels', 'steam:11000013dab5313', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2078, 'motels', 'steam:11000013f714459', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2079, 'housing', 'steam:11000013f714459', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2080, 'motels_bed', 'steam:11000013f714459', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2081, 'motels_bed', 'Char1:1100001346d3e23', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2082, 'housing', 'Char1:1100001346d3e23', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2083, 'motels', 'Char1:1100001346d3e23', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2084, 'housing', 'steam:11000013f5fa7d4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2085, 'motels', 'steam:11000013f5fa7d4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2086, 'motels_bed', 'steam:11000013f5fa7d4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2087, 'motels', 'steam:11000014018c681', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2088, 'housing', 'steam:11000014018c681', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2089, 'motels_bed', 'steam:11000014018c681', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2090, 'motels', 'steam:1100001444b86db', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2091, 'motels_bed', 'steam:1100001444b86db', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2092, 'housing', 'steam:1100001444b86db', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2093, 'motels_bed', 'steam:11000011a882ff4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2094, 'housing', 'steam:11000011a882ff4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2095, 'motels', 'steam:11000011a882ff4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2096, 'housing', 'Char1:11000013e7bb841', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2097, 'motels_bed', 'Char1:11000013e7bb841', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2098, 'motels', 'Char1:11000013e7bb841', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2099, 'housing', 'steam:110000106dcd343', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2100, 'motels', 'steam:110000106dcd343', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2101, 'motels_bed', 'steam:110000106dcd343', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2102, 'housing', 'Char1:110000103eebf1a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2103, 'motels_bed', 'Char1:110000103eebf1a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2104, 'motels', 'Char1:110000103eebf1a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2108, 'motels', 'Char1:11000013da6c525', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2109, 'housing', 'Char1:11000013da6c525', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2110, 'motels_bed', 'Char1:11000013da6c525', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2111, 'housing', 'steam:11000011318f231', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2112, 'motels_bed', 'steam:11000011318f231', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2113, 'motels', 'steam:11000011318f231', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2114, 'motels', 'Char1:110000136a45473', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2115, 'motels_bed', 'Char1:110000136a45473', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2116, 'housing', 'Char1:110000136a45473', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2120, 'housing', 'steam:11000013cf656f1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2121, 'motels_bed', 'steam:11000013cf656f1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2122, 'motels', 'steam:11000013cf656f1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2123, 'motels_bed', 'steam:11000013e65913e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2124, 'housing', 'steam:11000013e65913e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2125, 'motels', 'steam:11000013e65913e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2126, 'housing', 'steam:1100001005d3e5c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2127, 'motels', 'steam:1100001005d3e5c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2128, 'motels_bed', 'steam:1100001005d3e5c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2129, 'housing', 'steam:1100001136b1908', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2130, 'motels', 'steam:1100001136b1908', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2131, 'motels_bed', 'steam:1100001136b1908', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2132, 'motels', 'Char1:1100001147943fc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2133, 'motels_bed', 'Char1:1100001147943fc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2134, 'housing', 'Char1:1100001147943fc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2138, 'housing', 'steam:110000140799100', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2139, 'motels', 'steam:110000140799100', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2140, 'motels_bed', 'steam:110000140799100', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2141, 'housing', 'steam:11000010cc78f3e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2142, 'motels', 'steam:11000010cc78f3e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2143, 'motels_bed', 'steam:11000010cc78f3e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2144, 'motels_bed', 'steam:110000110f13e02', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2145, 'motels', 'steam:110000110f13e02', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2146, 'housing', 'steam:110000110f13e02', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2147, 'housing', 'steam:1100001362471b3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2148, 'motels', 'steam:1100001362471b3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2149, 'motels_bed', 'steam:1100001362471b3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2150, 'motels_bed', 'steam:11000013e578e67', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2151, 'housing', 'steam:11000013e578e67', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2152, 'motels', 'steam:11000013e578e67', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2153, 'motels_bed', 'steam:11000011858a982', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2154, 'housing', 'steam:11000011858a982', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2155, 'motels', 'steam:11000011858a982', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2156, 'motels_bed', 'steam:11000013be14daf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2157, 'motels', 'steam:11000013be14daf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2158, 'housing', 'steam:11000013be14daf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2159, 'housing', 'steam:11000013261d27d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2160, 'motels', 'steam:11000013261d27d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2161, 'motels_bed', 'steam:11000013261d27d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2162, 'motels_bed', 'steam:110000106253991', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2163, 'motels', 'steam:110000106253991', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2164, 'housing', 'steam:110000106253991', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2165, 'housing', 'Char1:11000011d3914c3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2166, 'motels_bed', 'Char1:11000011d3914c3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2167, 'motels', 'Char1:11000011d3914c3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2168, 'housing', 'steam:1100001143f7164', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2169, 'motels', 'steam:1100001143f7164', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2170, 'motels_bed', 'steam:1100001143f7164', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2171, 'motels', 'steam:110000140686370', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2172, 'motels_bed', 'steam:110000140686370', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2173, 'housing', 'steam:110000140686370', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2174, 'housing', 'steam:11000014440c2bc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2175, 'motels_bed', 'steam:11000014440c2bc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2176, 'motels', 'steam:11000014440c2bc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2177, 'motels', 'steam:11000013e1e7188', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2178, 'housing', 'steam:11000013e1e7188', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2179, 'motels_bed', 'steam:11000013e1e7188', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2180, 'motels', 'steam:11000013f8ee129', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2181, 'motels_bed', 'steam:11000013f8ee129', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2182, 'housing', 'steam:11000013f8ee129', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2183, 'housing', 'steam:11000013fc3535f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2184, 'motels', 'steam:11000013fc3535f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2185, 'motels_bed', 'steam:11000013fc3535f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2186, 'housing', 'steam:1100001405a8ade', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2187, 'motels', 'steam:1100001405a8ade', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2188, 'motels_bed', 'steam:1100001405a8ade', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2189, 'housing', 'steam:11000013fefcf48', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2190, 'motels', 'steam:11000013fefcf48', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2191, 'motels_bed', 'steam:11000013fefcf48', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2192, 'motels', 'steam:1100001440eb9d9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2193, 'motels_bed', 'steam:1100001440eb9d9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2194, 'housing', 'steam:1100001440eb9d9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2195, 'housing', 'Char1:11000013d56c290', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2196, 'motels', 'Char1:11000013d56c290', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2197, 'motels_bed', 'Char1:11000013d56c290', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2201, 'motels', 'steam:110000135f98cea', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2202, 'housing', 'steam:110000135f98cea', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2203, 'motels_bed', 'steam:110000135f98cea', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2204, 'housing', 'steam:1100001431c2243', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2205, 'motels_bed', 'steam:1100001431c2243', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2206, 'motels', 'steam:1100001431c2243', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2207, 'housing', 'steam:110000119420217', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2208, 'motels', 'steam:110000119420217', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2209, 'motels_bed', 'steam:110000119420217', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2210, 'motels', 'steam:11000011a9c6b85', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2211, 'housing', 'steam:11000011a9c6b85', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2212, 'motels_bed', 'steam:11000011a9c6b85', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2219, 'housing', 'steam:11000011ba2934b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2220, 'motels', 'steam:11000011ba2934b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2221, 'motels_bed', 'steam:11000011ba2934b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2222, 'motels_bed', 'steam:11000013d4dcb35', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2223, 'motels', 'steam:11000013d4dcb35', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2224, 'housing', 'steam:11000013d4dcb35', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2225, 'motels_bed', 'steam:1100001182f9d64', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2226, 'housing', 'steam:1100001182f9d64', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2227, 'motels', 'steam:1100001182f9d64', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2228, 'motels', 'steam:1100001438428f5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2229, 'housing', 'steam:1100001438428f5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2230, 'motels_bed', 'steam:1100001438428f5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2231, 'housing', 'steam:110000142ac55d7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2232, 'motels_bed', 'steam:110000142ac55d7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2233, 'motels', 'steam:110000142ac55d7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2234, 'housing', 'steam:110000136e3d12c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2235, 'motels', 'steam:110000136e3d12c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2236, 'motels_bed', 'steam:110000136e3d12c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2237, 'motels', 'steam:11000013b273341', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2238, 'housing', 'steam:11000013b273341', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2239, 'motels_bed', 'steam:11000013b273341', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2240, 'motels_bed', 'steam:1100001366beda8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2241, 'housing', 'steam:1100001366beda8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2242, 'motels', 'steam:1100001366beda8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2246, 'housing', 'steam:110000138f54256', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2247, 'motels', 'steam:110000138f54256', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2248, 'motels_bed', 'steam:110000138f54256', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2249, 'housing', 'steam:11000011a855d76', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2250, 'motels', 'steam:11000011a855d76', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2251, 'motels_bed', 'steam:11000011a855d76', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2252, 'housing', 'Char1:110000143ad56e4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2253, 'motels', 'Char1:110000143ad56e4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2254, 'motels_bed', 'Char1:110000143ad56e4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2255, 'housing', 'steam:110000142334e49', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2256, 'motels', 'steam:110000142334e49', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2257, 'motels_bed', 'steam:110000142334e49', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2258, 'housing', 'steam:1100001000cd756', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2259, 'motels', 'steam:1100001000cd756', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2260, 'motels_bed', 'steam:1100001000cd756', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2261, 'housing', 'Char1:11000011169c6d4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2262, 'motels_bed', 'Char1:11000011169c6d4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2263, 'motels', 'Char1:11000011169c6d4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2264, 'housing', 'steam:11000013e92e742', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2265, 'motels', 'steam:11000013e92e742', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2266, 'motels_bed', 'steam:11000013e92e742', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2267, 'motels', 'steam:11000011a730730', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2268, 'motels_bed', 'steam:11000011a730730', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2269, 'housing', 'steam:11000011a730730', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2270, 'housing', 'steam:110000144098d94', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2271, 'motels', 'steam:110000144098d94', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2272, 'motels_bed', 'steam:110000144098d94', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2273, 'housing', 'steam:110000140f81a09', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2274, 'motels', 'steam:110000140f81a09', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2275, 'motels_bed', 'steam:110000140f81a09', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2276, 'motels_bed', 'Char5:11000013e77bf3f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2277, 'motels', 'Char5:11000013e77bf3f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2278, 'housing', 'Char5:11000013e77bf3f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2279, 'motels_bed', 'steam:110000117df71a3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2280, 'motels', 'steam:110000117df71a3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2281, 'housing', 'steam:110000117df71a3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2282, 'housing', 'steam:110000144588e3b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2283, 'motels', 'steam:110000144588e3b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2284, 'motels_bed', 'steam:110000144588e3b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2285, 'housing', 'steam:1100001167f83e6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2286, 'motels', 'steam:1100001167f83e6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2287, 'motels_bed', 'steam:1100001167f83e6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2288, 'housing', 'steam:1100001418d1161', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2289, 'motels', 'steam:1100001418d1161', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2290, 'motels_bed', 'steam:1100001418d1161', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2291, 'motels', 'steam:110000142e08694', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2292, 'motels_bed', 'steam:110000142e08694', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2293, 'housing', 'steam:110000142e08694', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2294, 'motels', 'Char1:11000013c577d95', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2295, 'motels_bed', 'Char1:11000013c577d95', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2296, 'housing', 'Char1:11000013c577d95', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2297, 'housing', 'steam:110000142ad9a17', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2298, 'motels_bed', 'steam:110000142ad9a17', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2299, 'motels', 'steam:110000142ad9a17', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2300, 'housing', 'steam:110000135eb81e3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2301, 'motels_bed', 'steam:110000135eb81e3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2302, 'motels', 'steam:110000135eb81e3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2303, 'motels', 'steam:1100001161dea02', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2304, 'motels_bed', 'steam:1100001161dea02', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2305, 'housing', 'steam:1100001161dea02', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2306, 'housing', 'steam:11000011af9d47c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2307, 'motels', 'steam:11000011af9d47c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2308, 'motels_bed', 'steam:11000011af9d47c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2309, 'housing', 'steam:1100001357efc1f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2310, 'motels', 'steam:1100001357efc1f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2311, 'motels_bed', 'steam:1100001357efc1f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2312, 'motels_bed', 'steam:1100001110a3e98', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2313, 'motels', 'steam:1100001110a3e98', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2314, 'housing', 'steam:1100001110a3e98', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2315, 'motels_bed', 'steam:11000010f78a4e1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2316, 'motels', 'steam:11000010f78a4e1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2317, 'housing', 'steam:11000010f78a4e1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2318, 'motels_bed', 'steam:110000115b8678f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2319, 'housing', 'steam:110000115b8678f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2320, 'motels', 'steam:110000115b8678f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2321, 'housing', 'steam:11000013fa824aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2322, 'motels', 'steam:11000013fa824aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2323, 'motels_bed', 'steam:11000013fa824aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2324, 'housing', 'steam:11000013fbac4e3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2325, 'motels', 'steam:11000013fbac4e3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2326, 'motels_bed', 'steam:11000013fbac4e3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2327, 'housing', 'steam:110000141611dcb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2328, 'motels', 'steam:110000141611dcb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2329, 'motels_bed', 'steam:110000141611dcb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2330, 'housing', 'steam:11000010c7e76ce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2331, 'motels', 'steam:11000010c7e76ce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2332, 'motels_bed', 'steam:11000010c7e76ce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2333, 'housing', 'Char1:11000014300d124', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2334, 'motels_bed', 'Char1:11000014300d124', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2335, 'motels', 'Char1:11000014300d124', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2336, 'housing', 'steam:11000013568da0e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2337, 'motels', 'steam:11000013568da0e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2338, 'motels_bed', 'steam:11000013568da0e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2339, 'motels', 'steam:110000114fade55', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2340, 'motels_bed', 'steam:110000114fade55', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2341, 'housing', 'steam:110000114fade55', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2342, 'motels_bed', 'Char1:11000010c1dfc57', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2343, 'housing', 'Char1:11000010c1dfc57', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2344, 'motels', 'Char1:11000010c1dfc57', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2345, 'motels_bed', 'steam:11000013a603cf7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2346, 'housing', 'steam:11000013a603cf7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2347, 'motels', 'steam:11000013a603cf7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2348, 'motels_bed', 'steam:11000013d7f6750', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2349, 'housing', 'steam:11000013d7f6750', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2350, 'motels', 'steam:11000013d7f6750', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2351, 'housing', 'Char2:110000117ff0cdc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2352, 'motels_bed', 'Char2:110000117ff0cdc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2353, 'motels', 'Char2:110000117ff0cdc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2354, 'housing', 'steam:110000135ab582a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2355, 'motels', 'steam:110000135ab582a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2356, 'motels_bed', 'steam:110000135ab582a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2357, 'motels_bed', 'steam:1100001361c1096', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2358, 'motels', 'steam:1100001361c1096', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2359, 'housing', 'steam:1100001361c1096', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2360, 'housing', 'Char1:11000010294a991', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2361, 'motels', 'Char1:11000010294a991', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2362, 'motels_bed', 'Char1:11000010294a991', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2363, 'society_taco', NULL, NULL);
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3000, 'society_taco', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3001, 'society_lawye', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3002, 'society_unicorn', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3007, 'society_realestate', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3100, 'society_hotdog', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3101, 'society_lawyer', NULL, '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3108, 'motels_bed', 'steam:11000010b287dfe', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3109, 'housing', 'steam:11000010b287dfe', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3110, 'motels', 'steam:11000010b287dfe', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3111, 'motels', 'steam:11000013dc8945f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3112, 'housing', 'steam:11000013dc8945f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3113, 'motels_bed', 'steam:11000013dc8945f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3114, 'housing', 'steam:11000013ca0e6bb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3115, 'motels_bed', 'steam:11000013ca0e6bb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3116, 'motels', 'steam:11000013ca0e6bb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3117, 'housing', 'steam:11000013e6f73e4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3118, 'motels', 'steam:11000013e6f73e4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3119, 'motels_bed', 'steam:11000013e6f73e4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3120, 'motels', 'steam:1100001409706b3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3121, 'housing', 'steam:1100001409706b3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3122, 'motels_bed', 'steam:1100001409706b3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3123, 'motels', 'steam:11000013536a630', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3124, 'motels_bed', 'steam:11000013536a630', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3125, 'housing', 'steam:11000013536a630', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3126, 'housing', 'steam:11000010d498546', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3127, 'motels', 'steam:11000010d498546', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3128, 'motels_bed', 'steam:11000010d498546', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3129, 'motels', 'Char1:11000014099c622', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3130, 'housing', 'Char1:11000014099c622', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3131, 'motels_bed', 'Char1:11000014099c622', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3132, 'motels', 'steam:1100001150d4361', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3133, 'housing', 'steam:1100001150d4361', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3134, 'motels_bed', 'steam:1100001150d4361', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3138, 'housing', 'steam:1100001421c6eef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3139, 'motels', 'steam:1100001421c6eef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3140, 'motels_bed', 'steam:1100001421c6eef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3141, 'housing', 'steam:11000013c808ec6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3142, 'motels', 'steam:11000013c808ec6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3143, 'motels_bed', 'steam:11000013c808ec6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3144, 'motels', 'steam:11000013e11129e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3145, 'housing', 'steam:11000013e11129e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3146, 'motels_bed', 'steam:11000013e11129e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3147, 'motels', 'steam:11000011bb1b063', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3148, 'housing', 'steam:11000011bb1b063', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3149, 'motels_bed', 'steam:11000011bb1b063', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3150, 'housing', 'steam:110000113df4c54', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3151, 'motels_bed', 'steam:110000113df4c54', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3152, 'motels', 'steam:110000113df4c54', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3153, 'housing', 'steam:11000013e5c06c5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3154, 'motels_bed', 'steam:11000013e5c06c5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3155, 'motels', 'steam:11000013e5c06c5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3156, 'motels_bed', 'steam:110000140893804', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3157, 'motels', 'steam:110000140893804', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3158, 'housing', 'steam:110000140893804', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3159, 'housing', 'steam:110000134b4b40f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3160, 'motels', 'steam:110000134b4b40f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3161, 'motels_bed', 'steam:110000134b4b40f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3162, 'motels', 'steam:11000011817331c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3163, 'housing', 'steam:11000011817331c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3164, 'motels_bed', 'steam:11000011817331c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3168, 'housing', 'Char1:110000114efb958', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3169, 'motels', 'Char1:110000114efb958', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3170, 'motels_bed', 'Char1:110000114efb958', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3171, 'motels_bed', 'steam:110000131f9bd52', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3172, 'housing', 'steam:110000131f9bd52', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3173, 'motels', 'steam:110000131f9bd52', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3174, 'motels_bed', 'steam:11000011ae3ebec', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3175, 'housing', 'steam:11000011ae3ebec', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3176, 'motels', 'steam:11000011ae3ebec', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3177, 'motels', 'steam:11000013ec81ca0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3178, 'motels_bed', 'steam:11000013ec81ca0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3179, 'housing', 'steam:11000013ec81ca0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3183, 'housing', 'steam:110000115a67f2d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3184, 'motels_bed', 'steam:110000115a67f2d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3185, 'motels', 'steam:110000115a67f2d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3192, 'housing', 'Char2:110000143257a35', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3193, 'motels', 'Char2:110000143257a35', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3194, 'motels_bed', 'Char2:110000143257a35', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3201, 'motels_bed', 'steam:1100001445a8f5c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3202, 'motels', 'steam:1100001445a8f5c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3203, 'housing', 'steam:1100001445a8f5c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3207, 'housing', 'steam:110000136a45473', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3208, 'motels', 'steam:110000136a45473', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3209, 'motels_bed', 'steam:110000136a45473', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3210, 'housing', 'steam:11000013c63cbe0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3211, 'motels', 'steam:11000013c63cbe0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3212, 'motels_bed', 'steam:11000013c63cbe0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3216, 'motels_bed', 'steam:110000132955a82', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3217, 'housing', 'steam:110000132955a82', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3218, 'motels', 'steam:110000132955a82', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3219, 'housing', 'steam:11000014068718c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3220, 'motels', 'steam:11000014068718c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3221, 'motels_bed', 'steam:11000014068718c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3222, 'motels_bed', 'steam:110000117e2ab70', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3223, 'housing', 'steam:110000117e2ab70', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3224, 'motels', 'steam:110000117e2ab70', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3225, 'housing', 'steam:110000141822971', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3226, 'motels', 'steam:110000141822971', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3227, 'motels_bed', 'steam:110000141822971', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3228, 'housing', 'steam:11000013f3017d8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3229, 'motels', 'steam:11000013f3017d8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3230, 'motels_bed', 'steam:11000013f3017d8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3234, 'housing', 'steam:1100001443fba0b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3235, 'motels', 'steam:1100001443fba0b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3236, 'motels_bed', 'steam:1100001443fba0b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3243, 'housing', 'steam:1100001198c44f4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3244, 'motels', 'steam:1100001198c44f4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3245, 'motels_bed', 'steam:1100001198c44f4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3261, 'housing', 'steam:11000013f23a084', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3262, 'motels_bed', 'steam:11000013f23a084', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3263, 'motels', 'steam:11000013f23a084', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3264, 'housing', 'steam:11000013d3a5718', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3265, 'motels', 'steam:11000013d3a5718', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3266, 'motels_bed', 'steam:11000013d3a5718', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3267, 'motels_bed', 'steam:1100001191a6fed', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3268, 'motels', 'steam:1100001191a6fed', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3269, 'housing', 'steam:1100001191a6fed', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3270, 'motels', 'steam:11000011438cffd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3271, 'housing', 'steam:11000011438cffd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3272, 'motels_bed', 'steam:11000011438cffd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3273, 'motels_bed', 'steam:110000142a56b1e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3274, 'motels', 'steam:110000142a56b1e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3275, 'housing', 'steam:110000142a56b1e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3276, 'motels_bed', 'steam:110000142cbe3f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3277, 'motels', 'steam:110000142cbe3f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3278, 'housing', 'steam:110000142cbe3f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3279, 'housing', 'steam:1100001162cb095', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3280, 'motels', 'steam:1100001162cb095', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3281, 'motels_bed', 'steam:1100001162cb095', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3282, 'motels_bed', 'steam:11000011b353fe5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3283, 'motels', 'steam:11000011b353fe5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3284, 'housing', 'steam:11000011b353fe5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3285, 'housing', 'steam:1100001197481b8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3286, 'motels', 'steam:1100001197481b8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3287, 'motels_bed', 'steam:1100001197481b8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3288, 'housing', 'Char4:11000010eb2606d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3289, 'motels', 'Char4:11000010eb2606d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3290, 'motels_bed', 'Char4:11000010eb2606d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3291, 'motels', 'steam:11000010e38ca19', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3292, 'housing', 'steam:11000010e38ca19', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3293, 'motels_bed', 'steam:11000010e38ca19', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3294, 'motels', 'steam:11000010a989595', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3295, 'motels_bed', 'steam:11000010a989595', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3296, 'housing', 'steam:11000010a989595', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3297, 'motels', 'steam:11000011590fbc1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3298, 'housing', 'steam:11000011590fbc1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3299, 'motels_bed', 'steam:11000011590fbc1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3300, 'motels', 'steam:110000139c9c80b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3301, 'motels_bed', 'steam:110000139c9c80b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3302, 'housing', 'steam:110000139c9c80b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3303, 'housing', 'steam:110000118deaa81', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3304, 'motels', 'steam:110000118deaa81', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3305, 'motels_bed', 'steam:110000118deaa81', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3306, 'housing', 'steam:110000134e1a596', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3307, 'motels_bed', 'steam:110000134e1a596', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3308, 'motels', 'steam:110000134e1a596', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3309, 'motels', 'steam:110000135e86d46', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3310, 'housing', 'steam:110000135e86d46', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3311, 'motels_bed', 'steam:110000135e86d46', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3312, 'motels_bed', 'steam:11000010e70d2c5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3313, 'motels', 'steam:11000010e70d2c5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3314, 'housing', 'steam:11000010e70d2c5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3318, 'motels_bed', 'steam:1100001438c7697', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3319, 'housing', 'steam:1100001438c7697', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3320, 'motels', 'steam:1100001438c7697', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3321, 'housing', 'steam:11000010f10aaeb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3322, 'motels_bed', 'steam:11000010f10aaeb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3323, 'motels', 'steam:11000010f10aaeb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3324, 'housing', 'steam:110000106368234', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3325, 'motels', 'steam:110000106368234', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3326, 'motels_bed', 'steam:110000106368234', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3330, 'housing', 'Char3:110000107b574aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3331, 'motels', 'Char3:110000107b574aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3332, 'motels_bed', 'Char3:110000107b574aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3336, 'motels', 'Char1:11000014443fd6a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3337, 'motels_bed', 'Char1:11000014443fd6a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3338, 'housing', 'Char1:11000014443fd6a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3345, 'motels', 'steam:11000014253bc47', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3346, 'housing', 'steam:11000014253bc47', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3347, 'motels_bed', 'steam:11000014253bc47', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3348, 'housing', 'Char1:11000010ee31963', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3349, 'motels', 'Char1:11000010ee31963', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3350, 'motels_bed', 'Char1:11000010ee31963', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3351, 'housing', 'steam:11000013dacca06', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3352, 'motels_bed', 'steam:11000013dacca06', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3353, 'motels', 'steam:11000013dacca06', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3357, 'housing', 'Char3:110000135d6c3b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3358, 'motels', 'Char3:110000135d6c3b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3359, 'motels_bed', 'Char3:110000135d6c3b4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3360, 'motels_bed', 'steam:110000136bc2ecb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3361, 'motels', 'steam:110000136bc2ecb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3362, 'housing', 'steam:110000136bc2ecb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3363, 'motels', 'steam:110000133aecdd5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3364, 'motels_bed', 'steam:110000133aecdd5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3365, 'housing', 'steam:110000133aecdd5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3372, 'housing', 'steam:11000010f832b9f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3373, 'motels', 'steam:11000010f832b9f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3374, 'motels_bed', 'steam:11000010f832b9f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3375, 'motels_bed', 'steam:110000115ac09f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3376, 'motels', 'steam:110000115ac09f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3377, 'housing', 'steam:110000115ac09f3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3381, 'motels_bed', 'steam:11000011a1ea354', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3382, 'housing', 'steam:11000011a1ea354', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3383, 'motels', 'steam:11000011a1ea354', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3384, 'housing', 'steam:11000011a505342', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3385, 'motels', 'steam:11000011a505342', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3386, 'motels_bed', 'steam:11000011a505342', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3390, 'housing', 'Char2:11000013e11e83d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3391, 'motels', 'Char2:11000013e11e83d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3392, 'motels_bed', 'Char2:11000013e11e83d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3393, 'housing', 'steam:11000014447b2d9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3394, 'motels_bed', 'steam:11000014447b2d9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3395, 'motels', 'steam:11000014447b2d9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3396, 'housing', 'steam:1100001138b100a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3397, 'motels', 'steam:1100001138b100a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3398, 'motels_bed', 'steam:1100001138b100a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3399, 'housing', 'steam:110000135b3bfb5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3400, 'motels', 'steam:110000135b3bfb5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3401, 'motels_bed', 'steam:110000135b3bfb5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3402, 'motels_bed', 'steam:110000132aa40c6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3403, 'housing', 'steam:110000132aa40c6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3404, 'motels', 'steam:110000132aa40c6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3405, 'motels', 'Char3:11000014443fd6a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3406, 'housing', 'Char3:11000014443fd6a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3407, 'motels_bed', 'Char3:11000014443fd6a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3408, 'housing', 'Char2:11000010381eb9d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3409, 'motels', 'Char2:11000010381eb9d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3410, 'motels_bed', 'Char2:11000010381eb9d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3411, 'housing', 'Char3:11000013e11e83d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3412, 'motels', 'Char3:11000013e11e83d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3413, 'motels_bed', 'Char3:11000013e11e83d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3420, 'housing', 'steam:11000013f56fb42', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3421, 'motels', 'steam:11000013f56fb42', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3422, 'motels_bed', 'steam:11000013f56fb42', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3426, 'housing', 'steam:11000014443fd6a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3427, 'motels', 'steam:11000014443fd6a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3428, 'motels_bed', 'steam:11000014443fd6a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3429, 'housing', 'Char2:11000010bac92cf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3430, 'motels', 'Char2:11000010bac92cf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3431, 'motels_bed', 'Char2:11000010bac92cf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3432, 'housing', 'steam:11000013e12afc1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3433, 'motels', 'steam:11000013e12afc1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3434, 'motels_bed', 'steam:11000013e12afc1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3435, 'housing', 'steam:11000011a2606fe', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3436, 'motels', 'steam:11000011a2606fe', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3437, 'motels_bed', 'steam:11000011a2606fe', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3441, 'housing', 'steam:11000013e3a6c1d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3442, 'motels', 'steam:11000013e3a6c1d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3443, 'motels_bed', 'steam:11000013e3a6c1d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3444, 'housing', 'steam:110000141e450af', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3445, 'motels_bed', 'steam:110000141e450af', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3446, 'motels', 'steam:110000141e450af', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3447, 'housing', 'Char3:11000013b443979', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3448, 'motels', 'Char3:11000013b443979', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3449, 'motels_bed', 'Char3:11000013b443979', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3450, 'motels', 'steam:110000115694855', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3451, 'motels_bed', 'steam:110000115694855', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3452, 'housing', 'steam:110000115694855', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3453, 'housing', 'Char1:110000139cfcbed', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3454, 'motels', 'Char1:110000139cfcbed', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3455, 'motels_bed', 'Char1:110000139cfcbed', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3456, 'housing', 'steam:11000011963526b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3457, 'motels', 'steam:11000011963526b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3458, 'motels_bed', 'steam:11000011963526b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3459, 'housing', 'steam:110000104787cd5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3460, 'motels', 'steam:110000104787cd5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3461, 'motels_bed', 'steam:110000104787cd5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3468, 'housing', 'Char2:11000013c9fc1b6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3469, 'motels', 'Char2:11000013c9fc1b6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3470, 'motels_bed', 'Char2:11000013c9fc1b6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3471, 'housing', 'steam:11000013c1361ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3472, 'motels_bed', 'steam:11000013c1361ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3473, 'motels', 'steam:11000013c1361ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3474, 'housing', 'steam:110000141db0874', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3475, 'motels', 'steam:110000141db0874', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3476, 'motels_bed', 'steam:110000141db0874', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3477, 'motels', 'steam:11000013c7e40d1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3478, 'housing', 'steam:11000013c7e40d1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3479, 'motels_bed', 'steam:11000013c7e40d1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3483, 'housing', 'steam:1100001347a2854', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3484, 'motels', 'steam:1100001347a2854', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3485, 'motels_bed', 'steam:1100001347a2854', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3486, 'motels', 'steam:11000013683de59', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3487, 'housing', 'steam:11000013683de59', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3488, 'motels_bed', 'steam:11000013683de59', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3489, 'housing', 'steam:110000142792cfe', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3490, 'motels', 'steam:110000142792cfe', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3491, 'motels_bed', 'steam:110000142792cfe', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3492, 'motels_bed', 'steam:1100001416b8218', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3493, 'motels', 'steam:1100001416b8218', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3494, 'housing', 'steam:1100001416b8218', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3495, 'housing', 'steam:11000011af74e0c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3496, 'motels', 'steam:11000011af74e0c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3497, 'motels_bed', 'steam:11000011af74e0c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3498, 'housing', 'Char3:110000143ad56e4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3499, 'motels', 'Char3:110000143ad56e4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3500, 'motels_bed', 'Char3:110000143ad56e4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3501, 'housing', 'Char1:110000118e84e95', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3502, 'motels', 'Char1:110000118e84e95', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3503, 'motels_bed', 'Char1:110000118e84e95', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3504, 'housing', 'steam:1100001186412ae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3505, 'motels', 'steam:1100001186412ae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3506, 'motels_bed', 'steam:1100001186412ae', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3507, 'motels_bed', 'steam:110000141aa88cc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3508, 'motels', 'steam:110000141aa88cc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3509, 'housing', 'steam:110000141aa88cc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3510, 'housing', 'Char1:110000116466749', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3511, 'motels', 'Char1:110000116466749', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3512, 'motels_bed', 'Char1:110000116466749', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3513, 'motels', 'steam:11000010a71440d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3514, 'housing', 'steam:11000010a71440d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3515, 'motels_bed', 'steam:11000010a71440d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3519, 'motels', 'steam:1100001122755cd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3520, 'housing', 'steam:1100001122755cd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3521, 'motels_bed', 'steam:1100001122755cd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3525, 'housing', 'steam:110000104db0451', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3526, 'motels', 'steam:110000104db0451', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3527, 'motels_bed', 'steam:110000104db0451', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3528, 'motels', 'Char5:110000141611dcb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3529, 'motels_bed', 'Char5:110000141611dcb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3530, 'housing', 'Char5:110000141611dcb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3534, 'housing', 'Char2:11000011967b22c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3535, 'motels', 'Char2:11000011967b22c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3536, 'motels_bed', 'Char2:11000011967b22c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3537, 'housing', 'steam:110000116fb3785', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3538, 'motels_bed', 'steam:110000116fb3785', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3539, 'motels', 'steam:110000116fb3785', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3543, 'housing', 'steam:11000010eb2606d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3544, 'motels', 'steam:11000010eb2606d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3545, 'motels_bed', 'steam:11000010eb2606d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3546, 'housing', 'steam:110000133529c84', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3547, 'motels', 'steam:110000133529c84', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3548, 'motels_bed', 'steam:110000133529c84', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3549, 'housing', 'steam:110000143e3e28a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3550, 'motels', 'steam:110000143e3e28a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3551, 'motels_bed', 'steam:110000143e3e28a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3552, 'housing', 'steam:11000013fe9b2a8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3553, 'motels', 'steam:11000013fe9b2a8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3554, 'motels_bed', 'steam:11000013fe9b2a8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3555, 'housing', 'steam:110000118cabe4d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3556, 'motels', 'steam:110000118cabe4d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3557, 'motels_bed', 'steam:110000118cabe4d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3561, 'motels_bed', 'steam:1100001388dbbf8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3562, 'motels', 'steam:1100001388dbbf8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3563, 'housing', 'steam:1100001388dbbf8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3564, 'motels', 'Char2:1100001147943fc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3565, 'motels_bed', 'Char2:1100001147943fc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3566, 'housing', 'Char2:1100001147943fc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3567, 'motels_bed', 'steam:110000111096316', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3568, 'housing', 'steam:110000111096316', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3569, 'motels', 'steam:110000111096316', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3570, 'motels_bed', 'steam:11000013d131f10', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3571, 'motels', 'steam:11000013d131f10', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3572, 'housing', 'steam:11000013d131f10', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3576, 'motels_bed', 'steam:11000013c9fc1b6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3577, 'housing', 'steam:11000013c9fc1b6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3578, 'motels', 'steam:11000013c9fc1b6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3579, 'motels_bed', 'steam:110000106e132fc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3580, 'motels', 'steam:110000106e132fc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3581, 'housing', 'steam:110000106e132fc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3582, 'motels_bed', 'steam:11000013e92b6f0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3583, 'housing', 'steam:11000013e92b6f0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3584, 'motels', 'steam:11000013e92b6f0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3585, 'housing', 'steam:110000134b2ed23', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3586, 'motels', 'steam:110000134b2ed23', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3587, 'motels_bed', 'steam:110000134b2ed23', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3591, 'motels', 'steam:11000013efe5d4b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3592, 'housing', 'steam:11000013efe5d4b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3593, 'motels_bed', 'steam:11000013efe5d4b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3594, 'motels', 'steam:110000143618d09', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3595, 'motels_bed', 'steam:110000143618d09', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3596, 'housing', 'steam:110000143618d09', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3597, 'motels', 'Char1:110000118f96a40', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3598, 'housing', 'Char1:110000118f96a40', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3599, 'motels_bed', 'Char1:110000118f96a40', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3600, 'housing', 'steam:11000013e25fc55', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3601, 'motels_bed', 'steam:11000013e25fc55', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3602, 'motels', 'steam:11000013e25fc55', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3603, 'housing', 'Char1:11000010381eb9d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3604, 'motels', 'Char1:11000010381eb9d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3605, 'motels_bed', 'Char1:11000010381eb9d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3606, 'housing', 'Char1:110000141691c73', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3607, 'motels', 'Char1:110000141691c73', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3608, 'motels_bed', 'Char1:110000141691c73', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3609, 'housing', 'steam:11000013dfc1db6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3610, 'motels', 'steam:11000013dfc1db6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3611, 'motels_bed', 'steam:11000013dfc1db6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3612, 'housing', 'steam:1100001347fb0ef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3613, 'motels', 'steam:1100001347fb0ef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3614, 'motels_bed', 'steam:1100001347fb0ef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3615, 'housing', 'steam:110000118e84e95', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3616, 'motels', 'steam:110000118e84e95', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3617, 'motels_bed', 'steam:110000118e84e95', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3621, 'housing', 'steam:11000013585493d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3622, 'motels', 'steam:11000013585493d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3623, 'motels_bed', 'steam:11000013585493d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3624, 'housing', 'Char1:11000010b017b42', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3625, 'motels', 'Char1:11000010b017b42', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3626, 'motels_bed', 'Char1:11000010b017b42', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3627, 'motels_bed', 'steam:11000010ec424bf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3628, 'motels', 'steam:11000010ec424bf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3629, 'housing', 'steam:11000010ec424bf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3630, 'housing', 'steam:11000011aefd824', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3631, 'motels', 'steam:11000011aefd824', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3632, 'motels_bed', 'steam:11000011aefd824', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3633, 'motels_bed', 'steam:1100001348fb652', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3634, 'housing', 'steam:1100001348fb652', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3635, 'motels', 'steam:1100001348fb652', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3636, 'motels_bed', 'Char1:110000143ef9e5e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3637, 'motels', 'Char1:110000143ef9e5e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3638, 'housing', 'Char1:110000143ef9e5e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3639, 'housing', 'steam:110000143711757', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3640, 'motels', 'steam:110000143711757', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3641, 'motels_bed', 'steam:110000143711757', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3642, 'housing', 'steam:11000013e1cf8ab', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3643, 'motels', 'steam:11000013e1cf8ab', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3644, 'motels_bed', 'steam:11000013e1cf8ab', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3645, 'housing', 'steam:110000118c39f97', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3646, 'motels', 'steam:110000118c39f97', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3647, 'motels_bed', 'steam:110000118c39f97', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3648, 'motels_bed', 'steam:1100001056a57ef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3649, 'housing', 'steam:1100001056a57ef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3650, 'motels', 'steam:1100001056a57ef', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3651, 'housing', 'steam:11000011adad366', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3652, 'motels', 'steam:11000011adad366', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3653, 'motels_bed', 'steam:11000011adad366', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3654, 'housing', 'steam:11000011928211b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3655, 'motels', 'steam:11000011928211b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3656, 'motels_bed', 'steam:11000011928211b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3657, 'housing', 'steam:1100001446d73b3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3658, 'motels', 'steam:1100001446d73b3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3659, 'motels_bed', 'steam:1100001446d73b3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3660, 'motels_bed', 'steam:1100001124bb713', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3661, 'motels', 'steam:1100001124bb713', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3662, 'housing', 'steam:1100001124bb713', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3663, 'housing', 'steam:11000013480a0da', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3664, 'motels', 'steam:11000013480a0da', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3665, 'motels_bed', 'steam:11000013480a0da', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3666, 'motels_bed', 'steam:11000013cf0ea76', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3667, 'motels', 'steam:11000013cf0ea76', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3668, 'housing', 'steam:11000013cf0ea76', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3669, 'motels_bed', 'steam:110000119045b2a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3670, 'motels', 'steam:110000119045b2a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3671, 'housing', 'steam:110000119045b2a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3672, 'housing', 'steam:11000010a456542', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3673, 'motels', 'steam:11000010a456542', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3674, 'motels_bed', 'steam:11000010a456542', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3675, 'housing', 'Char1:11000013532b8d3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3676, 'motels', 'Char1:11000013532b8d3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3677, 'motels_bed', 'Char1:11000013532b8d3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3678, 'motels_bed', 'steam:1100001347d142c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3679, 'housing', 'steam:1100001347d142c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3680, 'motels', 'steam:1100001347d142c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3681, 'housing', 'steam:1100001360d3f71', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3682, 'motels', 'steam:1100001360d3f71', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3683, 'motels_bed', 'steam:1100001360d3f71', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3684, 'motels_bed', 'steam:110000111757b76', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3685, 'motels', 'steam:110000111757b76', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3686, 'housing', 'steam:110000111757b76', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3687, 'housing', 'Char1:1100001435145a0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3688, 'motels', 'Char1:1100001435145a0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3689, 'motels_bed', 'Char1:1100001435145a0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3690, 'housing', 'steam:11000014187b04a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3691, 'motels', 'steam:11000014187b04a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3692, 'motels_bed', 'steam:11000014187b04a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3693, 'motels_bed', 'steam:1100001410325e6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3694, 'motels', 'steam:1100001410325e6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3695, 'housing', 'steam:1100001410325e6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3696, 'motels_bed', 'steam:110000131e38ed2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3697, 'motels', 'steam:110000131e38ed2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3698, 'housing', 'steam:110000131e38ed2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3699, 'housing', 'steam:110000142991d01', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3700, 'motels', 'steam:110000142991d01', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3701, 'motels_bed', 'steam:110000142991d01', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3702, 'housing', 'steam:110000111c426dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3703, 'motels_bed', 'steam:110000111c426dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3704, 'motels', 'steam:110000111c426dc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3705, 'housing', 'steam:110000142a11fd8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3706, 'motels', 'steam:110000142a11fd8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3707, 'motels_bed', 'steam:110000142a11fd8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3711, 'housing', 'steam:1100001448788ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3712, 'motels_bed', 'steam:1100001448788ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3713, 'motels', 'steam:1100001448788ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3714, 'housing', 'steam:110000115af3f8d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3715, 'motels', 'steam:110000115af3f8d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3716, 'motels_bed', 'steam:110000115af3f8d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3717, 'housing', 'Char1:11000011d2c3821', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3718, 'motels', 'Char1:11000011d2c3821', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3719, 'motels_bed', 'Char1:11000011d2c3821', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3726, 'housing', 'steam:110000144825df4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3727, 'motels', 'steam:110000144825df4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3728, 'motels_bed', 'steam:110000144825df4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3729, 'housing', 'steam:110000116e8b23f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3730, 'motels', 'steam:110000116e8b23f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3731, 'motels_bed', 'steam:110000116e8b23f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3732, 'housing', 'steam:11000014367f232', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3733, 'motels', 'steam:11000014367f232', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3734, 'motels_bed', 'steam:11000014367f232', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3735, 'motels_bed', 'steam:11000013d0a14aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3736, 'housing', 'steam:11000013d0a14aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3737, 'motels', 'steam:11000013d0a14aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3738, 'motels', 'steam:11000011c74cd97', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3739, 'motels_bed', 'steam:11000011c74cd97', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3740, 'housing', 'steam:11000011c74cd97', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3741, 'housing', 'steam:11000013ef25414', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3742, 'motels', 'steam:11000013ef25414', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3743, 'motels_bed', 'steam:11000013ef25414', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3744, 'motels_bed', 'steam:110000133b79eaa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3745, 'housing', 'steam:110000133b79eaa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3746, 'motels', 'steam:110000133b79eaa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3747, 'motels_bed', 'steam:11000013d1d2a60', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3748, 'motels', 'steam:11000013d1d2a60', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3749, 'housing', 'steam:11000013d1d2a60', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3750, 'motels', 'steam:11000013d3260b3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3751, 'motels_bed', 'steam:11000013d3260b3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3752, 'housing', 'steam:11000013d3260b3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3753, 'housing', 'steam:110000118f96a40', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3754, 'motels', 'steam:110000118f96a40', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3755, 'motels_bed', 'steam:110000118f96a40', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3756, 'housing', 'steam:110000116d3fe29', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3757, 'motels', 'steam:110000116d3fe29', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3758, 'motels_bed', 'steam:110000116d3fe29', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3759, 'housing', 'steam:11000011c8ecdac', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3760, 'motels', 'steam:11000011c8ecdac', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3761, 'motels_bed', 'steam:11000011c8ecdac', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3762, 'housing', 'steam:11000011aba1f9c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3763, 'motels_bed', 'steam:11000011aba1f9c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3764, 'motels', 'steam:11000011aba1f9c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3765, 'motels_bed', 'steam:110000115149446', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3766, 'housing', 'steam:110000115149446', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3767, 'motels', 'steam:110000115149446', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3768, 'motels', 'steam:110000144744ae7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3769, 'motels_bed', 'steam:110000144744ae7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3770, 'housing', 'steam:110000144744ae7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3771, 'housing', 'steam:110000138428454', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3772, 'motels_bed', 'steam:110000138428454', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3773, 'motels', 'steam:110000138428454', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3774, 'motels_bed', 'steam:11000013b0aee61', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3775, 'motels', 'steam:11000013b0aee61', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3776, 'housing', 'steam:11000013b0aee61', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3780, 'housing', 'steam:1100001146e7f18', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3781, 'motels', 'steam:1100001146e7f18', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3782, 'motels_bed', 'steam:1100001146e7f18', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3783, 'housing', 'steam:11000013f8d4b03', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3784, 'motels_bed', 'steam:11000013f8d4b03', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3785, 'motels', 'steam:11000013f8d4b03', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3789, 'motels', 'steam:1100001364c8801', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3790, 'housing', 'steam:1100001364c8801', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3791, 'motels_bed', 'steam:1100001364c8801', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3792, 'motels', 'steam:1100001141188cc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3793, 'housing', 'steam:1100001141188cc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3794, 'motels_bed', 'steam:1100001141188cc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3795, 'housing', 'steam:110000112a62ce3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3796, 'motels', 'steam:110000112a62ce3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3797, 'motels_bed', 'steam:110000112a62ce3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3798, 'motels_bed', 'Char1:11000010edfc70c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3799, 'housing', 'Char1:11000010edfc70c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3800, 'motels', 'Char1:11000010edfc70c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3801, 'housing', 'steam:110000136f973ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3802, 'motels', 'steam:110000136f973ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3803, 'motels_bed', 'steam:110000136f973ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3804, 'motels', 'Char1:11000013c6fa1db', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3805, 'motels_bed', 'Char1:11000013c6fa1db', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3806, 'housing', 'Char1:11000013c6fa1db', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3807, 'motels_bed', 'steam:1100001419d0d81', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3808, 'housing', 'steam:1100001419d0d81', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3809, 'motels', 'steam:1100001419d0d81', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3810, 'motels_bed', 'Char1:11000013dc65968', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3811, 'housing', 'Char1:11000013dc65968', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3812, 'motels', 'Char1:11000013dc65968', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3813, 'motels', 'steam:11000011637e3aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3814, 'motels_bed', 'steam:11000011637e3aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3815, 'housing', 'steam:11000011637e3aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3816, 'motels', 'steam:11000011abbcdd2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3817, 'housing', 'steam:11000011abbcdd2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3818, 'motels_bed', 'steam:11000011abbcdd2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3819, 'housing', 'steam:11000014475c8aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3820, 'motels', 'steam:11000014475c8aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3821, 'motels_bed', 'steam:11000014475c8aa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3825, 'housing', 'steam:11000011ad1d6b0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3826, 'motels_bed', 'steam:11000011ad1d6b0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3827, 'motels', 'steam:11000011ad1d6b0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3828, 'motels_bed', 'steam:11000013e0a73d0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3829, 'housing', 'steam:11000013e0a73d0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3830, 'motels', 'steam:11000013e0a73d0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3831, 'motels_bed', 'steam:110000111f25660', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3832, 'housing', 'steam:110000111f25660', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3833, 'motels', 'steam:110000111f25660', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3834, 'motels_bed', 'steam:11000011a7b34a5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3835, 'motels', 'steam:11000011a7b34a5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3836, 'housing', 'steam:11000011a7b34a5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3837, 'motels_bed', 'steam:110000135710604', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3838, 'motels', 'steam:110000135710604', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3839, 'housing', 'steam:110000135710604', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3840, 'motels', 'steam:11000013442352f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3841, 'housing', 'steam:11000013442352f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3842, 'motels_bed', 'steam:11000013442352f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3843, 'housing', 'Char1:110000114bbac9a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3844, 'motels', 'Char1:110000114bbac9a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3845, 'motels_bed', 'Char1:110000114bbac9a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3846, 'motels', 'steam:110000144338b4c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3847, 'motels_bed', 'steam:110000144338b4c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3848, 'housing', 'steam:110000144338b4c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3861, 'motels', 'steam:110000116de58e1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3862, 'motels_bed', 'steam:110000116de58e1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3863, 'housing', 'steam:110000116de58e1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3867, 'housing', 'steam:11000013e4fe3da', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3868, 'motels', 'steam:11000013e4fe3da', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3869, 'motels_bed', 'steam:11000013e4fe3da', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3870, 'motels_bed', 'steam:11000010b550415', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3871, 'housing', 'steam:11000010b550415', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3872, 'motels', 'steam:11000010b550415', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3873, 'motels_bed', 'steam:11000013de14e39', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3874, 'motels', 'steam:11000013de14e39', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3875, 'housing', 'steam:11000013de14e39', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3876, 'motels_bed', 'steam:1100001340b9d07', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3877, 'motels', 'steam:1100001340b9d07', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3878, 'housing', 'steam:1100001340b9d07', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3882, 'housing', 'steam:11000013f1d0f04', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3883, 'motels', 'steam:11000013f1d0f04', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3884, 'motels_bed', 'steam:11000013f1d0f04', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3885, 'motels_bed', 'steam:1100001376579c1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3886, 'motels', 'steam:1100001376579c1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3887, 'housing', 'steam:1100001376579c1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3888, 'motels_bed', 'steam:110000134b5ddb1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3889, 'housing', 'steam:110000134b5ddb1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3890, 'motels', 'steam:110000134b5ddb1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3891, 'motels_bed', 'steam:110000110ee6772', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3892, 'housing', 'steam:110000110ee6772', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3893, 'motels', 'steam:110000110ee6772', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3894, 'motels_bed', 'steam:1100001147943fc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3895, 'motels', 'steam:1100001147943fc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3896, 'housing', 'steam:1100001147943fc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3897, 'motels_bed', 'steam:11000010b017b42', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3898, 'housing', 'steam:11000010b017b42', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3899, 'motels', 'steam:11000010b017b42', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3900, 'motels', 'steam:1100001370b1636', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3901, 'motels_bed', 'steam:1100001370b1636', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3902, 'housing', 'steam:1100001370b1636', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3903, 'housing', 'Char1:110000142935b66', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3904, 'motels_bed', 'Char1:110000142935b66', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3905, 'motels', 'Char1:110000142935b66', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3915, 'housing', 'steam:11000011a104ed3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3916, 'motels', 'steam:11000011a104ed3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3917, 'motels_bed', 'steam:11000011a104ed3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3927, 'housing', 'Char3:110000135b3bfb5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3928, 'motels', 'Char3:110000135b3bfb5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3929, 'motels_bed', 'Char3:110000135b3bfb5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3933, 'housing', 'steam:11000013c2883d4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3934, 'motels', 'steam:11000013c2883d4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3935, 'motels_bed', 'steam:11000013c2883d4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3936, 'housing', 'steam:1100001365e10bf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3937, 'motels', 'steam:1100001365e10bf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3938, 'motels_bed', 'steam:1100001365e10bf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3939, 'motels', 'steam:11000011169c6d4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3940, 'housing', 'steam:11000011169c6d4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3941, 'motels_bed', 'steam:11000011169c6d4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3948, 'motels_bed', 'steam:11000010b32602f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3949, 'motels', 'steam:11000010b32602f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3950, 'housing', 'steam:11000010b32602f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3963, 'housing', 'steam:110000119c0eb0c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3964, 'motels', 'steam:110000119c0eb0c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3965, 'motels_bed', 'steam:110000119c0eb0c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3966, 'housing', 'steam:11000011320b735', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3967, 'motels', 'steam:11000011320b735', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3968, 'motels_bed', 'steam:11000011320b735', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3969, 'housing', 'steam:11000011113544c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3970, 'motels', 'steam:11000011113544c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3971, 'motels_bed', 'steam:11000011113544c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3972, 'housing', 'steam:11000011d2c3821', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3973, 'motels', 'steam:11000011d2c3821', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3974, 'motels_bed', 'steam:11000011d2c3821', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3975, 'housing', 'steam:110000142935b66', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3976, 'motels', 'steam:110000142935b66', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3977, 'motels_bed', 'steam:110000142935b66', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3978, 'housing', 'steam:11000010a2f701b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3979, 'motels', 'steam:11000010a2f701b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3980, 'motels_bed', 'steam:11000010a2f701b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3981, 'housing', 'Char3:11000013b0aee61', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3982, 'motels', 'Char3:11000013b0aee61', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3983, 'motels_bed', 'Char3:11000013b0aee61', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3984, 'housing', 'steam:11000010c9afdd9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3985, 'motels', 'steam:11000010c9afdd9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3986, 'motels_bed', 'steam:11000010c9afdd9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3990, 'motels', 'steam:110000111c50769', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3991, 'motels_bed', 'steam:110000111c50769', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3992, 'housing', 'steam:110000111c50769', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3993, 'housing', 'steam:1100001361ca488', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3994, 'motels', 'steam:1100001361ca488', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3995, 'motels_bed', 'steam:1100001361ca488', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3996, 'housing', 'steam:11000011d3f19dd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3997, 'motels', 'steam:11000011d3f19dd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3998, 'motels_bed', 'steam:11000011d3f19dd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3999, 'housing', 'steam:110000138e6cb6d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4000, 'motels', 'steam:110000138e6cb6d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4001, 'motels_bed', 'steam:110000138e6cb6d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4002, 'housing', 'steam:110000107163efb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4003, 'motels', 'steam:110000107163efb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4004, 'motels_bed', 'steam:110000107163efb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4005, 'housing', 'Char1:11000013c59f720', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4006, 'motels', 'Char1:11000013c59f720', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4007, 'motels_bed', 'Char1:11000013c59f720', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4011, 'motels_bed', 'Char2:1100001417e2fcc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4012, 'motels', 'Char2:1100001417e2fcc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4013, 'housing', 'Char2:1100001417e2fcc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4014, 'housing', 'Char2:11000011438cffd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4015, 'motels', 'Char2:11000011438cffd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4016, 'motels_bed', 'Char2:11000011438cffd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4017, 'housing', 'steam:11000013dfa481d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4018, 'motels', 'steam:11000013dfa481d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4019, 'motels_bed', 'steam:11000013dfa481d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4020, 'housing', 'Char2:11000010edfc70c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4021, 'motels', 'Char2:11000010edfc70c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4022, 'motels_bed', 'Char2:11000010edfc70c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4023, 'housing', 'steam:11000013f50e36b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4024, 'motels', 'steam:11000013f50e36b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4025, 'motels_bed', 'steam:11000013f50e36b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4032, 'motels', 'steam:11000013f45719e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4033, 'motels_bed', 'steam:11000013f45719e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4034, 'housing', 'steam:11000013f45719e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4038, 'housing', 'steam:11000013e5aa2ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4039, 'motels', 'steam:11000013e5aa2ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4040, 'motels_bed', 'steam:11000013e5aa2ca', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4041, 'housing', 'steam:11000010381eb9d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4042, 'motels', 'steam:11000010381eb9d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4043, 'motels_bed', 'steam:11000010381eb9d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4047, 'housing', 'steam:110000137677f6e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4048, 'motels', 'steam:110000137677f6e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4049, 'motels_bed', 'steam:110000137677f6e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4050, 'housing', 'Char5:11000014235c8cc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4051, 'motels', 'Char5:11000014235c8cc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4052, 'motels_bed', 'Char5:11000014235c8cc', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4053, 'housing', 'steam:1100001165ef931', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4054, 'motels', 'steam:1100001165ef931', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4055, 'motels_bed', 'steam:1100001165ef931', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4056, 'motels', 'Char1:11000013c3eabce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4057, 'housing', 'Char1:11000013c3eabce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4058, 'motels_bed', 'Char1:11000013c3eabce', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4059, 'housing', 'steam:11000013623058a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4060, 'motels', 'steam:11000013623058a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4061, 'motels_bed', 'steam:11000013623058a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4062, 'housing', 'steam:1100001338baa5c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4063, 'motels', 'steam:1100001338baa5c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4064, 'motels_bed', 'steam:1100001338baa5c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4065, 'housing', 'steam:110000141e56b2b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4066, 'motels', 'steam:110000141e56b2b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4067, 'motels_bed', 'steam:110000141e56b2b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4068, 'motels_bed', 'steam:11000013c1baf11', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4069, 'motels', 'steam:11000013c1baf11', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4070, 'housing', 'steam:11000013c1baf11', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4071, 'housing', 'steam:110000143469755', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4072, 'motels', 'steam:110000143469755', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4073, 'motels_bed', 'steam:110000143469755', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4074, 'housing', 'steam:11000013e6ccdab', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4075, 'motels', 'steam:11000013e6ccdab', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4076, 'motels_bed', 'steam:11000013e6ccdab', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4077, 'housing', 'steam:1100001422f08d9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4078, 'motels', 'steam:1100001422f08d9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4079, 'motels_bed', 'steam:1100001422f08d9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4080, 'housing', 'steam:11000011599c2e9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4081, 'motels', 'steam:11000011599c2e9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4082, 'motels_bed', 'steam:11000011599c2e9', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4083, 'housing', 'Char1:1100001160ca893', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4084, 'motels', 'Char1:1100001160ca893', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4085, 'motels_bed', 'Char1:1100001160ca893', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4086, 'housing', 'steam:1100001153f89d1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4087, 'motels', 'steam:1100001153f89d1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4088, 'motels_bed', 'steam:1100001153f89d1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4092, 'housing', 'Char4:110000110ee6772', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4093, 'motels', 'Char4:110000110ee6772', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4094, 'motels_bed', 'Char4:110000110ee6772', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4095, 'housing', 'steam:1100001154c57a4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4096, 'motels', 'steam:1100001154c57a4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4097, 'motels_bed', 'steam:1100001154c57a4', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4098, 'motels_bed', 'steam:110000114bbac9a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4099, 'motels', 'steam:110000114bbac9a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4100, 'housing', 'steam:110000114bbac9a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4104, 'housing', 'steam:11000013dd166a1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4105, 'motels', 'steam:11000013dd166a1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4106, 'motels_bed', 'steam:11000013dd166a1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4107, 'housing', 'steam:11000011a30a1a6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4108, 'motels', 'steam:11000011a30a1a6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4109, 'motels_bed', 'steam:11000011a30a1a6', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4110, 'housing', 'steam:110000139cfcbed', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4111, 'motels', 'steam:110000139cfcbed', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4112, 'motels_bed', 'steam:110000139cfcbed', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4113, 'housing', 'Char1:11000013c37faf5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4114, 'motels', 'Char1:11000013c37faf5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4115, 'motels_bed', 'Char1:11000013c37faf5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4116, 'housing', 'steam:1100001403ec353', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4117, 'motels', 'steam:1100001403ec353', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4118, 'motels_bed', 'steam:1100001403ec353', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4119, 'housing', 'steam:11000013dc65968', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4120, 'motels', 'steam:11000013dc65968', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4121, 'motels_bed', 'steam:11000013dc65968', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4122, 'housing', 'steam:11000010e48c1e5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4123, 'motels', 'steam:11000010e48c1e5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4124, 'motels_bed', 'steam:11000010e48c1e5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4125, 'housing', 'steam:11000011ade5f23', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4126, 'motels', 'steam:11000011ade5f23', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4127, 'motels_bed', 'steam:11000011ade5f23', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4128, 'housing', 'steam:11000013f5cb873', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4129, 'motels', 'steam:11000013f5cb873', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4130, 'motels_bed', 'steam:11000013f5cb873', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4131, 'housing', 'steam:1100001037b05c1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4132, 'motels', 'steam:1100001037b05c1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4133, 'motels_bed', 'steam:1100001037b05c1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4134, 'housing', 'steam:1100001117fc212', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4135, 'motels_bed', 'steam:1100001117fc212', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4136, 'motels', 'steam:1100001117fc212', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4143, 'housing', 'steam:11000013fccadc2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4144, 'motels', 'steam:11000013fccadc2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4145, 'motels_bed', 'steam:11000013fccadc2', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4146, 'housing', 'steam:11000013386bbcd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4147, 'motels', 'steam:11000013386bbcd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4148, 'motels_bed', 'steam:11000013386bbcd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4149, 'housing', 'steam:1100001362c422e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4150, 'motels', 'steam:1100001362c422e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4151, 'motels_bed', 'steam:1100001362c422e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4152, 'housing', 'steam:11000013c6fa1db', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4153, 'motels', 'steam:11000013c6fa1db', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4154, 'motels_bed', 'steam:11000013c6fa1db', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4155, 'housing', 'steam:11000011bd9371b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4156, 'motels', 'steam:11000011bd9371b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4157, 'motels_bed', 'steam:11000011bd9371b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4161, 'housing', 'steam:1100001428e4f60', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4162, 'motels_bed', 'steam:1100001428e4f60', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4163, 'motels', 'steam:1100001428e4f60', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4167, 'housing', 'steam:11000010e7046fd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4168, 'motels', 'steam:11000010e7046fd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4169, 'motels_bed', 'steam:11000010e7046fd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4170, 'housing', 'steam:11000013d149e60', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4171, 'motels_bed', 'steam:11000013d149e60', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4172, 'motels', 'steam:11000013d149e60', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4173, 'housing', 'steam:11000011d3914c3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4174, 'motels', 'steam:11000011d3914c3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4175, 'motels_bed', 'steam:11000011d3914c3', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4176, 'housing', 'steam:11000013edf9f76', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4177, 'motels', 'steam:11000013edf9f76', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4178, 'motels_bed', 'steam:11000013edf9f76', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4179, 'housing', 'steam:110000116ff8048', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4180, 'motels', 'steam:110000116ff8048', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4181, 'motels_bed', 'steam:110000116ff8048', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4182, 'housing', 'steam:11000013db2306f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4183, 'motels', 'steam:11000013db2306f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4184, 'motels_bed', 'steam:11000013db2306f', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4185, 'housing', 'Char1:1100001444b4cbd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4186, 'motels', 'Char1:1100001444b4cbd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4187, 'motels_bed', 'Char1:1100001444b4cbd', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4188, 'housing', 'steam:11000011578c5b1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4189, 'motels', 'steam:11000011578c5b1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4190, 'motels_bed', 'steam:11000011578c5b1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4191, 'housing', 'Char1:110000114785f47', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4192, 'motels_bed', 'Char1:110000114785f47', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4193, 'motels', 'Char1:110000114785f47', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4194, 'housing', 'steam:110000114efb958', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4195, 'motels', 'steam:110000114efb958', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4196, 'motels_bed', 'steam:110000114efb958', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4197, 'housing', 'Char2:11000011320b735', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4198, 'motels', 'Char2:11000011320b735', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4199, 'motels_bed', 'Char2:11000011320b735', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4200, 'housing', 'steam:1100001144c9f03', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4201, 'motels', 'steam:1100001144c9f03', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4202, 'motels_bed', 'steam:1100001144c9f03', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4206, 'housing', 'steam:11000011564c8b8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4207, 'motels', 'steam:11000011564c8b8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4208, 'motels_bed', 'steam:11000011564c8b8', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4209, 'housing', 'steam:110000142585a4b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4210, 'motels', 'steam:110000142585a4b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4211, 'motels_bed', 'steam:110000142585a4b', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4212, 'housing', 'Char1:1100001444295b0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4213, 'motels', 'Char1:1100001444295b0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4214, 'motels_bed', 'Char1:1100001444295b0', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4215, 'housing', 'steam:11000014243bfc7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4216, 'motels', 'steam:11000014243bfc7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4217, 'motels_bed', 'steam:11000014243bfc7', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4218, 'housing', 'steam:11000010edfc70c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4219, 'motels', 'steam:11000010edfc70c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4220, 'motels_bed', 'steam:11000010edfc70c', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4221, 'housing', 'steam:11000013d7ec991', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4222, 'motels', 'steam:11000013d7ec991', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4223, 'motels_bed', 'steam:11000013d7ec991', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4227, 'housing', 'steam:110000114785f47', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4228, 'motels', 'steam:110000114785f47', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4229, 'motels_bed', 'steam:110000114785f47', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4230, 'housing', 'steam:1100001148c2737', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4231, 'motels', 'steam:1100001148c2737', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4232, 'motels_bed', 'steam:1100001148c2737', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4233, 'housing', 'steam:11000010bef4caa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4234, 'motels', 'steam:11000010bef4caa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4235, 'motels_bed', 'steam:11000010bef4caa', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4236, 'housing', 'steam:11000011b399ecf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4237, 'motels', 'steam:11000011b399ecf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4238, 'motels_bed', 'steam:11000011b399ecf', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4239, 'housing', 'steam:110000136168635', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4240, 'motels', 'steam:110000136168635', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4241, 'motels_bed', 'steam:110000136168635', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4242, 'housing', 'steam:1100001407e91c5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4243, 'motels', 'steam:1100001407e91c5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4244, 'motels_bed', 'steam:1100001407e91c5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4245, 'motels', 'steam:11000013fd2cb8d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4246, 'motels_bed', 'steam:11000013fd2cb8d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4247, 'housing', 'steam:11000013fd2cb8d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4248, 'housing', 'steam:110000112c8b65a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4249, 'motels', 'steam:110000112c8b65a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4250, 'motels_bed', 'steam:110000112c8b65a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4251, 'housing', 'steam:1100001176d53c1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4252, 'motels', 'steam:1100001176d53c1', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(4253, 'motels_bed', 'steam:1100001176d53c1', '{}');
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Dumping structure for table evrp.disc_ammo
CREATE TABLE IF NOT EXISTS `disc_ammo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner` text NOT NULL,
  `hash` text NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.disc_ammo: ~0 rows (approximately)
/*!40000 ALTER TABLE `disc_ammo` DISABLE KEYS */;
/*!40000 ALTER TABLE `disc_ammo` ENABLE KEYS */;

-- Dumping structure for table evrp.disc_inventory
CREATE TABLE IF NOT EXISTS `disc_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` text COLLATE utf8_bin NOT NULL,
  `type` text COLLATE utf8_bin,
  `data` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.disc_inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `disc_inventory` DISABLE KEYS */;
INSERT INTO `disc_inventory` (`id`, `owner`, `type`, `data`) VALUES
	(1, 'steam:110000107b574aa', 'player', '{"1":{"name":"WEAPON_PISTOL","count":1}}');
/*!40000 ALTER TABLE `disc_inventory` ENABLE KEYS */;

-- Dumping structure for table evrp.disc_inventory_itemdata
CREATE TABLE IF NOT EXISTS `disc_inventory_itemdata` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin,
  `weight` int(11) NOT NULL DEFAULT '0',
  `closeonuse` tinyint(1) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '100',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.disc_inventory_itemdata: ~0 rows (approximately)
/*!40000 ALTER TABLE `disc_inventory_itemdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `disc_inventory_itemdata` ENABLE KEYS */;

-- Dumping structure for table evrp.dpkeybinds
CREATE TABLE IF NOT EXISTS `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table evrp.dpkeybinds: ~2 rows (approximately)
/*!40000 ALTER TABLE `dpkeybinds` DISABLE KEYS */;
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107b574aa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001176d53c1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
/*!40000 ALTER TABLE `dpkeybinds` ENABLE KEYS */;

-- Dumping structure for table evrp.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.fine_types: ~29 rows (approximately)
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(1, 'שריפת רמזור אדום', 200);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(12, 'נהיגה רועשת', 100);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(13, 'מהירות מופרזת', 250);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(14, 'חניה לא חוקית', 60);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(15, 'שיפורים לא חוקיים לרכב', 250);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(16, 'בריחה משוטר בנהיגה', 500);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(17, 'נסיעה נגד כיוון התנועה', 300);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(18, 'נהיגה פרועה', 200);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(19, 'פגע וברח', 1000);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(20, 'נהיגה ללא רשיון', 300);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(23, 'אי סדר ציבורי', 150);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(24, 'חסימת פעולת המשטרה', 300);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(25, 'עלבון אזרחים / בין אזרחים', 100);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(26, 'אלימות בציבור', 200);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(27, 'הפרעה לשוטר במילוי תפקידו', 200);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(28, 'העלבת שוטר', 100);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(29, 'ניסיון בריחה משוטר', 250);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(30, 'אי ציות לשוטר', 100);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(31, 'שידול קטינים', 500);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(33, 'נסיון רצח', 5000);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(38, 'גניבת רכב', 300);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(39, 'סחר בסמים', 4000);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(40, 'ניסיון שחיתות', 1500);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(41, 'שוטר מושחת', 10000);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(42, 'החזקת נשק לא חוקי', 1000);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(43, 'החזקת סמים', 800);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(44, 'החזקת נשק קל ללא רשיון', 800);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(52, 'החזקת סם רפואי ללא אישור', 700);
INSERT INTO `fine_types` (`id`, `label`, `amount`) VALUES
	(53, 'חסימת תנועה', 200);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;

-- Dumping structure for table evrp.houselocations
CREATE TABLE IF NOT EXISTS `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text,
  `owned` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` tinyint(2) DEFAULT NULL,
  `garage` text,
  `swiss` varchar(3) NOT NULL,
  `logoutout` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table evrp.houselocations: ~2 rows (approximately)
/*!40000 ALTER TABLE `houselocations` DISABLE KEYS */;
INSERT INTO `houselocations` (`id`, `name`, `label`, `coords`, `owned`, `price`, `tier`, `garage`, `swiss`, `logoutout`) VALUES
	(1, 'wild oats dr1', 'Wild Oats Dr 1', '{"cam":{"y":487.9338073730469,"h":231.17807006835938,"z":128.76809692382813,"yaw":-10.0,"x":-230.2288360595703},"enter":{"y":487.9338073730469,"h":231.17807006835938,"x":-230.2288360595703,"z":128.76809692382813}}', '0', 62, 7, NULL, '', '');
INSERT INTO `houselocations` (`id`, `name`, `label`, `coords`, `owned`, `price`, `tier`, `garage`, `swiss`, `logoutout`) VALUES
	(2, 'wild oats dr1', 'Wild Oats Dr 1', '{"cam":{"y":487.8734436035156,"h":231.1363067626953,"z":128.76808166503907,"yaw":-10.0,"x":-230.14683532714845},"enter":{"y":487.8734436035156,"h":231.1363067626953,"x":-230.14683532714845,"z":128.76808166503907}}', '0', 62, 6, NULL, '', '');
/*!40000 ALTER TABLE `houselocations` ENABLE KEYS */;

-- Dumping structure for table evrp.house_plants
CREATE TABLE IF NOT EXISTS `house_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(50) DEFAULT NULL,
  `stage` varchar(50) DEFAULT 'stage-a',
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT '100',
  `health` int(11) DEFAULT '100',
  `progress` int(11) DEFAULT '0',
  `coords` text,
  `plantid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building` (`building`),
  KEY `plantid` (`plantid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.house_plants: ~0 rows (approximately)
/*!40000 ALTER TABLE `house_plants` DISABLE KEYS */;
INSERT INTO `house_plants` (`id`, `building`, `stage`, `sort`, `gender`, `food`, `health`, `progress`, `coords`, `plantid`) VALUES
	(1, 'wild oats dr1', 'stage-a', 'ak47', 'woman', 99, 100, 0, '{"z":103.78697967529297,"y":487.4740905761719,"x":-229.4853515625}', '614131');
/*!40000 ALTER TABLE `house_plants` ENABLE KEYS */;

-- Dumping structure for table evrp.insto_accounts
CREATE TABLE IF NOT EXISTS `insto_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forename` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `surname` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table evrp.insto_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `insto_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `insto_accounts` ENABLE KEYS */;

-- Dumping structure for table evrp.insto_instas
CREATE TABLE IF NOT EXISTS `insto_instas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filters` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_insto_instas_insto_accounts` (`authorId`),
  CONSTRAINT `FK_insto_instas_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `insto_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=674 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table evrp.insto_instas: ~0 rows (approximately)
/*!40000 ALTER TABLE `insto_instas` DISABLE KEYS */;
/*!40000 ALTER TABLE `insto_instas` ENABLE KEYS */;

-- Dumping structure for table evrp.insto_likes
CREATE TABLE IF NOT EXISTS `insto_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `inapId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_insto_likes_insto_accounts` (`authorId`),
  KEY `FK_insto_likes_insto_instas` (`inapId`),
  CONSTRAINT `FK_insto_likes_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `insto_accounts` (`id`),
  CONSTRAINT `FK_insto_likes_insto_instas` FOREIGN KEY (`inapId`) REFERENCES `insto_instas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=446 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table evrp.insto_likes: ~0 rows (approximately)
/*!40000 ALTER TABLE `insto_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `insto_likes` ENABLE KEYS */;

-- Dumping structure for table evrp.inventories
CREATE TABLE IF NOT EXISTS `inventories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` text COLLATE utf8_bin NOT NULL,
  `data` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.inventories: ~0 rows (approximately)
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;

-- Dumping structure for table evrp.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1',
  `weight` float NOT NULL DEFAULT '0.1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.items: ~302 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('10ct_gold_chain', '10CT Gold Chain', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('2ct_gold_chain', '2CT Gold Chain', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('5ct_gold_chain', '5CT Gold Chain', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('8ct_gold_chain', '8CT Gold Chain', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('Coffee', 'Coffee', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('IceCream', 'Ice Cream', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_ADVANCEDRIFLE', 'Advanced Rifle', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_APPISTOL', 'AP Pistol', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_ASSAULTRIFLE', 'Assault Rifle', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_ASSAULTSHOTGUN', 'Assault Shotgun', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_ASSAULTSMG', 'Assault SMG', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_AUTOSHOTGUN', 'Auto Shotgun', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_BALL', 'Ball', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_BAT', 'Bat', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_BATTLEAXE', 'Battle Axe', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_BOTTLE', 'Bottle', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_BULLPUPRIFLE', 'Bullpup Rifle', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_BULLPUPSHOTGUN', 'Bullpup Shotgun', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_BZGAS', 'BZ Gas', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_CARBINERIFLE', 'Carbine Rifle', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_COMBATMG', 'Combat MG', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_COMBATPDW', 'Combat PDW', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_COMBATPISTOL', 'Combat Pistol', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_COMPACTLAUNCHER', 'Compact Launcher', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_COMPACTRIFLE', 'Draco', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_CROWBAR', 'Crowbar', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_DAGGER', 'Dagger', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_DBSHOTGUN', 'Double Barrel Shotgun', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_DIGISCANNER', 'Digiscanner', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_DOUBLEACTION', 'Double Action Revolver', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_FIREEXTINGUISHER', 'Fire Extinguisher', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_FIREWORK', 'Firework Launcher', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_FLARE', 'Flare', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_FLAREGUN', 'Flare Gun', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_FLASHLIGHT', 'Flashlight', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_GARBAGEBAG', 'Garbage Bag', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_GOLFCLUB', 'Golf Club', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_GRENADE', 'Grenade', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_GRENADELAUNCHER', 'Gernade Launcher', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_GUSENBERG', 'Gusenberg', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_HAMMER', 'Hammer', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_HANDCUFFS', 'Handcuffs', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_HATCHET', 'Hatchet', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_HEAVYPISTOL', 'Heavy Pistol', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_HEAVYSHOTGUN', 'Heavy Shotgun', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_HEAVYSNIPER', 'Heavy Sniper', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_HOMINGLAUNCHER', 'Homing Launcher', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_KATANA', 'Katana', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_KNIFE', 'Knife', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_KNUCKLE', 'Knuckle Dusters ', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_MACHETE', 'Machete', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_MACHINEPISTOL', 'Tec-9', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_MARKSMANPISTOL', 'Marksman Pistol', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_MARKSMANRIFLE', 'Marksman Rifle', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_MG', 'MG', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_MICROSMG', 'Micro SMG', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_MINIGUN', 'Minigun', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_MINISMG', 'Mini SMG', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_MOLOTOV', 'Molotov', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_MUSKET', 'Musket', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_NIGHTSTICK', 'Police Baton', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_PETROLCAN', 'Petrol Can', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_PIPEBOMB', 'Pipe Bomb', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_PISTOL', 'Pistol', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_PISTOL50', 'Police .50', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_POOLCUE', 'Pool Cue', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_PROXMINE', 'Proximity Mine', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_PUMPSHOTGUN', 'Pump Shotgun', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_RAILGUN', 'Rail Gun', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_REVOLVER', 'Revolver', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_RPG', 'RPG', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_SAWNOFFSHOTGUN', 'Sawn Off Shotgun', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_SMG', 'SMG', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_SMOKEGRENADE', 'Smoke Gernade', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_SNIPERRIFLE', 'Sniper Rifle', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_SNOWBALL', 'Snow Ball', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_SNSPISTOL', 'SNS Pistol', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_SPECIALCARBINE', 'Special Rifle', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_STICKYBOMB', 'Sticky Bombs', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_STINGER', 'Stinger', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_STUNGUN', 'Police Taser', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_SWITCHBLADE', 'Switch Blade', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_VINTAGEPISTOL', 'Vintage Pistol', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('WEAPON_WRENCH', 'Wrench', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('absinthe', 'Absinto', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('advancedlockpick', 'Advanced LockPick', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('apple_iphone', 'Apple iPhone', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('avrepairkit', 'Advanced Repair Kir', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('ballasbandana', 'Purple Bandana', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('bandage', 'bandage', 20, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('bankidcard', 'bankidcard', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('beer', 'Beer', 15, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('binoculars', 'Binoculars', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('blackbandana', 'Black Bandana', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('blackbelt', 'Black Belt', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('bleeder', 'Bleeder', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('bloodsbandana', 'Red Bandana', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('blowpipe', 'Chalumeaux', 10, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('bobbypin', 'BobbyPin', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('bolcacahuetes', 'Bol de cacahuètes', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('bolchips', 'Bol de chips', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('bolnoixcajou', 'Bol de noix de cajou', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('bolpistache', 'Bol de pistaches', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('bread', 'Sandwich', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('breadboard', 'Breadboard', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('burger', 'Hamburger', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('camera', 'Camera', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('candy', 'Candy', 10, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('carokit', 'Kit carosserie', 3, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('carotool', 'outils carosserie', 4, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('casio_watch', 'Casio Watch', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('champagne', 'Champanhe', 10, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('chips', 'Fries', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('chocolate', 'Chocolate', 10, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('cigarett', 'Cigarett', 20, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('cigarettbox', 'Cigarettbox', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('cigarette', 'Cigarette', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('cocacola', 'Coca-cola', 15, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('cocaine', 'Cocaine 1g', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('cocaine_cut', 'Cut Cocaine', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('cocaine_packaged', 'Game Doll', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('cocaine_uncut', 'Uncut Cocaine', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('coffe', 'Coffee', 15, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('coke10g', 'Cocaine (10G)', 50, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('coke1g', 'Cocaine (1G)', 50, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('cokebrick', 'Cocaine Brick (100G)', 20, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('cola', 'Cola', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('cripsbandana', 'Blue Bandana', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('cuffs', 'cuffs', 3, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('cupcake', 'Cupcake', 15, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('cursedkatana', 'Cursed Katana', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('cut_money', 'Counterfeit Cash - Cut', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('diamond', 'diamond', 20, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('disc_ammo_pistol', 'Pistol Ammo', -1, 10, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('disc_ammo_pistol_large', 'Pistol Ammo Large', -1, -10, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('disc_ammo_rifle', 'Rifle Ammo', -1, 10, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('disc_ammo_rifle_large', 'Rifle Ammo Large', -1, 10, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('disc_ammo_shotgun', 'Shotgun Shells', -1, 10, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('disc_ammo_shotgun_large', 'Shotgun Shells Large', -1, 10, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('disc_ammo_smg', 'SMG Ammo', -1, 10, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('disc_ammo_smg_large', 'SMG Ammo Large', -1, 10, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('disc_ammo_snp', 'Sniper Ammo', -1, 10, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('disc_ammo_snp_large', 'Sniper Ammo Large', -1, 10, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('drpepper', 'Dr. Pepper', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('drugItem', 'Black USB-C', 2, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('drugbags', 'Bags', 80, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('electronics', 'Electronics', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('empty_weed_bag', 'Empty bag', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('energy', 'Energy Drink', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('filet_mignon', 'Filet Mignon', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('firework1', '2Brothers', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('firework2', 'Poppelaars', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('firework3', 'WipeOut', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('firework4', 'Weeping Willow', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('firstaid', 'First-Aid Kit', 10, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('fish', 'Fish', 30, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('fishbait', 'Fish Bait', 15, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('fishingrod', 'Fishing Rod', 2, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('fishtaco', 'Fish Taco', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('fixkit', 'Kit réparation', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('fixtool', 'outils réparation', 6, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('fruittartlet', 'Fruit Tartlet', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('gadget_parachute', 'gadget_parachute', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('gameboy', 'Gameboy', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('gauze', 'Gauze', 25, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('gazbottle', 'bouteille de gaz', 11, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('gintonic', 'Gin Tónico', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('gold_chain', 'Gold Chain', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('golem', 'Golem', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('gps', 'gps', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('grapperaisin', 'Grappe de raisin', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('greenbandana', 'Green Bandana', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('greenbelt', 'Green Belt', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('hackerDevice', 'Hacker Device', 25, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('hamburger', 'Hamburger', 15, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('hotdog', 'Hotdog', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('hqscale', 'High Quality Scale', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('hydrocodone', 'Hydrocodone', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('ice', 'Glaçon', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('icecoffee', 'Ice Coffee', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('icetea', 'Fuze Tea', 15, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('id_card', 'ID Card', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('jagerbomb', 'Jägerbomb', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('jagercerbere', 'Jäger Cerbère', 3, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('joint', 'Joint 2g', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('joint2g', 'Joint (2G)', 50, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('jusfruit', 'Jus de fruits', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('kaberna', 'Kaberna ', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('katana', 'Katana', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('keys', 'keys', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('license_drive', 'Driving License', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('license_weapon', 'Weapon License', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('lighter', 'Lighter', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('limonade', 'Limonade', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('lockpick', 'lockpick', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('marlo', 'Marlo', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('medikit', 'medikit', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('medkit', 'Medkit', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('menthe', 'Feuille de menthe', 10, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('meth10g', 'Meth (10G)', 50, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('meth1g', 'Meth (1G)', 50, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('meth_packaged', 'Packaged Meth', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('meth_raw', 'Raw Meth', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('methbrick', 'Meth Brick (100G)', 20, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('metreshooter', 'Mètre de shooter', 3, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('milk', 'Leite', 15, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('milk_can', 'Milk in a Can', 30, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('milkshake', 'Milkshake', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('mingo', 'Mingo', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('mixapero', 'Mix Apéritif', 3, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('mojito', 'Mojito', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('morphine', 'Morphine', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('nitrous', 'Nitrous', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('nokia_phone', 'Nokia Phone', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('notepad\r\n', 'NotePad', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('onigiri', 'Onigiri', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('orange', 'Energy Drink', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('orangebandana', 'Orange Bandana', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('oxy', 'Oxy Table', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('oxycutter', 'oxycutter', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('oxygen', 'Oxygen Mask', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('oxygenmask', 'oxygenmask', 2, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('pacificidcard', 'pacificidcard', 4, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('pancakes', 'Pancakes', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('parachute', 'parachute', 2, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('pearl_necklace', 'Pearl Necklace', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('phone', 'phone', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('police_stormram', 'Stormram', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('policeradar', 'Emergency Radar', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('policevest', 'PD Heavy Vest', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('psp', 'PSP', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('radio', 'Radio', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('redbelt', 'Red Belt', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('repairkit', 'Repair Kit', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('rhumcoca', 'Rhum-coca', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('rhumfruit', 'Rhum-jus de fruits', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('ring', 'Ring', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('rollingpaper', 'Rolling Paper', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('rolpaper', 'Rolling Paper', 80, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('samsungS10', 'Samsung S10', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('samsung_s8', 'Samsung S8', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('sandwich', 'Sandwich', 15, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('saucisson', 'Saucisson', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('schnitzel', 'Schnitzel', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('screwdriver', 'screwdriver', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('shark', 'Shark', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('sim', 'Sim', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('slushy', 'Slushy', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('soda', 'Sprite', 15, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('sorted_money', 'Counterfeit Cash - Sorted', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('sunglasses', 'Sunglasses', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('sushiplate', 'Sushi Plate', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('sushirolls', 'Sushi Rolls', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('taco', 'Taco', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('tchips', 'Chips', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('teqpaf', 'Teq\'paf', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('tequila', 'Tequila', 15, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('thermite', 'thermite', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('ticket', 'ticket', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('torpedo', 'Torpedo', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('torta', 'Torta', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('tunerchip', 'tunerchip', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('turtle', 'Sea Turtle', 3, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('turtlebait', 'Turtle Bait', 10, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('usbhack', 'usbhack', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('vagosbandana', 'Yellow Bandana', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('vaultcard', 'vaultcard', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('veggysalad', 'Veggy Salad', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('vest', 'Heavy Vest', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('vicodin', 'Vicodin', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('viski', 'Whisky', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('vodka', 'Vodka', 15, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('vodkaenergy', 'Vodka-energy', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('vodkafruit', 'Vodka-jus de fruits', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('vodkaxred', 'Vodka x Redbull', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('water', 'Water', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('weed20g', 'Weed (20G)', 100, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('weed4g', 'Weed (4G)', 200, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('weed_100g', 'Bag of weed (100g)', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('weed_ak47_seed', 'Ak47 seed', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('weed_amnesia_seed', 'Amnesia seed', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('weed_nutrition', 'Nutrition', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('weed_og-kush_seed', 'Og kush seed', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('weed_packaged', 'Weed Packaged', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('weed_purple-haze_seed', 'Purple haze seed', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('weed_skunk_seed', 'Skunk seed', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('weed_untrimmed', 'Untrimmed Weed', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('weed_white-widow_seed', 'White widow seed', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('weedbrick', 'Weed Brick (200G)', 25, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('whisky', 'Whisky', 15, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('whiskycoca', 'Whisky-coca', 5, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('white_pearl', 'White Pearl', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('whitebandana', 'White Bandana', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('whitebelt', 'White Belt', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('wine', 'Vinho', 15, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('zlom', 'Scrap', 1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('bag', 'bag', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('bags', 'bags', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('bag1', 'bag1', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('9mm_ammo', '9mm_ammo', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('765mm_ammo', '765mm_ammo', -1, 0, 1, 0.1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
	('556mm_ammo', '556mm_ammo', -1, 0, 1, 0.1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table evrp.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `label` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.jobs: ~33 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('ambulance', 'מד"א', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('avera', 'אברה', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('ballas', 'ballas', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('barkai', 'ברקאי השקעות בע\'\'מ', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('burgershot', 'בורגר שוט', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('cardealer', 'סוכן רכב', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('chang', 'צ\'אנג גאנג', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('dealer', 'סוחר נשק', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('families', 'families', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('garbage', 'עובד זבל', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('golda', 'גולדה', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('grar', 'גרר חמודי', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('gym', 'חדר כושר', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('hotdog', 'ניו דלי', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('judge', 'שופט', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('lawyer', 'עורך דין', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('marabunta', 'marabunta', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('mechanic', 'מוסכניק', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('milker', 'חלבן', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('newdeli', 'ניו דלי', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('offpolice', 'לא בתפקיד', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('police', 'משטרת ישראל', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('realestate', 'נדל"ן', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('shipodim', 'שיפודי ישראל', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('studio', 'עידו רקורדס', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('taco', 'צ\'וקה', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('taxi', 'מוניות', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('tuner', 'Tuner Shop', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('unemployed', 'מובטל', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('unicorn', 'מועדן יוניקורן', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('usb', 'סמים', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('vagos', 'vagos', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('zlom', 'אספן מתכות', 0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table evrp.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `label` varchar(50) COLLATE utf8_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8_bin NOT NULL,
  `skin_female` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24424 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.job_grades: ~77 rows (approximately)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'מובטל', 50, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(2, 'cardealer', 0, 'recruit', 'עובד', 100, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(3, 'cardealer', 1, 'novice', 'סגן', 200, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(5, 'cardealer', 2, 'boss', 'מנהל', 300, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(6, 'police', 0, 'recruit', 'אקדמאי', 100, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(7, 'police', 1, 'officer', 'שוטר', 200, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(8, 'police', 2, 'officer', 'מפקד סיור', 250, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(9, 'police', 3, 'yamar', 'שוטר ימ\'\'ר', 300, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(10, 'police', 4, 'yamarboss', 'מפקד ימ\'\'ר', 350, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(11, 'police', 5, 'sergeant', 'שוטר יס"מ', 400, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(12, 'police', 6, 'yasamboss', 'מפקד יס\'\'מ', 450, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(13, 'police', 7, 'blieut', 'קצין', 500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(14, 'police', 8, 'lieutenant', 'סגן מפקד תחנה', 550, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(15, 'police', 9, 'boss', 'מפקד תחנה', 600, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(16, 'garbage', 0, 'garbage', 'עובד', 65, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(17, 'taxi', 0, 'recrue', 'נהג', 60, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(18, 'realestate', 0, 'realestate', 'עובד', 300, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(19, 'realestate', 1, 'realestate', 'סמנכל', 350, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(20, 'realestate', 2, 'boss', 'מנכל', 400, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(115, 'judge', 0, 'boss', 'שופט', 200, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(117, 'ambulance', 0, 'ambulance', 'חובש', 400, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(118, 'ambulance', 1, 'doctor', 'פרמדיק', 450, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(119, 'ambulance', 2, 'par', 'מגן', 500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(120, 'ambulance', 5, 'boss', 'רמג', 600, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(136, 'milker', 0, 'worker', 'עובד', 50, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(138, 'gym', 1, 'gym', 'עובד', 60, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(158, 'mechanic', 0, 'recruit', 'עובד', 150, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(159, 'mechanic', 1, 'worker', 'סגן', 250, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(163, 'mechanic', 2, 'boss', 'בוס', 300, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(180, 'dealer', 0, 'worker', 'שומר ראש', 100, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(182, 'dealer', 1, 'recruit', 'יד ימינו', 200, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(183, 'dealer', 2, 'boss', 'בוס', 300, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(200, 'zlom', 0, 'recruit', 'עובד', 60, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(201, 'avera', 0, 'recruit', 'ברמן', 55, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(202, 'avera', 1, 'officer', 'אחראי משמרת', 80, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(203, 'avera', 2, 'boss', 'בוס', 125, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(206, 'shipodim', 0, 'worker', 'עובד', 40, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(207, 'shipodim', 1, 'recruit', 'אחמש', 50, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(208, 'shipodim', 2, 'boss', 'מנהל', 70, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(209, 'burgershot', 1, 'ahmash', 'אחראי משמרת', 250, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(210, 'burgershot', 2, 'boss', 'מנהל', 400, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(214, 'studio', 0, 'recruit', 'עובד', 60, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(216, 'studio', 1, 'boss', 'מנהל', 100, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(219, 'taco', 0, 'recruit', 'עובד', 200, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(220, 'taco', 1, 'officer', 'אחראי משמרת', 250, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(221, 'taco', 2, 'boss', 'בוס', 300, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(222, 'hotdog', 0, 'recruit', 'עובד', 100, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(223, 'hotdog', 1, 'officer', 'אחראי משמרת', 200, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(224, 'hotdog', 2, 'boss', 'בוס', 300, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(230, 'offpolice', 0, 'recruit', 'אקדמאי', 50, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(231, 'offpolice', 1, 'officer', 'שוטר', 65, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(232, 'offpolice', 2, 'sergeant', 'שוטר יס"מ', 70, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(233, 'offpolice', 4, 'blieut', 'קצין', 75, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(234, 'offpolice', 5, 'blieut', 'מפקד יחידה', 80, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(235, 'offpolice', 6, 'lieutenant', 'סגן מפקד', 85, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(236, 'offpolice', 7, 'boss', 'מפקד תחנה', 110, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(238, 'offpolice', 3, 'sheriff', 'שריף', 70, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(239, 'tuner', 0, 'regular', 'Regular', 50, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(240, 'tuner', 1, 'boss', 'Boss', 70, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(241, 'vagos', 0, 'Vagos', 'וואגוס גאנג', 250, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(242, 'ballas', 0, 'Ballas', 'באלאס גאנג', 250, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(243, 'marabunta', 0, 'Marabunta', 'מרבונטה גאנג', 250, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(244, 'families', 0, 'Families', 'פמיליאס גאנג', 250, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(245, 'newdeli', 0, 'NewDeli', 'עובד', 200, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(246, 'newdeli', 1, 'NewDeli', 'אחראי משמרת', 250, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(247, 'newdeli', 2, 'NewDeli', 'מנהל', 300, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(249, 'lawyer', 0, 'Lawyer', 'מאבטח', 500, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(250, 'lawyer', 1, 'Lawyer', 'עורך דין', 650, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(251, 'lawyer', 2, 'Lawyer', 'שופט', 720, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(252, 'lawyer', 3, 'Lawyer', 'שופט עליון', 800, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(253, 'unicorn', 0, 'unicorn', 'שומר', 250, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(254, 'unicorn', 1, 'unicorn', 'אחראי שומרים', 300, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(255, 'unicorn', 2, 'unicorn', 'סגן מנהל', 320, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(256, 'unicorn', 3, 'boss', 'מנהל מועדון', 300, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(257, 'usb', 0, 'usb', 'מוכר', 200, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(258, 'usb', 1, 'usb', 'מנהל', 300, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(259, 'barkai', 0, 'Barkai', 'מנכ\'\'ל', 2000, '', '');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Dumping structure for table evrp.lapraces
CREATE TABLE IF NOT EXISTS `lapraces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text,
  `records` text,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.lapraces: ~4 rows (approximately)
/*!40000 ALTER TABLE `lapraces` DISABLE KEYS */;
INSERT INTO `lapraces` (`id`, `name`, `checkpoints`, `records`, `creator`, `distance`, `raceid`) VALUES
	(35, 'Liquid', '[{"coords":{"z":13.551411628723,"y":-2970.041015625,"x":-1129.2373046875},"offset":{"right":{"z":13.551398277283,"y":-2967.1528320313,"x":-1128.4256591797},"left":{"z":13.551424980164,"y":-2972.9291992188,"x":-1130.0489501953}}},{"coords":{"z":13.535658836365,"y":-2967.2375488281,"x":-1151.7137451172},"offset":{"right":{"z":13.532272338867,"y":-2964.2409667969,"x":-1151.5684814453},"left":{"z":13.539045333862,"y":-2970.2341308594,"x":-1151.8590087891}}},{"coords":{"z":13.533989906311,"y":-2976.9855957031,"x":-1174.138671875},"offset":{"right":{"z":13.579720497131,"y":-2974.5363769531,"x":-1175.8703613281},"left":{"z":13.488259315491,"y":-2979.4348144531,"x":-1172.4069824219}}},{"coords":{"z":13.536444664001,"y":-2996.4731445313,"x":-1193.5727539063},"offset":{"right":{"z":13.531036376953,"y":-2994.6784667969,"x":-1195.9766845703},"left":{"z":13.54185295105,"y":-2998.2678222656,"x":-1191.1688232422}}},{"coords":{"z":13.527178764343,"y":-3017.6843261719,"x":-1198.2989501953},"offset":{"right":{"z":13.471987724304,"y":-3018.0400390625,"x":-1201.2772216797},"left":{"z":13.582369804382,"y":-3017.3286132813,"x":-1195.3206787109}}},{"coords":{"z":13.529123306274,"y":-3039.3347167969,"x":-1186.9260253906},"offset":{"right":{"z":13.40807723999,"y":-3041.5212402344,"x":-1188.9765625},"left":{"z":13.650169372559,"y":-3037.1481933594,"x":-1184.8754882813}}},{"coords":{"z":13.527257919312,"y":-3067.9609375,"x":-1135.0201416016},"offset":{"right":{"z":13.567483901978,"y":-3070.681640625,"x":-1136.2838134766},"left":{"z":13.487031936646,"y":-3065.240234375,"x":-1133.7564697266}}},{"coords":{"z":13.526243209839,"y":-3086.8403320313,"x":-1095.2054443359},"offset":{"right":{"z":13.526307106018,"y":-3089.5490722656,"x":-1096.4949951172},"left":{"z":13.52617931366,"y":-3084.1315917969,"x":-1093.9158935547}}},{"coords":{"z":13.529499053955,"y":-3092.2175292969,"x":-1051.3565673828},"offset":{"right":{"z":13.506380081177,"y":-3094.53515625,"x":-1049.4517822266},"left":{"z":13.552618026733,"y":-3089.8999023438,"x":-1053.2613525391}}},{"coords":{"z":13.534683227539,"y":-3063.8881835938,"x":-1039.8076171875},"offset":{"right":{"z":13.47473526001,"y":-3063.7810058594,"x":-1036.8101806641},"left":{"z":13.594631195068,"y":-3063.9953613281,"x":-1042.8050537109}}},{"coords":{"z":13.536159515381,"y":-3036.8505859375,"x":-1054.3245849609},"offset":{"right":{"z":13.591794013977,"y":-3034.8110351563,"x":-1052.1251220703},"left":{"z":13.480525016785,"y":-3038.8901367188,"x":-1056.5240478516}}},{"coords":{"z":13.571420669556,"y":-2997.9291992188,"x":-1079.8299560547},"offset":{"right":{"z":13.57520866394,"y":-2997.0397949219,"x":-1076.96484375},"left":{"z":13.567632675171,"y":-2998.8186035156,"x":-1082.6950683594}}},{"coords":{"z":13.537380218506,"y":-2964.810546875,"x":-1083.2694091797},"offset":{"right":{"z":13.537364006042,"y":-2964.3508300781,"x":-1080.3048095703},"left":{"z":13.537396430969,"y":-2965.2702636719,"x":-1086.2340087891}}}]', NULL, 'steam:110000107b574aa', 409, 'LR-4890');
INSERT INTO `lapraces` (`id`, `name`, `checkpoints`, `records`, `creator`, `distance`, `raceid`) VALUES
	(36, 'iPure', '[{"coords":{"z":13.270601272583,"y":-2956.6611328125,"x":-1207.4390869141},"offset":{"right":{"z":13.270756721497,"y":-2954.0212402344,"x":-1206.0140380859},"left":{"z":13.270445823669,"y":-2959.3010253906,"x":-1208.8641357422}}},{"coords":{"z":13.252289772034,"y":-2946.4521484375,"x":-1224.9381103516},"offset":{"right":{"z":13.251638412476,"y":-2943.8537597656,"x":-1223.4385986328},"left":{"z":13.252941131592,"y":-2949.0505371094,"x":-1226.4376220703}}},{"coords":{"z":13.268623352051,"y":-2873.7758789063,"x":-1350.2099609375},"offset":{"right":{"z":13.269905090332,"y":-2871.1904296875,"x":-1348.6883544922},"left":{"z":13.26734161377,"y":-2876.361328125,"x":-1351.7315673828}}},{"coords":{"z":13.956215858459,"y":-2886.01171875,"x":-1402.8474121094},"offset":{"right":{"z":14.04610824585,"y":-2883.3522949219,"x":-1404.2329101563},"left":{"z":13.866323471069,"y":-2888.6711425781,"x":-1401.4619140625}}},{"coords":{"z":13.263335227966,"y":-2865.4772949219,"x":-1488.8454589844},"offset":{"right":{"z":13.264954566956,"y":-2862.6520996094,"x":-1487.8364257813},"left":{"z":13.261715888977,"y":-2868.3024902344,"x":-1489.8544921875}}},{"coords":{"z":13.257122993469,"y":-2859.0139160156,"x":-1496.2357177734},"offset":{"right":{"z":13.290240287781,"y":-2857.4172363281,"x":-1493.6960449219},"left":{"z":13.224005699158,"y":-2860.6105957031,"x":-1498.775390625}}},{"coords":{"z":13.252349853516,"y":-2841.546875,"x":-1503.0562744141},"offset":{"right":{"z":13.373070716858,"y":-2841.6030273438,"x":-1500.0592041016},"left":{"z":13.131628990173,"y":-2841.4907226563,"x":-1506.0533447266}}},{"coords":{"z":13.245384216309,"y":-2825.2902832031,"x":-1499.5053710938},"offset":{"right":{"z":13.349416732788,"y":-2826.8225097656,"x":-1496.9282226563},"left":{"z":13.141351699829,"y":-2823.7580566406,"x":-1502.0825195313}}},{"coords":{"z":13.242533683777,"y":-2802.4680175781,"x":-1475.2004394531},"offset":{"right":{"z":13.293382644653,"y":-2805.1108398438,"x":-1473.7818603516},"left":{"z":13.1916847229,"y":-2799.8251953125,"x":-1476.6190185547}}},{"coords":{"z":13.240748405457,"y":-2790.7319335938,"x":-1453.2867431641},"offset":{"right":{"z":13.245515823364,"y":-2793.3898925781,"x":-1451.8953857422},"left":{"z":13.235980987549,"y":-2788.0739746094,"x":-1454.6781005859}}},{"coords":{"z":13.238342285156,"y":-2777.6005859375,"x":-1425.7891845703},"offset":{"right":{"z":13.354590415955,"y":-2780.5024414063,"x":-1425.0366210938},"left":{"z":13.122094154358,"y":-2774.6987304688,"x":-1426.5417480469}}},{"coords":{"z":13.233286857605,"y":-2771.873046875,"x":-1406.5712890625},"offset":{"right":{"z":13.118965148926,"y":-2774.6069335938,"x":-1405.3413085938},"left":{"z":13.347608566284,"y":-2769.1391601563,"x":-1407.8012695313}}},{"coords":{"z":13.237459182739,"y":-2752.8000488281,"x":-1378.8466796875},"offset":{"right":{"z":13.092559814453,"y":-2754.3383789063,"x":-1376.2751464844},"left":{"z":13.382358551025,"y":-2751.26171875,"x":-1381.4182128906}}},{"coords":{"z":13.240068435669,"y":-2728.8544921875,"x":-1367.8958740234},"offset":{"right":{"z":13.10428237915,"y":-2729.1235351563,"x":-1364.9110107422},"left":{"z":13.375854492188,"y":-2728.5854492188,"x":-1370.8807373047}}},{"coords":{"z":13.240730285645,"y":-2686.3637695313,"x":-1365.560546875},"offset":{"right":{"z":13.272057533264,"y":-2686.8686523438,"x":-1362.603515625},"left":{"z":13.209403038025,"y":-2685.8588867188,"x":-1368.517578125}}},{"coords":{"z":13.242225646973,"y":-2650.9719238281,"x":-1369.1640625},"offset":{"right":{"z":13.152656555176,"y":-2649.4814453125,"x":-1366.5621337891},"left":{"z":13.33179473877,"y":-2652.4624023438,"x":-1371.7659912109}}},{"coords":{"z":13.238758087158,"y":-2617.580078125,"x":-1376.0245361328},"offset":{"right":{"z":13.144066810608,"y":-2616.9592285156,"x":-1373.0910644531},"left":{"z":13.333449363708,"y":-2618.2009277344,"x":-1378.9580078125}}},{"coords":{"z":13.238752365112,"y":-2576.2082519531,"x":-1400.1842041016},"offset":{"right":{"z":13.095136642456,"y":-2573.4584960938,"x":-1398.9932861328},"left":{"z":13.382368087769,"y":-2578.9580078125,"x":-1401.3751220703}}},{"coords":{"z":13.243292808533,"y":-2570.4919433594,"x":-1427.22265625},"offset":{"right":{"z":13.107857704163,"y":-2567.6157226563,"x":-1428.0649414063},"left":{"z":13.378727912903,"y":-2573.3681640625,"x":-1426.3803710938}}},{"coords":{"z":13.2435131073,"y":-2579.3369140625,"x":-1444.8265380859},"offset":{"right":{"z":13.112929344177,"y":-2577.3679199219,"x":-1447.0863037109},"left":{"z":13.374096870422,"y":-2581.3059082031,"x":-1442.5667724609}}},{"coords":{"z":13.243076324463,"y":-2594.6877441406,"x":-1454.5404052734},"offset":{"right":{"z":13.111476898193,"y":-2594.0837402344,"x":-1457.4759521484},"left":{"z":13.374675750732,"y":-2595.2917480469,"x":-1451.6048583984}}},{"coords":{"z":13.242475509644,"y":-2612.9438476563,"x":-1455.8624267578},"offset":{"right":{"z":13.118232727051,"y":-2613.5439453125,"x":-1458.7991943359},"left":{"z":13.366718292236,"y":-2612.34375,"x":-1452.9256591797}}},{"coords":{"z":13.241715431213,"y":-2628.4343261719,"x":-1450.6091308594},"offset":{"right":{"z":13.115542411804,"y":-2630.0793457031,"x":-1453.1146240234},"left":{"z":13.367888450623,"y":-2626.7893066406,"x":-1448.1036376953}}},{"coords":{"z":13.241073608398,"y":-2644.2573242188,"x":-1436.0863037109},"offset":{"right":{"z":13.109468460083,"y":-2646.8742675781,"x":-1437.5472412109},"left":{"z":13.372678756714,"y":-2641.6403808594,"x":-1434.6253662109}}},{"coords":{"z":13.2419090271,"y":-2653.9548339844,"x":-1413.80078125},"offset":{"right":{"z":13.197259902954,"y":-2656.833984375,"x":-1414.6424560547},"left":{"z":13.286558151245,"y":-2651.0756835938,"x":-1412.9591064453}}},{"coords":{"z":13.239037513733,"y":-2664.4580078125,"x":-1380.3521728516},"offset":{"right":{"z":13.325894355774,"y":-2667.1538085938,"x":-1381.6654052734},"left":{"z":13.152180671692,"y":-2661.7622070313,"x":-1379.0389404297}}},{"coords":{"z":13.235968589783,"y":-2684.8432617188,"x":-1348.4542236328},"offset":{"right":{"z":13.370777130127,"y":-2686.771484375,"x":-1350.7485351563},"left":{"z":13.101160049438,"y":-2682.9150390625,"x":-1346.1599121094}}},{"coords":{"z":13.235555648804,"y":-2711.3876953125,"x":-1330.6525878906},"offset":{"right":{"z":13.370150566101,"y":-2712.3295898438,"x":-1333.4976806641},"left":{"z":13.100960731506,"y":-2710.4458007813,"x":-1327.8074951172}}},{"coords":{"z":13.236964225769,"y":-2750.5710449219,"x":-1322.0518798828},"offset":{"right":{"z":13.246326446533,"y":-2751.0075683594,"x":-1325.0198974609},"left":{"z":13.227602005005,"y":-2750.1345214844,"x":-1319.0838623047}}},{"coords":{"z":13.235021591187,"y":-2791.4321289063,"x":-1315.8970947266},"offset":{"right":{"z":13.188955307007,"y":-2792.0705566406,"x":-1318.8280029297},"left":{"z":13.281087875366,"y":-2790.7937011719,"x":-1312.9661865234}}},{"coords":{"z":13.235565185547,"y":-2816.3083496094,"x":-1310.0008544922},"offset":{"right":{"z":13.22746181488,"y":-2817.0666503906,"x":-1312.9034423828},"left":{"z":13.243668556213,"y":-2815.5500488281,"x":-1307.0982666016}}},{"coords":{"z":13.235094070435,"y":-2845.0705566406,"x":-1302.2055664063},"offset":{"right":{"z":13.171310424805,"y":-2846.0971679688,"x":-1305.0236816406},"left":{"z":13.298877716064,"y":-2844.0439453125,"x":-1299.3874511719}}},{"coords":{"z":13.234017372131,"y":-2880.3745117188,"x":-1283.0198974609},"offset":{"right":{"z":13.101203918457,"y":-2882.5026855469,"x":-1285.1302490234},"left":{"z":13.366830825806,"y":-2878.2463378906,"x":-1280.9095458984}}},{"coords":{"z":13.235998153687,"y":-2927.0400390625,"x":-1250.0712890625},"offset":{"right":{"z":13.23860168457,"y":-2928.4956054688,"x":-1252.6944580078},"left":{"z":13.233394622803,"y":-2925.5844726563,"x":-1247.4481201172}}},{"coords":{"z":13.733404159546,"y":-2960.6154785156,"x":-1229.9822998047},"offset":{"right":{"z":14.258682250977,"y":-2962.1354980469,"x":-1232.5148925781},"left":{"z":13.208126068115,"y":-2959.0954589844,"x":-1227.4497070313}}},{"coords":{"z":13.169100761414,"y":-3017.9350585938,"x":-1193.3394775391},"offset":{"right":{"z":13.165627479553,"y":-3019.5715332031,"x":-1195.8538818359},"left":{"z":13.172574043274,"y":-3016.2985839844,"x":-1190.8250732422}}}]', NULL, 'steam:11000013e11e83d', 1274, 'LR-9263');
INSERT INTO `lapraces` (`id`, `name`, `checkpoints`, `records`, `creator`, `distance`, `raceid`) VALUES
	(37, 'RX', '[{"offset":{"right":{"x":-1124.4249267578,"z":14.014973640442,"y":-2972.7431640625},"left":{"x":-1124.1993408203,"z":12.906615257263,"y":-2966.8505859375}},"coords":{"x":-1124.3121337891,"z":13.460794448853,"y":-2969.796875}},{"offset":{"right":{"x":-1124.4234619141,"z":14.029695510864,"y":-2972.7380371094},"left":{"x":-1124.1978759766,"z":12.890811920166,"y":-2966.8513183594}},"coords":{"x":-1124.3106689453,"z":13.460253715515,"y":-2969.7946777344}},{"offset":{"right":{"x":-1124.3686523438,"z":13.927780151367,"y":-2972.7775878906},"left":{"x":-1124.1469726563,"z":12.998491287231,"y":-2966.8542480469}},"coords":{"x":-1124.2578125,"z":13.463135719299,"y":-2969.8159179688}},{"offset":{"right":{"x":-1124.1945800781,"z":13.732831001282,"y":-2972.8430175781},"left":{"x":-1123.9753417969,"z":13.198594093323,"y":-2966.8708496094}},"coords":{"x":-1124.0849609375,"z":13.465712547302,"y":-2969.8569335938}},{"offset":{"right":{"x":-1123.8820800781,"z":13.630379676819,"y":-2972.8801269531},"left":{"x":-1123.6689453125,"z":13.3009557724,"y":-2966.8928222656}},"coords":{"x":-1123.7755126953,"z":13.465667724609,"y":-2969.8864746094}},{"offset":{"right":{"x":-1123.3525390625,"z":13.55925655365,"y":-2972.9143066406},"left":{"x":-1123.1459960938,"z":13.370377540588,"y":-2966.9206542969}},"coords":{"x":-1123.2492675781,"z":13.464817047119,"y":-2969.9174804688}},{"offset":{"right":{"x":-1122.5187988281,"z":13.516962051392,"y":-2972.9501953125},"left":{"x":-1122.3166503906,"z":13.409713745117,"y":-2966.9545898438}},"coords":{"x":-1122.4177246094,"z":13.463337898254,"y":-2969.9523925781}},{"offset":{"right":{"x":-1121.4915771484,"z":13.490118980408,"y":-2972.9892578125},"left":{"x":-1121.2923583984,"z":13.433640480042,"y":-2966.9926757813}},"coords":{"x":-1121.3919677734,"z":13.461879730225,"y":-2969.9909667969}},{"offset":{"right":{"x":-1120.5743408203,"z":13.189520835876,"y":-2973.1528320313},"left":{"x":-1119.4346923828,"z":13.727770805359,"y":-2967.2866210938}},"coords":{"x":-1120.0045166016,"z":13.458645820618,"y":-2970.2197265625}},{"offset":{"right":{"x":-1119.5419921875,"z":13.160356521606,"y":-2973.4372558594},"left":{"x":-1117.9111328125,"z":13.754177093506,"y":-2967.6936035156}},"coords":{"x":-1118.7265625,"z":13.457266807556,"y":-2970.5654296875}},{"offset":{"right":{"x":-1118.2075195313,"z":13.265742301941,"y":-2973.81640625},"left":{"x":-1116.5080566406,"z":13.651789665222,"y":-2968.0751953125}},"coords":{"x":-1117.3577880859,"z":13.458765983582,"y":-2970.9458007813}},{"offset":{"right":{"x":-1116.6733398438,"z":13.361991882324,"y":-2974.2641601563},"left":{"x":-1114.9553222656,"z":13.558713912964,"y":-2968.5185546875}},"coords":{"x":-1115.8143310547,"z":13.460352897644,"y":-2971.3913574219}},{"offset":{"right":{"x":-1114.9526367188,"z":13.416436195374,"y":-2974.7751464844},"left":{"x":-1113.220703125,"z":13.502394676208,"y":-2969.0310058594}},"coords":{"x":-1114.0866699219,"z":13.459415435791,"y":-2971.9030761719}},{"offset":{"right":{"x":-1113.5498046875,"z":13.271379470825,"y":-2975.2424316406},"left":{"x":-1111.5617675781,"z":13.643577575684,"y":-2969.5935058594}},"coords":{"x":-1112.5557861328,"z":13.457478523254,"y":-2972.41796875}},{"offset":{"right":{"x":-1112.2006835938,"z":12.929363250732,"y":-2975.9582519531},"left":{"x":-1109.1694335938,"z":13.972288131714,"y":-2970.8864746094}},"coords":{"x":-1110.6850585938,"z":13.450825691223,"y":-2973.4223632813}},{"offset":{"right":{"x":-1110.6628417969,"z":13.044383049011,"y":-2976.8874511719},"left":{"x":-1107.529296875,"z":13.861901283264,"y":-2971.8366699219}},"coords":{"x":-1109.0960693359,"z":13.453142166138,"y":-2974.3620605469}},{"offset":{"right":{"x":-1108.6390380859,"z":13.26372718811,"y":-2978.1357421875},"left":{"x":-1105.4525146484,"z":13.647277832031,"y":-2973.06640625}},"coords":{"x":-1107.0457763672,"z":13.455502510071,"y":-2975.6010742188}},{"offset":{"right":{"x":-1106.6889648438,"z":13.367749214172,"y":-2979.3530273438},"left":{"x":-1103.4826660156,"z":13.543808937073,"y":-2974.2846679688}},"coords":{"x":-1105.0858154297,"z":13.455779075623,"y":-2976.8188476563}},{"offset":{"right":{"x":-1104.7310791016,"z":13.422938346863,"y":-2980.5837402344},"left":{"x":-1101.5220947266,"z":13.49018573761,"y":-2975.5144042969}},"coords":{"x":-1103.1265869141,"z":13.456562042236,"y":-2978.0490722656}},{"offset":{"right":{"x":-1102.8465576172,"z":13.437279701233,"y":-2981.7736816406},"left":{"x":-1099.6375732422,"z":13.475733757019,"y":-2976.7043457031}},"coords":{"x":-1101.2420654297,"z":13.456506729126,"y":-2979.2390136719}},{"offset":{"right":{"x":-1100.9967041016,"z":13.44543838501,"y":-2982.9440917969},"left":{"x":-1097.7877197266,"z":13.467451095581,"y":-2977.8742675781}},"coords":{"x":-1099.3922119141,"z":13.456444740295,"y":-2980.4091796875}}]', NULL, 'steam:1100001198c44f4', 28, 'LR-3897');
INSERT INTO `lapraces` (`id`, `name`, `checkpoints`, `records`, `creator`, `distance`, `raceid`) VALUES
	(38, '414', '[{"offset":{"right":{"z":26.061569213867,"y":-1097.9782714844,"x":-63.29292678833},"left":{"z":25.307167053223,"y":-1095.9663085938,"x":-68.89493560791}},"coords":{"z":25.684368133545,"y":-1096.9722900391,"x":-66.093933105469}},{"offset":{"right":{"z":26.088287353516,"y":-1098.0144042969,"x":-63.293975830078},"left":{"z":25.297733306885,"y":-1095.94140625,"x":-68.868743896484}},"coords":{"z":25.6930103302,"y":-1096.9779052734,"x":-66.081359863281}},{"offset":{"right":{"z":26.106670379639,"y":-1098.01171875,"x":-63.29723739624},"left":{"z":25.293285369873,"y":-1095.9411621094,"x":-68.869590759277}},"coords":{"z":25.699977874756,"y":-1096.9764404297,"x":-66.08341217041}},{"offset":{"right":{"z":26.123510360718,"y":-1098.0119628906,"x":-63.301425933838},"left":{"z":25.28399848938,"y":-1095.9423828125,"x":-68.870246887207}},"coords":{"z":25.703754425049,"y":-1096.9771728516,"x":-66.085838317871}},{"offset":{"right":{"z":26.132637023926,"y":-1098.0008544922,"x":-63.299755096436},"left":{"z":25.278148651123,"y":-1095.9276123047,"x":-68.864967346191}},"coords":{"z":25.705392837524,"y":-1096.9642333984,"x":-66.082359313965}},{"offset":{"right":{"z":25.948139190674,"y":-1097.8076171875,"x":-63.181285858154},"left":{"z":25.484920501709,"y":-1095.73828125,"x":-68.794036865234}},"coords":{"z":25.716529846191,"y":-1096.7729492188,"x":-65.987663269043}},{"offset":{"right":{"z":25.851980209351,"y":-1097.2264404297,"x":-62.946624755859},"left":{"z":25.626672744751,"y":-1095.1759033203,"x":-68.58088684082}},"coords":{"z":25.739326477051,"y":-1096.201171875,"x":-65.76375579834}},{"offset":{"right":{"z":25.834062576294,"y":-1096.3194580078,"x":-62.610317230225},"left":{"z":25.719709396362,"y":-1094.2872314453,"x":-68.254524230957}},"coords":{"z":25.776885986328,"y":-1095.3033447266,"x":-65.432418823242}},{"offset":{"right":{"z":25.863111495972,"y":-1095.0134277344,"x":-62.138561248779},"left":{"z":25.813154220581,"y":-1092.9958496094,"x":-67.788948059082}},"coords":{"z":25.838132858276,"y":-1094.0046386719,"x":-64.963752746582}},{"offset":{"right":{"z":25.924043655396,"y":-1093.3630371094,"x":-61.548561096191},"left":{"z":25.907670974731,"y":-1091.3552246094,"x":-67.202598571777}},"coords":{"z":25.915857315063,"y":-1092.3591308594,"x":-64.375579833984}},{"offset":{"right":{"z":26.023303985596,"y":-1090.9564208984,"x":-60.693725585938},"left":{"z":26.030117034912,"y":-1088.9573974609,"x":-66.350914001465}},"coords":{"z":26.026710510254,"y":-1089.9569091797,"x":-63.522319793701}},{"offset":{"right":{"z":26.11891746521,"y":-1088.7373046875,"x":-59.908767700195},"left":{"z":26.136869430542,"y":-1086.7419433594,"x":-65.567199707031}},"coords":{"z":26.127893447876,"y":-1087.7396240234,"x":-62.737983703613}},{"offset":{"right":{"z":26.213787078857,"y":-1086.5639648438,"x":-59.141422271729},"left":{"z":26.237125396729,"y":-1084.5703125,"x":-64.800430297852}},"coords":{"z":26.225456237793,"y":-1085.5671386719,"x":-61.970924377441}},{"offset":{"right":{"z":26.294103622437,"y":-1084.3559570313,"x":-58.362682342529},"left":{"z":26.31960105896,"y":-1082.36328125,"x":-64.022041320801}},"coords":{"z":26.306852340698,"y":-1083.3596191406,"x":-61.192363739014}},{"offset":{"right":{"z":26.388021469116,"y":-1081.6300048828,"x":-57.401969909668},"left":{"z":26.41356086731,"y":-1079.6368408203,"x":-63.06120300293}},"coords":{"z":26.400791168213,"y":-1080.6334228516,"x":-60.231586456299}},{"offset":{"right":{"z":26.470230102539,"y":-1078.9041748047,"x":-56.441394805908},"left":{"z":26.494930267334,"y":-1076.9102783203,"x":-62.100345611572}},"coords":{"z":26.482580184937,"y":-1077.9072265625,"x":-59.27087020874}},{"offset":{"right":{"z":26.517538070679,"y":-1075.8786621094,"x":-55.374923706055},"left":{"z":26.540796279907,"y":-1073.8840332031,"x":-61.033668518066}},"coords":{"z":26.529167175293,"y":-1074.8813476563,"x":-58.204296112061}},{"offset":{"right":{"z":26.607563018799,"y":-1073.0982666016,"x":-54.394542694092},"left":{"z":26.629306793213,"y":-1071.1036376953,"x":-60.053234100342}},"coords":{"z":26.618434906006,"y":-1072.1009521484,"x":-57.223888397217}},{"offset":{"right":{"z":26.790349960327,"y":-1069.4685058594,"x":-53.114143371582},"left":{"z":26.810270309448,"y":-1067.4729003906,"x":-58.772499084473}},"coords":{"z":26.800310134888,"y":-1068.470703125,"x":-55.943321228027}},{"offset":{"right":{"z":26.920564651489,"y":-1065.4105224609,"x":-51.682235717773},"left":{"z":26.938604354858,"y":-1063.4141845703,"x":-57.340354919434}},"coords":{"z":26.929584503174,"y":-1064.4123535156,"x":-54.511295318604}},{"offset":{"right":{"z":27.054502487183,"y":-1061.3260498047,"x":-50.240665435791},"left":{"z":27.070848464966,"y":-1059.3292236328,"x":-55.898586273193}},"coords":{"z":27.062675476074,"y":-1060.3276367188,"x":-53.069625854492}},{"offset":{"right":{"z":27.188060760498,"y":-1057.4389648438,"x":-48.868190765381},"left":{"z":27.202983856201,"y":-1055.4416503906,"x":-54.525943756104}},"coords":{"z":27.19552230835,"y":-1056.4403076172,"x":-51.697067260742}},{"offset":{"right":{"z":27.325176239014,"y":-1053.3966064453,"x":-47.440601348877},"left":{"z":27.338779449463,"y":-1051.3988037109,"x":-53.098201751709}},"coords":{"z":27.331977844238,"y":-1052.3977050781,"x":-50.269401550293}},{"offset":{"right":{"z":27.474697113037,"y":-1048.064453125,"x":-45.557178497314},"left":{"z":27.486801147461,"y":-1046.0639648438,"x":-51.213871002197}},"coords":{"z":27.480749130249,"y":-1047.0642089844,"x":-48.385524749756}},{"offset":{"right":{"z":27.627073287964,"y":-1043.3487548828,"x":-43.889232635498},"left":{"z":27.637941360474,"y":-1041.3446044922,"x":-49.544567108154}},"coords":{"z":27.632507324219,"y":-1042.3466796875,"x":-46.716899871826}},{"offset":{"right":{"z":27.74877166748,"y":-1039.4719238281,"x":-42.515327453613},"left":{"z":27.758472442627,"y":-1037.4680175781,"x":-48.170806884766}},"coords":{"z":27.753622055054,"y":-1038.4699707031,"x":-45.343067169189}},{"offset":{"right":{"z":27.803741455078,"y":-1037.6844482422,"x":-41.881813049316},"left":{"z":27.812694549561,"y":-1035.6812744141,"x":-47.537536621094}},"coords":{"z":27.808218002319,"y":-1036.6828613281,"x":-44.709674835205}},{"offset":{"right":{"z":27.844415664673,"y":-1036.3933105469,"x":-41.424491882324},"left":{"z":27.852380752563,"y":-1034.3911132813,"x":-47.080535888672}},"coords":{"z":27.848398208618,"y":-1035.3922119141,"x":-44.252513885498}},{"offset":{"right":{"z":27.858064651489,"y":-1035.7906494141,"x":-41.211196899414},"left":{"z":27.865400314331,"y":-1033.7886962891,"x":-46.867378234863}},"coords":{"z":27.86173248291,"y":-1034.7896728516,"x":-44.039287567139}},{"offset":{"right":{"z":27.877395629883,"y":-1035.0405273438,"x":-40.945640563965},"left":{"z":27.88410949707,"y":-1033.0385742188,"x":-46.601844787598}},"coords":{"z":27.880752563477,"y":-1034.0395507813,"x":-43.773742675781}},{"offset":{"right":{"z":27.913038253784,"y":-1033.7093505859,"x":-40.47444152832},"left":{"z":27.919046401978,"y":-1031.7071533203,"x":-46.130554199219}},"coords":{"z":27.916042327881,"y":-1032.7082519531,"x":-43.30249786377}},{"offset":{"right":{"z":27.958528518677,"y":-1032.0078125,"x":-39.872020721436},"left":{"z":27.963945388794,"y":-1030.0053710938,"x":-45.527973175049}},"coords":{"z":27.961236953735,"y":-1031.0065917969,"x":-42.699996948242}},{"offset":{"right":{"z":28.007339477539,"y":-1030.2058105469,"x":-39.233951568604},"left":{"z":28.01229095459,"y":-1028.2028808594,"x":-44.889766693115}},"coords":{"z":28.009815216064,"y":-1029.2043457031,"x":-42.061859130859}},{"offset":{"right":{"z":28.076080322266,"y":-1027.6744384766,"x":-38.337337493896},"left":{"z":28.080513000488,"y":-1025.6710205078,"x":-43.993000030518}},"coords":{"z":28.078296661377,"y":-1026.6727294922,"x":-41.165168762207}},{"offset":{"right":{"z":28.137496948242,"y":-1025.2786865234,"x":-37.488632202148},"left":{"z":28.14147567749,"y":-1023.2752075195,"x":-43.144241333008}},"coords":{"z":28.139486312866,"y":-1024.2769775391,"x":-40.316436767578}},{"offset":{"right":{"z":28.172504425049,"y":-1022.5762329102,"x":-36.531242370605},"left":{"z":28.176063537598,"y":-1020.5722045898,"x":-42.186676025391}},"coords":{"z":28.174283981323,"y":-1021.57421875,"x":-39.358959197998}},{"offset":{"right":{"z":28.306741714478,"y":-1016.5814819336,"x":-34.404376983643},"left":{"z":28.309610366821,"y":-1014.5708618164,"x":-40.057460784912}},"coords":{"z":28.308176040649,"y":-1015.576171875,"x":-37.230918884277}},{"offset":{"right":{"z":28.360879898071,"y":-1014.041809082,"x":-33.501167297363},"left":{"z":28.36350440979,"y":-1012.0303344727,"x":-39.153953552246}},"coords":{"z":28.362192153931,"y":-1013.0360717773,"x":-36.327560424805}},{"offset":{"right":{"z":28.411180496216,"y":-1010.8034057617,"x":-32.348838806152},"left":{"z":28.413557052612,"y":-1008.791809082,"x":-38.001579284668}},"coords":{"z":28.412368774414,"y":-1009.7976074219,"x":-35.17520904541}},{"offset":{"right":{"z":28.460536956787,"y":-1007.4412231445,"x":-31.152305603027},"left":{"z":28.462692260742,"y":-1005.4295043945,"x":-36.805023193359}},"coords":{"z":28.461614608765,"y":-1006.4353637695,"x":-33.978664398193}},{"offset":{"right":{"z":28.51441192627,"y":-1003.3335571289,"x":-29.69048500061},"left":{"z":28.516334533691,"y":-1001.3218383789,"x":-35.343173980713}},"coords":{"z":28.51537322998,"y":-1002.3276977539,"x":-32.516830444336}},{"offset":{"right":{"z":28.566438674927,"y":-998.55902099609,"x":-27.991296768188},"left":{"z":28.568113327026,"y":-996.54730224609,"x":-33.643989562988}},"coords":{"z":28.567276000977,"y":-997.55316162109,"x":-30.817642211914}},{"offset":{"right":{"z":28.593225479126,"y":-995.19592285156,"x":-26.794363021851},"left":{"z":28.59473991394,"y":-993.18420410156,"x":-32.447059631348}},"coords":{"z":28.593982696533,"y":-994.19006347656,"x":-29.620712280273}},{"offset":{"right":{"z":28.604972839355,"y":-991.56744384766,"x":-25.503002166748},"left":{"z":28.60631942749,"y":-989.55572509766,"x":-31.155685424805}},"coords":{"z":28.605646133423,"y":-990.56158447266,"x":-28.329343795776}},{"offset":{"right":{"z":28.610584259033,"y":-988.61932373047,"x":-24.453659057617},"left":{"z":28.611804962158,"y":-986.60760498047,"x":-30.106372833252}},"coords":{"z":28.611194610596,"y":-987.61346435547,"x":-27.280015945435}},{"offset":{"right":{"z":28.611520767212,"y":-985.40313720703,"x":-23.309032440186},"left":{"z":28.612607955933,"y":-983.39141845703,"x":-28.961742401123}},"coords":{"z":28.612064361572,"y":-984.39727783203,"x":-26.135387420654}},{"offset":{"right":{"z":28.625373840332,"y":-982.98065185547,"x":-22.446872711182},"left":{"z":28.626365661621,"y":-980.96905517578,"x":-28.099601745605}},"coords":{"z":28.625869750977,"y":-981.97485351563,"x":-25.273237228394}},{"offset":{"right":{"z":28.641561508179,"y":-980.75073242188,"x":-21.653242111206},"left":{"z":28.642469406128,"y":-978.73913574219,"x":-27.30597114563}},"coords":{"z":28.642015457153,"y":-979.74493408203,"x":-24.479606628418}},{"offset":{"right":{"z":28.666780471802,"y":-978.65447998047,"x":-20.907197952271},"left":{"z":28.667612075806,"y":-976.64288330078,"x":-26.559957504272}},"coords":{"z":28.667196273804,"y":-977.64868164063,"x":-23.733577728271}},{"offset":{"right":{"z":28.697849273682,"y":-976.44427490234,"x":-20.120712280273},"left":{"z":28.69860458374,"y":-974.43280029297,"x":-25.773502349854}},"coords":{"z":28.698226928711,"y":-975.43853759766,"x":-22.947107315063}},{"offset":{"right":{"z":28.714702606201,"y":-974.32110595703,"x":-19.365224838257},"left":{"z":28.715385437012,"y":-972.30963134766,"x":-25.018007278442}},"coords":{"z":28.715044021606,"y":-973.31536865234,"x":-22.19161605835}},{"offset":{"right":{"z":28.718254089355,"y":-973.07678222656,"x":-18.922491073608},"left":{"z":28.718894958496,"y":-971.06555175781,"x":-24.575357437134}},"coords":{"z":28.718574523926,"y":-972.07116699219,"x":-21.748924255371}}]', NULL, 'steam:11000013fd2cb8d', 133, 'LR-9562');
/*!40000 ALTER TABLE `lapraces` ENABLE KEYS */;

-- Dumping structure for table evrp.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.licenses: ~5 rows (approximately)
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT INTO `licenses` (`type`, `label`) VALUES
	('dmv', 'Theory');
INSERT INTO `licenses` (`type`, `label`) VALUES
	('drive', 'Drive License');
INSERT INTO `licenses` (`type`, `label`) VALUES
	('drive_bike', 'Bike License');
INSERT INTO `licenses` (`type`, `label`) VALUES
	('drive_truck', 'Truck License');
INSERT INTO `licenses` (`type`, `label`) VALUES
	('weapon', 'Weapon');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- Dumping structure for table evrp.mdt_reports
CREATE TABLE IF NOT EXISTS `mdt_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `incident` longtext,
  `charges` longtext,
  `author` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `jailtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.mdt_reports: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_reports` ENABLE KEYS */;

-- Dumping structure for table evrp.mdt_warrants
CREATE TABLE IF NOT EXISTS `mdt_warrants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `char_id` int(11) DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL,
  `report_title` varchar(255) DEFAULT NULL,
  `charges` longtext,
  `date` varchar(255) DEFAULT NULL,
  `expire` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.mdt_warrants: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_warrants` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_warrants` ENABLE KEYS */;

-- Dumping structure for table evrp.outfits
CREATE TABLE IF NOT EXISTS `outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '0',
  `name` longtext,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table evrp.outfits: ~0 rows (approximately)
/*!40000 ALTER TABLE `outfits` DISABLE KEYS */;
/*!40000 ALTER TABLE `outfits` ENABLE KEYS */;

-- Dumping structure for table evrp.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `jamstate` int(11) NOT NULL DEFAULT '0',
  `garage` varchar(12) DEFAULT 'A',
  `storedhouse` int(11) NOT NULL,
  `tunerdata` longtext NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.owned_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;

-- Dumping structure for table evrp.phone_app_chat
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=845 DEFAULT CHARSET=utf8;

-- Dumping data for table evrp.phone_app_chat: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_app_chat` ENABLE KEYS */;

-- Dumping structure for table evrp.phone_calls
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11507 DEFAULT CHARSET=utf8;

-- Dumping data for table evrp.phone_calls: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;

-- Dumping structure for table evrp.phone_ch_reddit
CREATE TABLE IF NOT EXISTS `phone_ch_reddit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `redgkit` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table evrp.phone_ch_reddit: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_ch_reddit` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_ch_reddit` ENABLE KEYS */;

-- Dumping structure for table evrp.phone_contacts
CREATE TABLE IF NOT EXISTS `phone_contacts` (
  `identifier` varchar(40) NOT NULL,
  `name` longtext NOT NULL,
  `number` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.phone_contacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_contacts` ENABLE KEYS */;

-- Dumping structure for table evrp.phone_hashtags
CREATE TABLE IF NOT EXISTS `phone_hashtags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hashtag` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tweetId` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.phone_hashtags: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_hashtags` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_hashtags` ENABLE KEYS */;

-- Dumping structure for table evrp.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7634 DEFAULT CHARSET=utf8;

-- Dumping data for table evrp.phone_messages: 0 rows
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Dumping structure for table evrp.phone_reddit
CREATE TABLE IF NOT EXISTS `phone_reddit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `redgkit` varchar(20) DEFAULT NULL,
  `reditsage` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table evrp.phone_reddit: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_reddit` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_reddit` ENABLE KEYS */;

-- Dumping structure for table evrp.phone_shops
CREATE TABLE IF NOT EXISTS `phone_shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(255) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table evrp.phone_shops: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_shops` ENABLE KEYS */;

-- Dumping structure for table evrp.phone_users_contacts
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- Dumping data for table evrp.phone_users_contacts: 0 rows
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;

-- Dumping structure for table evrp.phone_yp
CREATE TABLE IF NOT EXISTS `phone_yp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `advert` varchar(500) DEFAULT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.phone_yp: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_yp` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_yp` ENABLE KEYS */;

-- Dumping structure for table evrp.playerskins
CREATE TABLE IF NOT EXISTS `playerskins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `citizenid` varchar(255) NOT NULL DEFAULT '0',
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`identifier`),
  KEY `cid` (`citizenid`),
  KEY `active` (`active`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table evrp.playerskins: ~2 rows (approximately)
/*!40000 ALTER TABLE `playerskins` DISABLE KEYS */;
INSERT INTO `playerskins` (`id`, `identifier`, `citizenid`, `model`, `skin`, `active`) VALUES
	(8, 'Char3:110000107b574aa', '0', '1755064960', '{"makeup":{"defaultItem":-1,"defaultTexture":1,"item":-1,"texture":1},"t-shirt":{"defaultItem":1,"defaultTexture":0,"item":1,"texture":0},"bag":{"defaultItem":0,"defaultTexture":0,"item":0,"texture":0},"vest":{"defaultItem":0,"defaultTexture":0,"item":0,"texture":0},"watch":{"defaultItem":-1,"defaultTexture":0,"item":-1,"texture":0},"face":{"defaultItem":0,"defaultTexture":0,"item":0,"texture":0},"eyebrows":{"defaultItem":-1,"defaultTexture":1,"item":-1,"texture":1},"decals":{"defaultItem":0,"defaultTexture":0,"item":0,"texture":0},"arms":{"defaultItem":0,"defaultTexture":0,"item":0,"texture":0},"bracelet":{"defaultItem":-1,"defaultTexture":0,"item":-1,"texture":0},"pants":{"defaultItem":0,"defaultTexture":0,"item":0,"texture":0},"ear":{"defaultItem":-1,"defaultTexture":0,"item":-1,"texture":0},"mask":{"defaultItem":0,"defaultTexture":0,"item":0,"texture":0},"beard":{"defaultItem":-1,"defaultTexture":1,"item":-1,"texture":1},"glass":{"defaultItem":0,"defaultTexture":0,"item":0,"texture":0},"shoes":{"defaultItem":1,"defaultTexture":0,"item":1,"texture":0},"hat":{"defaultItem":-1,"defaultTexture":0,"item":-1,"texture":0},"accessory":{"defaultItem":0,"defaultTexture":0,"item":0,"texture":0},"torso2":{"defaultItem":0,"defaultTexture":0,"item":0,"texture":0},"ageing":{"defaultItem":-1,"defaultTexture":0,"item":-1,"texture":0},"lipstick":{"defaultItem":-1,"defaultTexture":1,"item":-1,"texture":1},"blush":{"defaultItem":-1,"defaultTexture":1,"item":-1,"texture":1},"hair":{"defaultItem":0,"defaultTexture":0,"item":0,"texture":0}}', 1);
INSERT INTO `playerskins` (`id`, `identifier`, `citizenid`, `model`, `skin`, `active`) VALUES
	(12, 'steam:110000107b574aa', '0', '1755064960', '{"bracelet":{"texture":0,"defaultTexture":0,"defaultItem":-1,"item":-1},"t-shirt":{"texture":0,"defaultTexture":0,"defaultItem":1,"item":1},"bag":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"vest":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"watch":{"texture":0,"defaultTexture":0,"defaultItem":-1,"item":-1},"arms":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"eyebrows":{"texture":1,"defaultTexture":1,"defaultItem":-1,"item":-1},"decals":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"hair":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"blush":{"texture":1,"defaultTexture":1,"defaultItem":-1,"item":-1},"pants":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"lipstick":{"texture":1,"defaultTexture":1,"defaultItem":-1,"item":-1},"mask":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"beard":{"texture":1,"defaultTexture":1,"defaultItem":-1,"item":-1},"ageing":{"texture":0,"defaultTexture":0,"defaultItem":-1,"item":-1},"shoes":{"texture":0,"defaultTexture":0,"defaultItem":1,"item":1},"hat":{"texture":0,"defaultTexture":0,"defaultItem":-1,"item":-1},"accessory":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"torso2":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"makeup":{"texture":1,"defaultTexture":1,"defaultItem":-1,"item":-1},"glass":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"face":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"ear":{"texture":0,"defaultTexture":0,"defaultItem":-1,"item":-1}}', 1);
INSERT INTO `playerskins` (`id`, `identifier`, `citizenid`, `model`, `skin`, `active`) VALUES
	(11, 'steam:1100001176d53c1', '0', '797459875', '{"pants":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"beard":{"defaultTexture":1,"defaultItem":-1,"item":-1,"texture":1},"accessory":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"decals":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"mask":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"ear":{"defaultTexture":0,"defaultItem":-1,"item":-1,"texture":0},"torso2":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"watch":{"defaultTexture":0,"defaultItem":-1,"item":-1,"texture":0},"makeup":{"defaultTexture":1,"defaultItem":-1,"item":-1,"texture":1},"arms":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"hair":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"t-shirt":{"defaultTexture":0,"defaultItem":1,"item":1,"texture":0},"ageing":{"defaultTexture":0,"defaultItem":-1,"item":-1,"texture":0},"face":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"hat":{"defaultTexture":0,"defaultItem":-1,"item":-1,"texture":0},"blush":{"defaultTexture":1,"defaultItem":-1,"item":-1,"texture":1},"lipstick":{"defaultTexture":1,"defaultItem":-1,"item":-1,"texture":1},"bag":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"eyebrows":{"defaultTexture":1,"defaultItem":-1,"item":-1,"texture":1},"bracelet":{"defaultTexture":0,"defaultItem":-1,"item":-1,"texture":0},"vest":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"glass":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"shoes":{"defaultTexture":0,"defaultItem":1,"item":1,"texture":0}}', 1);
/*!40000 ALTER TABLE `playerskins` ENABLE KEYS */;

-- Dumping structure for table evrp.playerstattoos
CREATE TABLE IF NOT EXISTS `playerstattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `tattoos` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.playerstattoos: ~0 rows (approximately)
/*!40000 ALTER TABLE `playerstattoos` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerstattoos` ENABLE KEYS */;

-- Dumping structure for table evrp.player_contacts
CREATE TABLE IF NOT EXISTS `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0',
  `phone_number` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.player_contacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_contacts` ENABLE KEYS */;

-- Dumping structure for table evrp.player_houses
CREATE TABLE IF NOT EXISTS `player_houses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `keyholders` text,
  `decorations` text,
  `stash` text,
  `outfit` text,
  `logoutout` text,
  `insideId` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `house` (`house`),
  KEY `citizenid` (`citizenid`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.player_houses: ~1 rows (approximately)
/*!40000 ALTER TABLE `player_houses` DISABLE KEYS */;
INSERT INTO `player_houses` (`id`, `house`, `identifier`, `citizenid`, `keyholders`, `decorations`, `stash`, `outfit`, `logoutout`, `insideId`) VALUES
	(1, 'wild oats dr1', 'steam:110000107b574aa', NULL, '["steam:110000107b574aa","steam:1100001176d53c1"]', NULL, '{"y":487.4971008300781,"x":-241.42587280273438,"z":103.78695678710938}', '{"y":486.4109802246094,"x":-227.8836212158203,"z":99.77639770507813}', '{"y":485.8028869628906,"x":-221.35523986816407,"z":103.78707885742188}', '');
/*!40000 ALTER TABLE `player_houses` ENABLE KEYS */;

-- Dumping structure for table evrp.player_mails
CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text,
  `read` tinyint(4) DEFAULT '0',
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `button` text,
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.player_mails: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_mails` ENABLE KEYS */;

-- Dumping structure for table evrp.player_outfits
CREATE TABLE IF NOT EXISTS `player_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `skin` text,
  `outfitId` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `outfitId` (`outfitId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.player_outfits: ~1 rows (approximately)
/*!40000 ALTER TABLE `player_outfits` DISABLE KEYS */;
INSERT INTO `player_outfits` (`id`, `identifier`, `citizenid`, `outfitname`, `model`, `skin`, `outfitId`) VALUES
	(1, 'steam:1100001176d53c1', NULL, 'police', '1581098148', '{"ear":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"watch":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"lipstick":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"makeup":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"beard":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"hair":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"blush":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"face":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"t-shirt":{"item":1,"defaultTexture":0,"defaultItem":1,"texture":0},"shoes":{"item":25,"defaultTexture":0,"defaultItem":1,"texture":0},"glass":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"vest":{"item":12,"defaultTexture":0,"defaultItem":0,"texture":0},"bracelet":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"decals":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"eyebrows":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"arms":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"hat":{"item":0,"defaultTexture":0,"defaultItem":-1,"texture":0},"torso2":{"item":18,"defaultTexture":0,"defaultItem":0,"texture":0},"ageing":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"mask":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":1},"pants":{"item":52,"defaultTexture":0,"defaultItem":0,"texture":1},"bag":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"accessory":{"item":3,"defaultTexture":0,"defaultItem":0,"texture":0}}', 'outfit-1-8958');
/*!40000 ALTER TABLE `player_outfits` ENABLE KEYS */;

-- Dumping structure for table evrp.pw_motels
CREATE TABLE IF NOT EXISTS `pw_motels` (
  `rentalid` bigint(255) NOT NULL AUTO_INCREMENT,
  `ident` varchar(70) NOT NULL DEFAULT '0',
  `motelid` bigint(255) DEFAULT '0',
  `room` varchar(50) DEFAULT '0',
  `days_left` int(11) DEFAULT NULL,
  PRIMARY KEY (`rentalid`),
  KEY `ident` (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table evrp.pw_motels: ~0 rows (approximately)
/*!40000 ALTER TABLE `pw_motels` DISABLE KEYS */;
/*!40000 ALTER TABLE `pw_motels` ENABLE KEYS */;

-- Dumping structure for table evrp.rented_vehicles
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) COLLATE utf8_bin NOT NULL,
  `plate` varchar(12) COLLATE utf8_bin NOT NULL,
  `player_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.rented_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;

-- Dumping structure for table evrp.sim
CREATE TABLE IF NOT EXISTS `sim` (
  `identifier` varchar(50) NOT NULL,
  `phone_number` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table evrp.sim: 0 rows
/*!40000 ALTER TABLE `sim` DISABLE KEYS */;
/*!40000 ALTER TABLE `sim` ENABLE KEYS */;

-- Dumping structure for table evrp.society_moneywash
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.society_moneywash: ~0 rows (approximately)
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;

-- Dumping structure for table evrp.territories
CREATE TABLE IF NOT EXISTS `territories` (
  `zone` varchar(50) NOT NULL,
  `control` varchar(50) NOT NULL,
  `influence` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.territories: ~8 rows (approximately)
/*!40000 ALTER TABLE `territories` DISABLE KEYS */;
INSERT INTO `territories` (`zone`, `control`, `influence`) VALUES
	('Davis', 'police', 100);
INSERT INTO `territories` (`zone`, `control`, `influence`) VALUES
	('East V', 'police', 100);
INSERT INTO `territories` (`zone`, `control`, `influence`) VALUES
	('ChamberlainHills', 'police', 100);
INSERT INTO `territories` (`zone`, `control`, `influence`) VALUES
	('Rancho', 'police', 100);
INSERT INTO `territories` (`zone`, `control`, `influence`) VALUES
	('Davis', 'police', 100);
INSERT INTO `territories` (`zone`, `control`, `influence`) VALUES
	('East V', 'police', 100);
INSERT INTO `territories` (`zone`, `control`, `influence`) VALUES
	('ChamberlainHills', 'police', 100);
INSERT INTO `territories` (`zone`, `control`, `influence`) VALUES
	('Rancho', 'police', 100);
/*!40000 ALTER TABLE `territories` ENABLE KEYS */;

-- Dumping structure for table evrp.tweets
CREATE TABLE IF NOT EXISTS `tweets` (
  `handle` longtext NOT NULL,
  `message` varchar(500) NOT NULL,
  `time` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.tweets: ~0 rows (approximately)
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;

-- Dumping structure for table evrp.twitter_accounts
CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table evrp.twitter_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `twitter_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_accounts` ENABLE KEYS */;

-- Dumping structure for table evrp.twitter_likes
CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table evrp.twitter_likes: ~0 rows (approximately)
/*!40000 ALTER TABLE `twitter_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_likes` ENABLE KEYS */;

-- Dumping structure for table evrp.twitter_tweets
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` int(11) NOT NULL DEFAULT '0',
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(11) NOT NULL DEFAULT '0',
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4861 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table evrp.twitter_tweets: ~0 rows (approximately)
/*!40000 ALTER TABLE `twitter_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_tweets` ENABLE KEYS */;

-- Dumping structure for table evrp.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin,
  `currentTats` longtext COLLATE utf8mb4_bin,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `model` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `loadout` longtext COLLATE utf8mb4_bin,
  `position` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `is_dead` tinyint(1) DEFAULT '0',
  `phone-num` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_bin,
  `jail` int(11) NOT NULL DEFAULT '0',
  `last_house` int(11) DEFAULT '0',
  `last_motel` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `last_motel_room` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `adminjail` int(11) NOT NULL DEFAULT '0',
  `profilepicture` longtext COLLATE utf8mb4_bin,
  `background` longtext COLLATE utf8mb4_bin,
  `iban` longtext COLLATE utf8mb4_bin,
  `Phone-number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `numbers` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_numberS` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_numberss` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1315 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table evrp.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `identifier`, `license`, `money`, `name`, `skin`, `currentTats`, `job`, `job_grade`, `model`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `phone-num`, `status`, `jail`, `last_house`, `last_motel`, `last_motel_room`, `tattoos`, `phone_number`, `adminjail`, `profilepicture`, `background`, `iban`, `Phone-number`, `numbers`, `phone_numberS`, `phone_numberss`) VALUES
	(1312, 'Char3:110000107b574aa', 'license:af87b1a26b31ec2ee38d85b14f5f47f35b18c259', 2500, 'Liquid', NULL, NULL, 'police', 1, NULL, '[]', '{"y":487.19999999995346,"z":103.7999', 10338, 111111, 'superadmin', 'ליקוויד', 'ליקוויד', '19.10.1999', 'm', '200', 0, NULL, '[{"val":906300,"percent":90.63,"name":"hunger"},{"val":929725,"percent":92.9725,"name":"thirst"},{"val":132220,"percent":13.222000000000002,"name":"stress"},{"val":0,"percent":0.0,"name":"drunk"}]', 0, 0, NULL, NULL, NULL, '0542963865', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` (`id`, `identifier`, `license`, `money`, `name`, `skin`, `currentTats`, `job`, `job_grade`, `model`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `phone-num`, `status`, `jail`, `last_house`, `last_motel`, `last_motel_room`, `tattoos`, `phone_number`, `adminjail`, `profilepicture`, `background`, `iban`, `Phone-number`, `numbers`, `phone_numberS`, `phone_numberss`) VALUES
	(1313, 'steam:1100001176d53c1', 'license:fc32ee9a53c951c8d7748248ad2596da152c05e7', 2500, 'PsyD33X', NULL, NULL, 'police', 5, NULL, '[]', '{"y":835.3999999999069,"z":320.80000', 11200, 0, 'superadmin', 'ליאור', 'אברגל', '22.05.1998', 'm', '200', 0, NULL, '[{"val":772700,"percent":77.27000000000001,"name":"hunger"},{"val":829525,"percent":82.9525,"name":"thirst"},{"val":145460,"percent":14.546000000000002,"name":"stress"},{"val":0,"percent":0.0,"name":"drunk"}]', 0, 0, NULL, NULL, NULL, '0534835363', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` (`id`, `identifier`, `license`, `money`, `name`, `skin`, `currentTats`, `job`, `job_grade`, `model`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `phone-num`, `status`, `jail`, `last_house`, `last_motel`, `last_motel_room`, `tattoos`, `phone_number`, `adminjail`, `profilepicture`, `background`, `iban`, `Phone-number`, `numbers`, `phone_numberS`, `phone_numberss`) VALUES
	(1314, 'steam:110000107b574aa', 'license:af87b1a26b31ec2ee38d85b14f5f47f35b18c259', 2500, 'Liquid', NULL, NULL, 'dealer', 1, NULL, '[{"label":"Pistol","ammo":0,"name":"WEAPON_PISTOL","components":["clip_default"]}]', '{"y":271.5999999999767,"z":83.200000', 10200, 0, 'superadmin', 'ליקוויד', 'ליקוויד', '19.10.1999', 'm', '200', 0, NULL, '[{"val":791000,"percent":79.10000000000001,"name":"hunger"},{"val":843250,"percent":84.325,"name":"thirst"},{"val":155280,"percent":15.528,"name":"stress"},{"val":0,"percent":0.0,"name":"drunk"}]', 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table evrp.user_accounts
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `money` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.user_accounts: ~2 rows (approximately)
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
	(1, 'Char3:110000107b574aa', 'black_money', 0);
INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
	(2, 'steam:1100001176d53c1', 'black_money', 0);
INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
	(3, 'steam:110000107b574aa', 'black_money', 0);
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;

-- Dumping structure for table evrp.user_ammo
CREATE TABLE IF NOT EXISTS `user_ammo` (
  `steam` text NOT NULL,
  `ammo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.user_ammo: ~2 rows (approximately)
/*!40000 ALTER TABLE `user_ammo` DISABLE KEYS */;
INSERT INTO `user_ammo` (`steam`, `ammo`) VALUES
	('steam:110000107b574aa', '[]');
INSERT INTO `user_ammo` (`steam`, `ammo`) VALUES
	('steam:1100001176d53c1', '[]');
/*!40000 ALTER TABLE `user_ammo` ENABLE KEYS */;

-- Dumping structure for table evrp.user_convictions
CREATE TABLE IF NOT EXISTS `user_convictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `offense` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.user_convictions: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_convictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_convictions` ENABLE KEYS */;

-- Dumping structure for table evrp.user_inventory
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) COLLATE utf8_bin NOT NULL,
  `item` varchar(50) COLLATE utf8_bin NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=907 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table evrp.user_inventory: ~604 rows (approximately)
/*!40000 ALTER TABLE `user_inventory` DISABLE KEYS */;
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(1, 'Char3:110000107b574aa', 'WEAPON_GRENADE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(2, 'Char3:110000107b574aa', 'cola', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(3, 'Char3:110000107b574aa', 'firework4', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(4, 'Char3:110000107b574aa', 'WEAPON_MG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(5, 'Char3:110000107b574aa', 'carokit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(6, 'Char3:110000107b574aa', 'limonade', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(7, 'Char3:110000107b574aa', 'taco', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(8, 'Char3:110000107b574aa', 'WEAPON_MACHINEPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(9, 'Char3:110000107b574aa', 'IceCream', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(10, 'Char3:110000107b574aa', 'firework3', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(11, 'Char3:110000107b574aa', 'psp', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(12, 'Char3:110000107b574aa', 'breadboard', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(13, 'Char3:110000107b574aa', 'weed_nutrition', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(14, 'Char3:110000107b574aa', 'pancakes', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(15, 'Char3:110000107b574aa', 'oxycutter', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(16, 'Char3:110000107b574aa', 'WEAPON_BATTLEAXE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(17, 'Char3:110000107b574aa', 'fixtool', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(18, 'Char3:110000107b574aa', 'hamburger', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(19, 'Char3:110000107b574aa', 'cocaine', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(20, 'Char3:110000107b574aa', 'fixkit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(21, 'Char3:110000107b574aa', 'WEAPON_HATCHET', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(22, 'Char3:110000107b574aa', 'pacificidcard', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(23, 'Char3:110000107b574aa', 'meth1g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(24, 'Char3:110000107b574aa', 'camera', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(25, 'Char3:110000107b574aa', 'disc_ammo_snp_large', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(26, 'Char3:110000107b574aa', 'ticket', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(27, 'Char3:110000107b574aa', 'pearl_necklace', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(28, 'Char3:110000107b574aa', 'disc_ammo_rifle', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(29, 'Char3:110000107b574aa', 'kaberna', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(30, 'Char3:110000107b574aa', 'notepad\r\n', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(31, 'Char3:110000107b574aa', 'methbrick', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(32, 'Char3:110000107b574aa', 'blowpipe', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(33, 'Char3:110000107b574aa', 'tchips', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(34, 'Char3:110000107b574aa', 'bandage', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(35, 'Char3:110000107b574aa', 'metreshooter', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(36, 'Char3:110000107b574aa', 'WEAPON_FLAREGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(37, 'Char3:110000107b574aa', '5ct_gold_chain', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(38, 'Char3:110000107b574aa', 'WEAPON_NIGHTSTICK', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(39, 'Char3:110000107b574aa', 'WEAPON_SNIPERRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(40, 'Char3:110000107b574aa', 'license_drive', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(41, 'Char3:110000107b574aa', 'WEAPON_MACHETE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(42, 'Char3:110000107b574aa', 'jagercerbere', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(43, 'Char3:110000107b574aa', 'weed_purple-haze_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(44, 'Char3:110000107b574aa', '8ct_gold_chain', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(45, 'Char3:110000107b574aa', 'WEAPON_BALL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(46, 'Char3:110000107b574aa', 'WEAPON_SAWNOFFSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(47, 'Char3:110000107b574aa', 'lockpick', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(48, 'Char3:110000107b574aa', 'nitrous', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(49, 'Char3:110000107b574aa', 'redbelt', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(50, 'Char3:110000107b574aa', 'joint', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(51, 'Char3:110000107b574aa', 'fishingrod', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(52, 'Char3:110000107b574aa', 'vodka', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(53, 'Char3:110000107b574aa', 'chocolate', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(54, 'Char3:110000107b574aa', 'disc_ammo_pistol_large', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(55, 'Char3:110000107b574aa', 'meth10g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(56, 'Char3:110000107b574aa', 'firstaid', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(57, 'Char3:110000107b574aa', 'WEAPON_PIPEBOMB', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(58, 'Char3:110000107b574aa', 'filet_mignon', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(59, 'Char3:110000107b574aa', 'hackerDevice', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(60, 'Char3:110000107b574aa', 'casio_watch', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(61, 'Char3:110000107b574aa', 'tequila', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(62, 'Char3:110000107b574aa', 'cigarett', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(63, 'Char3:110000107b574aa', 'viski', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(64, 'Char3:110000107b574aa', 'Coffee', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(65, 'Char3:110000107b574aa', 'drugItem', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(66, 'Char3:110000107b574aa', 'fishtaco', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(67, 'Char3:110000107b574aa', 'empty_weed_bag', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(68, 'Char3:110000107b574aa', 'coke10g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(69, 'Char3:110000107b574aa', 'WEAPON_GARBAGEBAG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(70, 'Char3:110000107b574aa', 'greenbelt', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(71, 'Char3:110000107b574aa', 'WEAPON_HANDCUFFS', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(72, 'Char3:110000107b574aa', 'vicodin', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(73, 'Char3:110000107b574aa', 'chips', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(74, 'Char3:110000107b574aa', 'onigiri', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(75, 'Char3:110000107b574aa', 'gauze', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(76, 'Char3:110000107b574aa', 'bolpistache', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(77, 'Char3:110000107b574aa', 'WEAPON_STINGER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(78, 'Char3:110000107b574aa', 'coke1g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(79, 'Char3:110000107b574aa', 'weed_skunk_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(80, 'Char3:110000107b574aa', 'WEAPON_COMBATMG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(81, 'Char3:110000107b574aa', 'whitebandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(82, 'Char3:110000107b574aa', 'firework1', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(83, 'Char3:110000107b574aa', 'weedbrick', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(84, 'Char3:110000107b574aa', 'id_card', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(85, 'Char3:110000107b574aa', 'disc_ammo_smg', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(86, 'Char3:110000107b574aa', 'cocaine_uncut', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(87, 'Char3:110000107b574aa', 'meth_raw', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(88, 'Char3:110000107b574aa', 'WEAPON_HAMMER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(89, 'Char3:110000107b574aa', 'cocacola', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(90, 'Char3:110000107b574aa', 'disc_ammo_rifle_large', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(91, 'Char3:110000107b574aa', 'WEAPON_MUSKET', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(92, 'Char3:110000107b574aa', 'oxygen', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(93, 'Char3:110000107b574aa', 'weed_ak47_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(94, 'Char3:110000107b574aa', 'WEAPON_BULLPUPRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(95, 'Char3:110000107b574aa', 'parachute', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(96, 'Char3:110000107b574aa', 'WEAPON_BAT', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(97, 'Char3:110000107b574aa', 'jagerbomb', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(98, 'Char3:110000107b574aa', 'WEAPON_MARKSMANRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(99, 'Char3:110000107b574aa', 'WEAPON_REVOLVER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(100, 'Char3:110000107b574aa', 'WEAPON_POOLCUE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(101, 'Char3:110000107b574aa', 'WEAPON_SPECIALCARBINE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(102, 'Char3:110000107b574aa', 'whisky', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(103, 'Char3:110000107b574aa', 'milk_can', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(104, 'Char3:110000107b574aa', 'WEAPON_STICKYBOMB', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(105, 'Char3:110000107b574aa', '10ct_gold_chain', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(106, 'Char3:110000107b574aa', 'WEAPON_HEAVYSNIPER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(107, 'Char3:110000107b574aa', 'tunerchip', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(108, 'Char3:110000107b574aa', 'fruittartlet', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(109, 'Char3:110000107b574aa', 'sushirolls', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(110, 'Char3:110000107b574aa', 'icecoffee', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(111, 'Char3:110000107b574aa', 'cupcake', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(112, 'Char3:110000107b574aa', 'WEAPON_KNIFE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(113, 'Char3:110000107b574aa', 'WEAPON_GUSENBERG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(114, 'Char3:110000107b574aa', 'WEAPON_KATANA', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(115, 'Char3:110000107b574aa', 'policevest', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(116, 'Char3:110000107b574aa', 'WEAPON_PROXMINE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(117, 'Char3:110000107b574aa', 'jusfruit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(118, 'Char3:110000107b574aa', 'repairkit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(119, 'Char3:110000107b574aa', 'disc_ammo_smg_large', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(120, 'Char3:110000107b574aa', 'cut_money', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(121, 'Char3:110000107b574aa', 'mojito', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(122, 'Char3:110000107b574aa', 'apple_iphone', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(123, 'Char3:110000107b574aa', 'WEAPON_DOUBLEACTION', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(124, 'Char3:110000107b574aa', 'menthe', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(125, 'Char3:110000107b574aa', 'vagosbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(126, 'Char3:110000107b574aa', 'bloodsbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(127, 'Char3:110000107b574aa', 'oxygenmask', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(128, 'Char3:110000107b574aa', 'WEAPON_MARKSMANPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(129, 'Char3:110000107b574aa', 'grapperaisin', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(130, 'Char3:110000107b574aa', 'bobbypin', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(131, 'Char3:110000107b574aa', 'policeradar', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(132, 'Char3:110000107b574aa', 'blackbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(133, 'Char3:110000107b574aa', 'sushiplate', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(134, 'Char3:110000107b574aa', 'WEAPON_MOLOTOV', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(135, 'Char3:110000107b574aa', 'gadget_parachute', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(136, 'Char3:110000107b574aa', 'usbhack', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(137, 'Char3:110000107b574aa', 'WEAPON_COMPACTRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(138, 'Char3:110000107b574aa', 'meth_packaged', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(139, 'Char3:110000107b574aa', 'WEAPON_ASSAULTRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(140, 'Char3:110000107b574aa', 'WEAPON_VINTAGEPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(141, 'Char3:110000107b574aa', 'hotdog', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(142, 'Char3:110000107b574aa', 'WEAPON_GRENADELAUNCHER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(143, 'Char3:110000107b574aa', 'keys', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(144, 'Char3:110000107b574aa', 'WEAPON_SWITCHBLADE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(145, 'Char3:110000107b574aa', 'candy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(146, 'Char3:110000107b574aa', 'cigarettbox', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(147, 'Char3:110000107b574aa', 'bleeder', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(148, 'Char3:110000107b574aa', 'disc_ammo_shotgun', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(149, 'Char3:110000107b574aa', 'gameboy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(150, 'Char3:110000107b574aa', 'fishbait', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(151, 'Char3:110000107b574aa', 'hydrocodone', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(152, 'Char3:110000107b574aa', 'gold_chain', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(153, 'Char3:110000107b574aa', 'champagne', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(154, 'Char3:110000107b574aa', 'weed_amnesia_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(155, 'Char3:110000107b574aa', 'bag', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(156, 'Char3:110000107b574aa', 'cursedkatana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(157, 'Char3:110000107b574aa', 'cokebrick', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(158, 'Char3:110000107b574aa', 'WEAPON_CROWBAR', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(159, 'Char3:110000107b574aa', 'WEAPON_HEAVYSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(160, 'Char3:110000107b574aa', 'thermite', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(161, 'Char3:110000107b574aa', 'beer', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(162, 'Char3:110000107b574aa', 'saucisson', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(163, 'Char3:110000107b574aa', 'WEAPON_GOLFCLUB', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(164, 'Char3:110000107b574aa', 'medkit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(165, 'Char3:110000107b574aa', 'vaultcard', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(166, 'Char3:110000107b574aa', 'WEAPON_BZGAS', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(167, 'Char3:110000107b574aa', 'ballasbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(168, 'Char3:110000107b574aa', 'vest', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(169, 'Char3:110000107b574aa', 'icetea', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(170, 'Char3:110000107b574aa', 'bread', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(171, 'Char3:110000107b574aa', 'WEAPON_DAGGER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(172, 'Char3:110000107b574aa', 'advancedlockpick', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(173, 'Char3:110000107b574aa', 'WEAPON_MINIGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(174, 'Char3:110000107b574aa', 'electronics', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(175, 'Char3:110000107b574aa', 'morphine', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(176, 'Char3:110000107b574aa', 'WEAPON_SMG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(177, 'Char3:110000107b574aa', 'radio', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(178, 'Char3:110000107b574aa', 'gazbottle', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(179, 'Char3:110000107b574aa', 'WEAPON_RAILGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(180, 'Char3:110000107b574aa', 'milk', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(181, 'Char3:110000107b574aa', 'WEAPON_FIREWORK', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(182, 'Char3:110000107b574aa', 'phone', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(183, 'Char3:110000107b574aa', 'binoculars', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(184, 'Char3:110000107b574aa', 'WEAPON_PUMPSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(185, 'Char3:110000107b574aa', '556mm_ammo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(186, 'Char3:110000107b574aa', 'WEAPON_DBSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(187, 'Char3:110000107b574aa', '765mm_ammo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(188, 'Char3:110000107b574aa', 'drugbags', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(189, 'Char3:110000107b574aa', 'hqscale', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(190, 'Char3:110000107b574aa', 'avrepairkit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(191, 'Char3:110000107b574aa', 'bag1', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(192, 'Char3:110000107b574aa', 'sorted_money', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(193, 'Char3:110000107b574aa', 'bags', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(194, 'Char3:110000107b574aa', 'zlom', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(195, 'Char3:110000107b574aa', 'teqpaf', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(196, 'Char3:110000107b574aa', 'wine', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(197, 'Char3:110000107b574aa', 'cuffs', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(198, 'Char3:110000107b574aa', 'license_weapon', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(199, 'Char3:110000107b574aa', 'oxy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(200, 'Char3:110000107b574aa', 'soda', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(201, 'Char3:110000107b574aa', 'marlo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(202, 'Char3:110000107b574aa', 'whiskycoca', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(203, 'Char3:110000107b574aa', 'samsung_s8', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(204, 'Char3:110000107b574aa', 'weed_untrimmed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(205, 'Char3:110000107b574aa', 'orangebandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(206, 'Char3:110000107b574aa', 'weed_packaged', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(207, 'Char3:110000107b574aa', 'weed_og-kush_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(208, 'Char3:110000107b574aa', 'cripsbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(209, 'Char3:110000107b574aa', 'weed4g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(210, 'Char3:110000107b574aa', 'blackbelt', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(211, 'Char3:110000107b574aa', 'bolnoixcajou', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(212, 'Char3:110000107b574aa', 'samsungS10', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(213, 'Char3:110000107b574aa', 'weed20g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(214, 'Char3:110000107b574aa', 'WEAPON_FLASHLIGHT', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(215, 'Char3:110000107b574aa', 'ice', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(216, 'Char3:110000107b574aa', 'WEAPON_BULLPUPSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(217, 'Char3:110000107b574aa', 'water', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(218, 'Char3:110000107b574aa', 'WEAPON_RPG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(219, 'Char3:110000107b574aa', 'coffe', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(220, 'Char3:110000107b574aa', 'bolchips', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(221, 'Char3:110000107b574aa', 'vodkafruit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(222, 'Char3:110000107b574aa', 'vodkaenergy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(223, 'Char3:110000107b574aa', 'veggysalad', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(224, 'Char3:110000107b574aa', 'WEAPON_ADVANCEDRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(225, 'Char3:110000107b574aa', 'turtle', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(226, 'Char3:110000107b574aa', 'turtlebait', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(227, 'Char3:110000107b574aa', 'torta', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(228, 'Char3:110000107b574aa', 'torpedo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(229, 'Char3:110000107b574aa', 'katana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(230, 'Char3:110000107b574aa', 'WEAPON_ASSAULTSMG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(231, 'Char3:110000107b574aa', 'WEAPON_FIREEXTINGUISHER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(232, 'Char3:110000107b574aa', 'cigarette', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(233, 'Char3:110000107b574aa', 'medikit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(234, 'Char3:110000107b574aa', 'WEAPON_APPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(235, 'Char3:110000107b574aa', 'slushy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(236, 'Char3:110000107b574aa', 'sim', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(237, 'Char3:110000107b574aa', 'shark', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(238, 'Char3:110000107b574aa', 'rolpaper', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(239, 'Char3:110000107b574aa', 'WEAPON_COMBATPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(240, 'Char3:110000107b574aa', 'screwdriver', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(241, 'Char3:110000107b574aa', 'WEAPON_SNOWBALL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(242, 'Char3:110000107b574aa', 'schnitzel', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(243, 'Char3:110000107b574aa', 'police_stormram', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(244, 'Char3:110000107b574aa', 'diamond', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(245, 'Char3:110000107b574aa', 'sandwich', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(246, 'Char3:110000107b574aa', 'weed_white-widow_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(247, 'Char3:110000107b574aa', 'WEAPON_PISTOL50', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(248, 'Char3:110000107b574aa', 'fish', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(249, 'Char3:110000107b574aa', 'burger', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(250, 'Char3:110000107b574aa', 'rollingpaper', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(251, 'Char3:110000107b574aa', 'WEAPON_SNSPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(252, 'Char3:110000107b574aa', 'WEAPON_BOTTLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(253, 'Char3:110000107b574aa', 'absinthe', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(254, 'Char3:110000107b574aa', 'WEAPON_CARBINERIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(255, 'Char3:110000107b574aa', 'rhumfruit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(256, 'Char3:110000107b574aa', 'rhumcoca', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(257, 'Char3:110000107b574aa', 'lighter', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(258, 'Char3:110000107b574aa', 'WEAPON_ASSAULTSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(259, 'Char3:110000107b574aa', 'orange', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(260, 'Char3:110000107b574aa', '2ct_gold_chain', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(261, 'Char3:110000107b574aa', 'milkshake', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(262, 'Char3:110000107b574aa', 'firework2', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(263, 'Char3:110000107b574aa', 'WEAPON_AUTOSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(264, 'Char3:110000107b574aa', 'WEAPON_MICROSMG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(265, 'Char3:110000107b574aa', 'WEAPON_PISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(266, 'Char3:110000107b574aa', 'WEAPON_COMBATPDW', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(267, 'Char3:110000107b574aa', 'whitebelt', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(268, 'Char3:110000107b574aa', 'WEAPON_STUNGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(269, 'Char3:110000107b574aa', 'WEAPON_HEAVYPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(270, 'Char3:110000107b574aa', '9mm_ammo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(271, 'Char3:110000107b574aa', 'WEAPON_HOMINGLAUNCHER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(272, 'Char3:110000107b574aa', 'sunglasses', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(273, 'Char3:110000107b574aa', 'nokia_phone', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(274, 'Char3:110000107b574aa', 'ring', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(275, 'Char3:110000107b574aa', 'WEAPON_DIGISCANNER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(276, 'Char3:110000107b574aa', 'WEAPON_MINISMG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(277, 'Char3:110000107b574aa', 'bankidcard', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(278, 'Char3:110000107b574aa', 'mixapero', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(279, 'Char3:110000107b574aa', 'WEAPON_WRENCH', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(280, 'Char3:110000107b574aa', 'mingo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(281, 'Char3:110000107b574aa', 'gintonic', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(282, 'Char3:110000107b574aa', 'WEAPON_FLARE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(283, 'Char3:110000107b574aa', 'WEAPON_SMOKEGRENADE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(284, 'Char3:110000107b574aa', 'disc_ammo_pistol', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(285, 'Char3:110000107b574aa', 'white_pearl', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(286, 'Char3:110000107b574aa', 'weed_100g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(287, 'Char3:110000107b574aa', 'vodkaxred', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(288, 'Char3:110000107b574aa', 'WEAPON_PETROLCAN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(289, 'Char3:110000107b574aa', 'joint2g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(290, 'Char3:110000107b574aa', 'gps', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(291, 'Char3:110000107b574aa', 'WEAPON_KNUCKLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(292, 'Char3:110000107b574aa', 'golem', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(293, 'Char3:110000107b574aa', 'cocaine_cut', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(294, 'Char3:110000107b574aa', 'drpepper', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(295, 'Char3:110000107b574aa', 'carotool', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(296, 'Char3:110000107b574aa', 'cocaine_packaged', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(297, 'Char3:110000107b574aa', 'greenbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(298, 'Char3:110000107b574aa', 'bolcacahuetes', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(299, 'Char3:110000107b574aa', 'disc_ammo_snp', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(300, 'Char3:110000107b574aa', 'WEAPON_COMPACTLAUNCHER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(301, 'Char3:110000107b574aa', 'energy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(302, 'Char3:110000107b574aa', 'disc_ammo_shotgun_large', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(303, 'steam:1100001176d53c1', 'carokit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(304, 'steam:1100001176d53c1', 'WEAPON_MG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(305, 'steam:1100001176d53c1', 'WEAPON_GRENADE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(306, 'steam:1100001176d53c1', 'cola', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(307, 'steam:1100001176d53c1', 'firework4', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(308, 'steam:1100001176d53c1', 'limonade', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(309, 'steam:1100001176d53c1', 'taco', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(310, 'steam:1100001176d53c1', 'WEAPON_MACHINEPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(311, 'steam:1100001176d53c1', 'IceCream', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(312, 'steam:1100001176d53c1', 'firework3', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(313, 'steam:1100001176d53c1', 'psp', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(314, 'steam:1100001176d53c1', 'breadboard', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(315, 'steam:1100001176d53c1', 'weed_nutrition', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(316, 'steam:1100001176d53c1', 'pancakes', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(317, 'steam:1100001176d53c1', 'oxycutter', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(318, 'steam:1100001176d53c1', 'WEAPON_BATTLEAXE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(319, 'steam:1100001176d53c1', 'fixtool', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(320, 'steam:1100001176d53c1', 'fixkit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(321, 'steam:1100001176d53c1', 'cocaine', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(322, 'steam:1100001176d53c1', 'hamburger', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(323, 'steam:1100001176d53c1', 'pacificidcard', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(324, 'steam:1100001176d53c1', 'meth1g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(325, 'steam:1100001176d53c1', 'WEAPON_HATCHET', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(326, 'steam:1100001176d53c1', 'camera', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(327, 'steam:1100001176d53c1', 'disc_ammo_snp_large', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(328, 'steam:1100001176d53c1', 'ticket', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(329, 'steam:1100001176d53c1', 'pearl_necklace', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(330, 'steam:1100001176d53c1', 'disc_ammo_rifle', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(331, 'steam:1100001176d53c1', 'kaberna', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(332, 'steam:1100001176d53c1', 'notepad\r\n', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(333, 'steam:1100001176d53c1', 'methbrick', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(334, 'steam:1100001176d53c1', 'blowpipe', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(335, 'steam:1100001176d53c1', 'tchips', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(336, 'steam:1100001176d53c1', 'bandage', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(337, 'steam:1100001176d53c1', 'metreshooter', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(338, 'steam:1100001176d53c1', 'WEAPON_FLAREGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(339, 'steam:1100001176d53c1', '5ct_gold_chain', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(340, 'steam:1100001176d53c1', 'WEAPON_SNIPERRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(341, 'steam:1100001176d53c1', 'WEAPON_NIGHTSTICK', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(342, 'steam:1100001176d53c1', 'license_drive', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(343, 'steam:1100001176d53c1', 'WEAPON_MACHETE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(344, 'steam:1100001176d53c1', 'jagercerbere', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(345, 'steam:1100001176d53c1', 'weed_purple-haze_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(346, 'steam:1100001176d53c1', '8ct_gold_chain', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(347, 'steam:1100001176d53c1', 'WEAPON_BALL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(348, 'steam:1100001176d53c1', 'WEAPON_SAWNOFFSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(349, 'steam:1100001176d53c1', 'lockpick', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(350, 'steam:1100001176d53c1', 'nitrous', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(351, 'steam:1100001176d53c1', 'redbelt', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(352, 'steam:1100001176d53c1', 'joint', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(353, 'steam:1100001176d53c1', 'fishingrod', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(354, 'steam:1100001176d53c1', 'vodka', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(355, 'steam:1100001176d53c1', 'chocolate', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(356, 'steam:1100001176d53c1', 'disc_ammo_pistol_large', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(357, 'steam:1100001176d53c1', 'meth10g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(358, 'steam:1100001176d53c1', 'firstaid', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(359, 'steam:1100001176d53c1', 'WEAPON_PIPEBOMB', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(360, 'steam:1100001176d53c1', 'filet_mignon', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(361, 'steam:1100001176d53c1', 'hackerDevice', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(362, 'steam:1100001176d53c1', 'casio_watch', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(363, 'steam:1100001176d53c1', 'tequila', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(364, 'steam:1100001176d53c1', 'cigarett', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(365, 'steam:1100001176d53c1', 'viski', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(366, 'steam:1100001176d53c1', 'Coffee', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(367, 'steam:1100001176d53c1', 'drugItem', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(368, 'steam:1100001176d53c1', 'fishtaco', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(369, 'steam:1100001176d53c1', 'empty_weed_bag', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(370, 'steam:1100001176d53c1', 'coke10g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(371, 'steam:1100001176d53c1', 'WEAPON_GARBAGEBAG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(372, 'steam:1100001176d53c1', 'greenbelt', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(373, 'steam:1100001176d53c1', 'vicodin', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(374, 'steam:1100001176d53c1', 'WEAPON_HANDCUFFS', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(375, 'steam:1100001176d53c1', 'chips', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(376, 'steam:1100001176d53c1', 'onigiri', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(377, 'steam:1100001176d53c1', 'gauze', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(378, 'steam:1100001176d53c1', 'bolpistache', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(379, 'steam:1100001176d53c1', 'WEAPON_STINGER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(380, 'steam:1100001176d53c1', 'coke1g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(381, 'steam:1100001176d53c1', 'weed_skunk_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(382, 'steam:1100001176d53c1', 'WEAPON_COMBATMG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(383, 'steam:1100001176d53c1', 'whitebandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(384, 'steam:1100001176d53c1', 'firework1', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(385, 'steam:1100001176d53c1', 'weedbrick', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(386, 'steam:1100001176d53c1', 'id_card', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(387, 'steam:1100001176d53c1', 'disc_ammo_smg', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(388, 'steam:1100001176d53c1', 'cocaine_uncut', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(389, 'steam:1100001176d53c1', 'meth_raw', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(390, 'steam:1100001176d53c1', 'WEAPON_HAMMER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(391, 'steam:1100001176d53c1', 'cocacola', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(392, 'steam:1100001176d53c1', 'disc_ammo_rifle_large', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(393, 'steam:1100001176d53c1', 'WEAPON_MUSKET', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(394, 'steam:1100001176d53c1', 'oxygen', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(395, 'steam:1100001176d53c1', 'weed_ak47_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(396, 'steam:1100001176d53c1', 'WEAPON_BULLPUPRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(397, 'steam:1100001176d53c1', 'parachute', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(398, 'steam:1100001176d53c1', 'WEAPON_BAT', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(399, 'steam:1100001176d53c1', 'jagerbomb', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(400, 'steam:1100001176d53c1', 'WEAPON_MARKSMANRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(401, 'steam:1100001176d53c1', 'WEAPON_REVOLVER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(402, 'steam:1100001176d53c1', 'WEAPON_POOLCUE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(403, 'steam:1100001176d53c1', 'WEAPON_SPECIALCARBINE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(404, 'steam:1100001176d53c1', 'whisky', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(405, 'steam:1100001176d53c1', 'milk_can', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(406, 'steam:1100001176d53c1', 'WEAPON_STICKYBOMB', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(407, 'steam:1100001176d53c1', '10ct_gold_chain', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(408, 'steam:1100001176d53c1', 'WEAPON_HEAVYSNIPER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(409, 'steam:1100001176d53c1', 'tunerchip', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(410, 'steam:1100001176d53c1', 'fruittartlet', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(411, 'steam:1100001176d53c1', 'sushirolls', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(412, 'steam:1100001176d53c1', 'icecoffee', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(413, 'steam:1100001176d53c1', 'cupcake', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(414, 'steam:1100001176d53c1', 'WEAPON_KNIFE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(415, 'steam:1100001176d53c1', 'WEAPON_GUSENBERG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(416, 'steam:1100001176d53c1', 'WEAPON_KATANA', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(417, 'steam:1100001176d53c1', 'policevest', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(418, 'steam:1100001176d53c1', 'WEAPON_PROXMINE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(419, 'steam:1100001176d53c1', 'jusfruit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(420, 'steam:1100001176d53c1', 'repairkit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(421, 'steam:1100001176d53c1', 'disc_ammo_smg_large', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(422, 'steam:1100001176d53c1', 'cut_money', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(423, 'steam:1100001176d53c1', 'mojito', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(424, 'steam:1100001176d53c1', 'apple_iphone', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(425, 'steam:1100001176d53c1', 'WEAPON_DOUBLEACTION', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(426, 'steam:1100001176d53c1', 'menthe', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(427, 'steam:1100001176d53c1', 'vagosbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(428, 'steam:1100001176d53c1', 'bloodsbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(429, 'steam:1100001176d53c1', 'oxygenmask', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(430, 'steam:1100001176d53c1', 'WEAPON_MARKSMANPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(431, 'steam:1100001176d53c1', 'grapperaisin', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(432, 'steam:1100001176d53c1', 'bobbypin', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(433, 'steam:1100001176d53c1', 'policeradar', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(434, 'steam:1100001176d53c1', 'blackbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(435, 'steam:1100001176d53c1', 'sushiplate', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(436, 'steam:1100001176d53c1', 'gadget_parachute', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(437, 'steam:1100001176d53c1', 'WEAPON_MOLOTOV', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(438, 'steam:1100001176d53c1', 'usbhack', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(439, 'steam:1100001176d53c1', 'WEAPON_COMPACTRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(440, 'steam:1100001176d53c1', 'meth_packaged', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(441, 'steam:1100001176d53c1', 'WEAPON_ASSAULTRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(442, 'steam:1100001176d53c1', 'WEAPON_VINTAGEPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(443, 'steam:1100001176d53c1', 'hotdog', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(444, 'steam:1100001176d53c1', 'WEAPON_GRENADELAUNCHER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(445, 'steam:1100001176d53c1', 'keys', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(446, 'steam:1100001176d53c1', 'WEAPON_SWITCHBLADE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(447, 'steam:1100001176d53c1', 'candy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(448, 'steam:1100001176d53c1', 'cigarettbox', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(449, 'steam:1100001176d53c1', 'bleeder', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(450, 'steam:1100001176d53c1', 'disc_ammo_shotgun', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(451, 'steam:1100001176d53c1', 'gameboy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(452, 'steam:1100001176d53c1', 'fishbait', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(453, 'steam:1100001176d53c1', 'hydrocodone', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(454, 'steam:1100001176d53c1', 'gold_chain', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(455, 'steam:1100001176d53c1', 'champagne', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(456, 'steam:1100001176d53c1', 'weed_amnesia_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(457, 'steam:1100001176d53c1', 'bag', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(458, 'steam:1100001176d53c1', 'cursedkatana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(459, 'steam:1100001176d53c1', 'cokebrick', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(460, 'steam:1100001176d53c1', 'WEAPON_CROWBAR', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(461, 'steam:1100001176d53c1', 'WEAPON_HEAVYSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(462, 'steam:1100001176d53c1', 'thermite', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(463, 'steam:1100001176d53c1', 'beer', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(464, 'steam:1100001176d53c1', 'saucisson', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(465, 'steam:1100001176d53c1', 'WEAPON_GOLFCLUB', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(466, 'steam:1100001176d53c1', 'medkit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(467, 'steam:1100001176d53c1', 'vaultcard', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(468, 'steam:1100001176d53c1', 'WEAPON_BZGAS', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(469, 'steam:1100001176d53c1', 'ballasbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(470, 'steam:1100001176d53c1', 'vest', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(471, 'steam:1100001176d53c1', 'icetea', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(472, 'steam:1100001176d53c1', 'bread', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(473, 'steam:1100001176d53c1', 'WEAPON_DAGGER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(474, 'steam:1100001176d53c1', 'advancedlockpick', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(475, 'steam:1100001176d53c1', 'WEAPON_MINIGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(476, 'steam:1100001176d53c1', 'electronics', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(477, 'steam:1100001176d53c1', 'morphine', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(478, 'steam:1100001176d53c1', 'WEAPON_SMG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(479, 'steam:1100001176d53c1', 'radio', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(480, 'steam:1100001176d53c1', 'gazbottle', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(481, 'steam:1100001176d53c1', 'WEAPON_RAILGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(482, 'steam:1100001176d53c1', 'milk', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(483, 'steam:1100001176d53c1', 'WEAPON_FIREWORK', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(484, 'steam:1100001176d53c1', 'binoculars', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(485, 'steam:1100001176d53c1', 'phone', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(486, 'steam:1100001176d53c1', 'WEAPON_PUMPSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(487, 'steam:1100001176d53c1', '556mm_ammo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(488, 'steam:1100001176d53c1', 'WEAPON_DBSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(489, 'steam:1100001176d53c1', '765mm_ammo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(490, 'steam:1100001176d53c1', 'drugbags', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(491, 'steam:1100001176d53c1', 'avrepairkit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(492, 'steam:1100001176d53c1', 'hqscale', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(493, 'steam:1100001176d53c1', 'bag1', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(494, 'steam:1100001176d53c1', 'sorted_money', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(495, 'steam:1100001176d53c1', 'bags', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(496, 'steam:1100001176d53c1', 'zlom', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(497, 'steam:1100001176d53c1', 'teqpaf', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(498, 'steam:1100001176d53c1', 'wine', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(499, 'steam:1100001176d53c1', 'cuffs', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(500, 'steam:1100001176d53c1', 'license_weapon', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(501, 'steam:1100001176d53c1', 'oxy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(502, 'steam:1100001176d53c1', 'soda', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(503, 'steam:1100001176d53c1', 'marlo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(504, 'steam:1100001176d53c1', 'whiskycoca', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(505, 'steam:1100001176d53c1', 'samsung_s8', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(506, 'steam:1100001176d53c1', 'weed_untrimmed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(507, 'steam:1100001176d53c1', 'orangebandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(508, 'steam:1100001176d53c1', 'weed_packaged', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(509, 'steam:1100001176d53c1', 'weed_og-kush_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(510, 'steam:1100001176d53c1', 'cripsbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(511, 'steam:1100001176d53c1', 'weed4g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(512, 'steam:1100001176d53c1', 'blackbelt', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(513, 'steam:1100001176d53c1', 'bolnoixcajou', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(514, 'steam:1100001176d53c1', 'weed20g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(515, 'steam:1100001176d53c1', 'samsungS10', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(516, 'steam:1100001176d53c1', 'WEAPON_FLASHLIGHT', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(517, 'steam:1100001176d53c1', 'ice', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(518, 'steam:1100001176d53c1', 'WEAPON_BULLPUPSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(519, 'steam:1100001176d53c1', 'water', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(520, 'steam:1100001176d53c1', 'WEAPON_RPG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(521, 'steam:1100001176d53c1', 'coffe', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(522, 'steam:1100001176d53c1', 'bolchips', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(523, 'steam:1100001176d53c1', 'vodkafruit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(524, 'steam:1100001176d53c1', 'vodkaenergy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(525, 'steam:1100001176d53c1', 'veggysalad', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(526, 'steam:1100001176d53c1', 'WEAPON_ADVANCEDRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(527, 'steam:1100001176d53c1', 'turtle', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(528, 'steam:1100001176d53c1', 'turtlebait', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(529, 'steam:1100001176d53c1', 'torta', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(530, 'steam:1100001176d53c1', 'torpedo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(531, 'steam:1100001176d53c1', 'katana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(532, 'steam:1100001176d53c1', 'WEAPON_ASSAULTSMG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(533, 'steam:1100001176d53c1', 'WEAPON_FIREEXTINGUISHER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(534, 'steam:1100001176d53c1', 'cigarette', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(535, 'steam:1100001176d53c1', 'medikit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(536, 'steam:1100001176d53c1', 'WEAPON_APPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(537, 'steam:1100001176d53c1', 'slushy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(538, 'steam:1100001176d53c1', 'sim', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(539, 'steam:1100001176d53c1', 'shark', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(540, 'steam:1100001176d53c1', 'rolpaper', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(541, 'steam:1100001176d53c1', 'WEAPON_COMBATPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(542, 'steam:1100001176d53c1', 'screwdriver', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(543, 'steam:1100001176d53c1', 'WEAPON_SNOWBALL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(544, 'steam:1100001176d53c1', 'schnitzel', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(545, 'steam:1100001176d53c1', 'police_stormram', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(546, 'steam:1100001176d53c1', 'diamond', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(547, 'steam:1100001176d53c1', 'sandwich', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(548, 'steam:1100001176d53c1', 'weed_white-widow_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(549, 'steam:1100001176d53c1', 'WEAPON_PISTOL50', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(550, 'steam:1100001176d53c1', 'fish', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(551, 'steam:1100001176d53c1', 'burger', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(552, 'steam:1100001176d53c1', 'rollingpaper', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(553, 'steam:1100001176d53c1', 'WEAPON_SNSPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(554, 'steam:1100001176d53c1', 'WEAPON_BOTTLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(555, 'steam:1100001176d53c1', 'absinthe', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(556, 'steam:1100001176d53c1', 'WEAPON_CARBINERIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(557, 'steam:1100001176d53c1', 'rhumfruit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(558, 'steam:1100001176d53c1', 'rhumcoca', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(559, 'steam:1100001176d53c1', 'lighter', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(560, 'steam:1100001176d53c1', 'WEAPON_ASSAULTSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(561, 'steam:1100001176d53c1', 'orange', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(562, 'steam:1100001176d53c1', '2ct_gold_chain', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(563, 'steam:1100001176d53c1', 'milkshake', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(564, 'steam:1100001176d53c1', 'firework2', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(565, 'steam:1100001176d53c1', 'WEAPON_AUTOSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(566, 'steam:1100001176d53c1', 'WEAPON_MICROSMG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(567, 'steam:1100001176d53c1', 'WEAPON_PISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(568, 'steam:1100001176d53c1', 'WEAPON_COMBATPDW', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(569, 'steam:1100001176d53c1', 'whitebelt', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(570, 'steam:1100001176d53c1', 'WEAPON_STUNGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(571, 'steam:1100001176d53c1', 'WEAPON_HEAVYPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(572, 'steam:1100001176d53c1', '9mm_ammo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(573, 'steam:1100001176d53c1', 'WEAPON_HOMINGLAUNCHER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(574, 'steam:1100001176d53c1', 'nokia_phone', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(575, 'steam:1100001176d53c1', 'ring', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(576, 'steam:1100001176d53c1', 'sunglasses', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(577, 'steam:1100001176d53c1', 'WEAPON_DIGISCANNER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(578, 'steam:1100001176d53c1', 'mixapero', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(579, 'steam:1100001176d53c1', 'WEAPON_MINISMG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(580, 'steam:1100001176d53c1', 'bankidcard', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(581, 'steam:1100001176d53c1', 'WEAPON_WRENCH', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(582, 'steam:1100001176d53c1', 'mingo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(583, 'steam:1100001176d53c1', 'gintonic', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(584, 'steam:1100001176d53c1', 'WEAPON_FLARE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(585, 'steam:1100001176d53c1', 'WEAPON_SMOKEGRENADE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(586, 'steam:1100001176d53c1', 'disc_ammo_pistol', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(587, 'steam:1100001176d53c1', 'white_pearl', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(588, 'steam:1100001176d53c1', 'weed_100g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(589, 'steam:1100001176d53c1', 'vodkaxred', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(590, 'steam:1100001176d53c1', 'WEAPON_PETROLCAN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(591, 'steam:1100001176d53c1', 'joint2g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(592, 'steam:1100001176d53c1', 'gps', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(593, 'steam:1100001176d53c1', 'WEAPON_KNUCKLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(594, 'steam:1100001176d53c1', 'golem', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(595, 'steam:1100001176d53c1', 'cocaine_cut', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(596, 'steam:1100001176d53c1', 'drpepper', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(597, 'steam:1100001176d53c1', 'carotool', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(598, 'steam:1100001176d53c1', 'cocaine_packaged', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(599, 'steam:1100001176d53c1', 'greenbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(600, 'steam:1100001176d53c1', 'bolcacahuetes', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(601, 'steam:1100001176d53c1', 'disc_ammo_snp', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(602, 'steam:1100001176d53c1', 'WEAPON_COMPACTLAUNCHER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(603, 'steam:1100001176d53c1', 'energy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(604, 'steam:1100001176d53c1', 'disc_ammo_shotgun_large', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(605, 'steam:110000107b574aa', 'carokit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(606, 'steam:110000107b574aa', 'WEAPON_MG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(607, 'steam:110000107b574aa', 'WEAPON_GRENADE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(608, 'steam:110000107b574aa', 'cola', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(609, 'steam:110000107b574aa', 'firework4', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(610, 'steam:110000107b574aa', 'limonade', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(611, 'steam:110000107b574aa', 'taco', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(612, 'steam:110000107b574aa', 'WEAPON_MACHINEPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(613, 'steam:110000107b574aa', 'IceCream', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(614, 'steam:110000107b574aa', 'firework3', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(615, 'steam:110000107b574aa', 'psp', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(616, 'steam:110000107b574aa', 'breadboard', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(617, 'steam:110000107b574aa', 'weed_nutrition', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(618, 'steam:110000107b574aa', 'oxycutter', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(619, 'steam:110000107b574aa', 'pancakes', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(620, 'steam:110000107b574aa', 'WEAPON_BATTLEAXE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(621, 'steam:110000107b574aa', 'fixtool', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(622, 'steam:110000107b574aa', 'fixkit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(623, 'steam:110000107b574aa', 'cocaine', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(624, 'steam:110000107b574aa', 'hamburger', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(625, 'steam:110000107b574aa', 'WEAPON_HATCHET', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(626, 'steam:110000107b574aa', 'pacificidcard', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(627, 'steam:110000107b574aa', 'meth1g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(628, 'steam:110000107b574aa', 'camera', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(629, 'steam:110000107b574aa', 'disc_ammo_snp_large', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(630, 'steam:110000107b574aa', 'ticket', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(631, 'steam:110000107b574aa', 'pearl_necklace', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(632, 'steam:110000107b574aa', 'disc_ammo_rifle', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(633, 'steam:110000107b574aa', 'kaberna', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(634, 'steam:110000107b574aa', 'notepad\r\n', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(635, 'steam:110000107b574aa', 'methbrick', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(636, 'steam:110000107b574aa', 'blowpipe', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(637, 'steam:110000107b574aa', 'tchips', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(638, 'steam:110000107b574aa', 'bandage', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(639, 'steam:110000107b574aa', 'metreshooter', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(640, 'steam:110000107b574aa', '5ct_gold_chain', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(641, 'steam:110000107b574aa', 'WEAPON_NIGHTSTICK', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(642, 'steam:110000107b574aa', 'WEAPON_SNIPERRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(643, 'steam:110000107b574aa', 'license_drive', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(644, 'steam:110000107b574aa', 'WEAPON_FLAREGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(645, 'steam:110000107b574aa', 'WEAPON_MACHETE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(646, 'steam:110000107b574aa', 'weed_purple-haze_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(647, 'steam:110000107b574aa', '8ct_gold_chain', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(648, 'steam:110000107b574aa', 'jagercerbere', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(649, 'steam:110000107b574aa', 'WEAPON_BALL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(650, 'steam:110000107b574aa', 'WEAPON_SAWNOFFSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(651, 'steam:110000107b574aa', 'lockpick', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(652, 'steam:110000107b574aa', 'nitrous', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(653, 'steam:110000107b574aa', 'redbelt', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(654, 'steam:110000107b574aa', 'joint', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(655, 'steam:110000107b574aa', 'fishingrod', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(656, 'steam:110000107b574aa', 'vodka', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(657, 'steam:110000107b574aa', 'chocolate', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(658, 'steam:110000107b574aa', 'disc_ammo_pistol_large', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(659, 'steam:110000107b574aa', 'meth10g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(660, 'steam:110000107b574aa', 'filet_mignon', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(661, 'steam:110000107b574aa', 'firstaid', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(662, 'steam:110000107b574aa', 'WEAPON_PIPEBOMB', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(663, 'steam:110000107b574aa', 'hackerDevice', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(664, 'steam:110000107b574aa', 'casio_watch', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(665, 'steam:110000107b574aa', 'tequila', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(666, 'steam:110000107b574aa', 'cigarett', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(667, 'steam:110000107b574aa', 'viski', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(668, 'steam:110000107b574aa', 'Coffee', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(669, 'steam:110000107b574aa', 'drugItem', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(670, 'steam:110000107b574aa', 'fishtaco', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(671, 'steam:110000107b574aa', 'empty_weed_bag', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(672, 'steam:110000107b574aa', 'coke10g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(673, 'steam:110000107b574aa', 'WEAPON_GARBAGEBAG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(674, 'steam:110000107b574aa', 'WEAPON_HANDCUFFS', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(675, 'steam:110000107b574aa', 'vicodin', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(676, 'steam:110000107b574aa', 'greenbelt', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(677, 'steam:110000107b574aa', 'chips', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(678, 'steam:110000107b574aa', 'onigiri', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(679, 'steam:110000107b574aa', 'gauze', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(680, 'steam:110000107b574aa', 'bolpistache', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(681, 'steam:110000107b574aa', 'WEAPON_STINGER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(682, 'steam:110000107b574aa', 'coke1g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(683, 'steam:110000107b574aa', 'weed_skunk_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(684, 'steam:110000107b574aa', 'WEAPON_COMBATMG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(685, 'steam:110000107b574aa', 'whitebandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(686, 'steam:110000107b574aa', 'firework1', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(687, 'steam:110000107b574aa', 'weedbrick', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(688, 'steam:110000107b574aa', 'id_card', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(689, 'steam:110000107b574aa', 'disc_ammo_smg', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(690, 'steam:110000107b574aa', 'cocaine_uncut', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(691, 'steam:110000107b574aa', 'meth_raw', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(692, 'steam:110000107b574aa', 'WEAPON_HAMMER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(693, 'steam:110000107b574aa', 'cocacola', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(694, 'steam:110000107b574aa', 'disc_ammo_rifle_large', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(695, 'steam:110000107b574aa', 'WEAPON_MUSKET', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(696, 'steam:110000107b574aa', 'oxygen', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(697, 'steam:110000107b574aa', 'weed_ak47_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(698, 'steam:110000107b574aa', 'WEAPON_BULLPUPRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(699, 'steam:110000107b574aa', 'parachute', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(700, 'steam:110000107b574aa', 'WEAPON_BAT', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(701, 'steam:110000107b574aa', 'jagerbomb', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(702, 'steam:110000107b574aa', 'WEAPON_MARKSMANRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(703, 'steam:110000107b574aa', 'WEAPON_REVOLVER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(704, 'steam:110000107b574aa', 'WEAPON_POOLCUE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(705, 'steam:110000107b574aa', 'WEAPON_SPECIALCARBINE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(706, 'steam:110000107b574aa', 'whisky', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(707, 'steam:110000107b574aa', 'milk_can', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(708, 'steam:110000107b574aa', 'WEAPON_STICKYBOMB', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(709, 'steam:110000107b574aa', '10ct_gold_chain', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(710, 'steam:110000107b574aa', 'WEAPON_HEAVYSNIPER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(711, 'steam:110000107b574aa', 'tunerchip', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(712, 'steam:110000107b574aa', 'fruittartlet', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(713, 'steam:110000107b574aa', 'sushirolls', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(714, 'steam:110000107b574aa', 'cupcake', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(715, 'steam:110000107b574aa', 'WEAPON_KNIFE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(716, 'steam:110000107b574aa', 'icecoffee', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(717, 'steam:110000107b574aa', 'WEAPON_GUSENBERG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(718, 'steam:110000107b574aa', 'WEAPON_KATANA', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(719, 'steam:110000107b574aa', 'policevest', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(720, 'steam:110000107b574aa', 'WEAPON_PROXMINE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(721, 'steam:110000107b574aa', 'jusfruit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(722, 'steam:110000107b574aa', 'repairkit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(723, 'steam:110000107b574aa', 'disc_ammo_smg_large', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(724, 'steam:110000107b574aa', 'cut_money', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(725, 'steam:110000107b574aa', 'mojito', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(726, 'steam:110000107b574aa', 'apple_iphone', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(727, 'steam:110000107b574aa', 'WEAPON_DOUBLEACTION', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(728, 'steam:110000107b574aa', 'menthe', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(729, 'steam:110000107b574aa', 'vagosbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(730, 'steam:110000107b574aa', 'bloodsbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(731, 'steam:110000107b574aa', 'oxygenmask', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(732, 'steam:110000107b574aa', 'WEAPON_MARKSMANPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(733, 'steam:110000107b574aa', 'grapperaisin', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(734, 'steam:110000107b574aa', 'bobbypin', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(735, 'steam:110000107b574aa', 'policeradar', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(736, 'steam:110000107b574aa', 'blackbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(737, 'steam:110000107b574aa', 'sushiplate', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(738, 'steam:110000107b574aa', 'WEAPON_MOLOTOV', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(739, 'steam:110000107b574aa', 'gadget_parachute', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(740, 'steam:110000107b574aa', 'WEAPON_COMPACTRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(741, 'steam:110000107b574aa', 'meth_packaged', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(742, 'steam:110000107b574aa', 'usbhack', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(743, 'steam:110000107b574aa', 'WEAPON_ASSAULTRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(744, 'steam:110000107b574aa', 'WEAPON_VINTAGEPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(745, 'steam:110000107b574aa', 'hotdog', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(746, 'steam:110000107b574aa', 'WEAPON_GRENADELAUNCHER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(747, 'steam:110000107b574aa', 'keys', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(748, 'steam:110000107b574aa', 'WEAPON_SWITCHBLADE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(749, 'steam:110000107b574aa', 'cigarettbox', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(750, 'steam:110000107b574aa', 'candy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(751, 'steam:110000107b574aa', 'bleeder', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(752, 'steam:110000107b574aa', 'disc_ammo_shotgun', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(753, 'steam:110000107b574aa', 'gameboy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(754, 'steam:110000107b574aa', 'fishbait', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(755, 'steam:110000107b574aa', 'hydrocodone', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(756, 'steam:110000107b574aa', 'gold_chain', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(757, 'steam:110000107b574aa', 'champagne', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(758, 'steam:110000107b574aa', 'weed_amnesia_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(759, 'steam:110000107b574aa', 'bag', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(760, 'steam:110000107b574aa', 'cursedkatana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(761, 'steam:110000107b574aa', 'cokebrick', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(762, 'steam:110000107b574aa', 'WEAPON_CROWBAR', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(763, 'steam:110000107b574aa', 'WEAPON_HEAVYSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(764, 'steam:110000107b574aa', 'thermite', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(765, 'steam:110000107b574aa', 'beer', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(766, 'steam:110000107b574aa', 'saucisson', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(767, 'steam:110000107b574aa', 'WEAPON_GOLFCLUB', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(768, 'steam:110000107b574aa', 'medkit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(769, 'steam:110000107b574aa', 'vaultcard', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(770, 'steam:110000107b574aa', 'WEAPON_BZGAS', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(771, 'steam:110000107b574aa', 'ballasbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(772, 'steam:110000107b574aa', 'vest', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(773, 'steam:110000107b574aa', 'icetea', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(774, 'steam:110000107b574aa', 'bread', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(775, 'steam:110000107b574aa', 'WEAPON_DAGGER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(776, 'steam:110000107b574aa', 'advancedlockpick', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(777, 'steam:110000107b574aa', 'WEAPON_MINIGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(778, 'steam:110000107b574aa', 'electronics', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(779, 'steam:110000107b574aa', 'morphine', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(780, 'steam:110000107b574aa', 'WEAPON_SMG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(781, 'steam:110000107b574aa', 'gazbottle', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(782, 'steam:110000107b574aa', 'radio', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(783, 'steam:110000107b574aa', 'WEAPON_RAILGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(784, 'steam:110000107b574aa', 'milk', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(785, 'steam:110000107b574aa', 'WEAPON_FIREWORK', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(786, 'steam:110000107b574aa', 'phone', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(787, 'steam:110000107b574aa', 'binoculars', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(788, 'steam:110000107b574aa', 'WEAPON_PUMPSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(789, 'steam:110000107b574aa', '556mm_ammo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(790, 'steam:110000107b574aa', 'WEAPON_DBSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(791, 'steam:110000107b574aa', '765mm_ammo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(792, 'steam:110000107b574aa', 'hqscale', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(793, 'steam:110000107b574aa', 'drugbags', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(794, 'steam:110000107b574aa', 'avrepairkit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(795, 'steam:110000107b574aa', 'bag1', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(796, 'steam:110000107b574aa', 'sorted_money', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(797, 'steam:110000107b574aa', 'bags', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(798, 'steam:110000107b574aa', 'zlom', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(799, 'steam:110000107b574aa', 'teqpaf', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(800, 'steam:110000107b574aa', 'wine', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(801, 'steam:110000107b574aa', 'license_weapon', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(802, 'steam:110000107b574aa', 'cuffs', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(803, 'steam:110000107b574aa', 'oxy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(804, 'steam:110000107b574aa', 'soda', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(805, 'steam:110000107b574aa', 'marlo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(806, 'steam:110000107b574aa', 'whiskycoca', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(807, 'steam:110000107b574aa', 'samsung_s8', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(808, 'steam:110000107b574aa', 'weed_untrimmed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(809, 'steam:110000107b574aa', 'orangebandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(810, 'steam:110000107b574aa', 'weed_packaged', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(811, 'steam:110000107b574aa', 'weed_og-kush_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(812, 'steam:110000107b574aa', 'cripsbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(813, 'steam:110000107b574aa', 'weed4g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(814, 'steam:110000107b574aa', 'blackbelt', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(815, 'steam:110000107b574aa', 'bolnoixcajou', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(816, 'steam:110000107b574aa', 'weed20g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(817, 'steam:110000107b574aa', 'samsungS10', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(818, 'steam:110000107b574aa', 'WEAPON_FLASHLIGHT', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(819, 'steam:110000107b574aa', 'ice', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(820, 'steam:110000107b574aa', 'WEAPON_BULLPUPSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(821, 'steam:110000107b574aa', 'water', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(822, 'steam:110000107b574aa', 'WEAPON_RPG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(823, 'steam:110000107b574aa', 'coffe', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(824, 'steam:110000107b574aa', 'bolchips', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(825, 'steam:110000107b574aa', 'vodkafruit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(826, 'steam:110000107b574aa', 'vodkaenergy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(827, 'steam:110000107b574aa', 'veggysalad', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(828, 'steam:110000107b574aa', 'WEAPON_ADVANCEDRIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(829, 'steam:110000107b574aa', 'turtle', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(830, 'steam:110000107b574aa', 'torta', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(831, 'steam:110000107b574aa', 'turtlebait', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(832, 'steam:110000107b574aa', 'torpedo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(833, 'steam:110000107b574aa', 'katana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(834, 'steam:110000107b574aa', 'WEAPON_ASSAULTSMG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(835, 'steam:110000107b574aa', 'WEAPON_FIREEXTINGUISHER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(836, 'steam:110000107b574aa', 'cigarette', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(837, 'steam:110000107b574aa', 'medikit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(838, 'steam:110000107b574aa', 'WEAPON_APPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(839, 'steam:110000107b574aa', 'slushy', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(840, 'steam:110000107b574aa', 'sim', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(841, 'steam:110000107b574aa', 'rolpaper', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(842, 'steam:110000107b574aa', 'shark', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(843, 'steam:110000107b574aa', 'WEAPON_COMBATPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(844, 'steam:110000107b574aa', 'screwdriver', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(845, 'steam:110000107b574aa', 'WEAPON_SNOWBALL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(846, 'steam:110000107b574aa', 'schnitzel', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(847, 'steam:110000107b574aa', 'police_stormram', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(848, 'steam:110000107b574aa', 'diamond', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(849, 'steam:110000107b574aa', 'sandwich', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(850, 'steam:110000107b574aa', 'weed_white-widow_seed', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(851, 'steam:110000107b574aa', 'WEAPON_PISTOL50', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(852, 'steam:110000107b574aa', 'fish', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(853, 'steam:110000107b574aa', 'burger', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(854, 'steam:110000107b574aa', 'rollingpaper', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(855, 'steam:110000107b574aa', 'WEAPON_SNSPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(856, 'steam:110000107b574aa', 'WEAPON_BOTTLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(857, 'steam:110000107b574aa', 'absinthe', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(858, 'steam:110000107b574aa', 'WEAPON_CARBINERIFLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(859, 'steam:110000107b574aa', 'rhumfruit', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(860, 'steam:110000107b574aa', 'rhumcoca', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(861, 'steam:110000107b574aa', 'lighter', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(862, 'steam:110000107b574aa', 'WEAPON_ASSAULTSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(863, 'steam:110000107b574aa', 'orange', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(864, 'steam:110000107b574aa', '2ct_gold_chain', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(865, 'steam:110000107b574aa', 'milkshake', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(866, 'steam:110000107b574aa', 'firework2', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(867, 'steam:110000107b574aa', 'WEAPON_AUTOSHOTGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(868, 'steam:110000107b574aa', 'WEAPON_MICROSMG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(869, 'steam:110000107b574aa', 'WEAPON_COMBATPDW', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(870, 'steam:110000107b574aa', 'whitebelt', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(871, 'steam:110000107b574aa', 'WEAPON_STUNGUN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(872, 'steam:110000107b574aa', 'WEAPON_PISTOL', 1);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(873, 'steam:110000107b574aa', 'WEAPON_HEAVYPISTOL', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(874, 'steam:110000107b574aa', '9mm_ammo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(875, 'steam:110000107b574aa', 'WEAPON_HOMINGLAUNCHER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(876, 'steam:110000107b574aa', 'sunglasses', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(877, 'steam:110000107b574aa', 'nokia_phone', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(878, 'steam:110000107b574aa', 'ring', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(879, 'steam:110000107b574aa', 'WEAPON_DIGISCANNER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(880, 'steam:110000107b574aa', 'WEAPON_MINISMG', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(881, 'steam:110000107b574aa', 'bankidcard', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(882, 'steam:110000107b574aa', 'mixapero', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(883, 'steam:110000107b574aa', 'WEAPON_WRENCH', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(884, 'steam:110000107b574aa', 'mingo', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(885, 'steam:110000107b574aa', 'gintonic', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(886, 'steam:110000107b574aa', 'WEAPON_FLARE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(887, 'steam:110000107b574aa', 'WEAPON_SMOKEGRENADE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(888, 'steam:110000107b574aa', 'disc_ammo_pistol', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(889, 'steam:110000107b574aa', 'white_pearl', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(890, 'steam:110000107b574aa', 'weed_100g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(891, 'steam:110000107b574aa', 'vodkaxred', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(892, 'steam:110000107b574aa', 'WEAPON_PETROLCAN', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(893, 'steam:110000107b574aa', 'joint2g', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(894, 'steam:110000107b574aa', 'gps', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(895, 'steam:110000107b574aa', 'WEAPON_KNUCKLE', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(896, 'steam:110000107b574aa', 'golem', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(897, 'steam:110000107b574aa', 'cocaine_cut', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(898, 'steam:110000107b574aa', 'drpepper', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(899, 'steam:110000107b574aa', 'carotool', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(900, 'steam:110000107b574aa', 'greenbandana', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(901, 'steam:110000107b574aa', 'bolcacahuetes', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(902, 'steam:110000107b574aa', 'disc_ammo_snp', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(903, 'steam:110000107b574aa', 'cocaine_packaged', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(904, 'steam:110000107b574aa', 'WEAPON_COMPACTLAUNCHER', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(905, 'steam:110000107b574aa', 'disc_ammo_shotgun_large', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(906, 'steam:110000107b574aa', 'energy', 0);
/*!40000 ALTER TABLE `user_inventory` ENABLE KEYS */;

-- Dumping structure for table evrp.user_lastcharacter
CREATE TABLE IF NOT EXISTS `user_lastcharacter` (
  `steamid` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table evrp.user_lastcharacter: ~2 rows (approximately)
/*!40000 ALTER TABLE `user_lastcharacter` DISABLE KEYS */;
INSERT INTO `user_lastcharacter` (`steamid`, `charid`) VALUES
	('steam:110000107b574aa', 4);
INSERT INTO `user_lastcharacter` (`steamid`, `charid`) VALUES
	('steam:1100001176d53c1', 1);
/*!40000 ALTER TABLE `user_lastcharacter` ENABLE KEYS */;

-- Dumping structure for table evrp.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.user_licenses: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;

-- Dumping structure for table evrp.user_mdt
CREATE TABLE IF NOT EXISTS `user_mdt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `mugshot_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.user_mdt: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_mdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_mdt` ENABLE KEYS */;

-- Dumping structure for table evrp.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `inshop` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.vehicles: ~135 rows (approximately)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('R1', '20r1', 135000, 'Yamaha ', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('720s', '720s', 310000, 'maclarenn', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Akuma', 'akuma', 15000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('AMG-GTC', 'amggtc', 157000, 'Mercedes', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Avarus', 'avarus', 24000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Baller4', 'baller4', 55000, 'suv', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Banshee', 'Banshee', 45000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Bati', 'bati', 32000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('BF400', 'bf400', 16400, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Blade', 'blade', 28000, 'muscle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Blazer', 'blazer', 5000, 'offroad', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Blazer-GT', 'blazer4', 7000, 'offroad', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Blista', 'blista', 17000, 'compacts', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Blista2', 'blista2', 10000, 'compacts', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Blista3', 'blista3', 15000, 'compacts', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('M5', 'bmci', 185000, 'bmw', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Bmx', 'bmx', 800, 'bike', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Brawler', 'brawler', 50000, 'offroad', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Brioso', 'brioso', 15500, 'compacts', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Brz-Extra-Drift', 'brzrbv3', 118000, 'sUBARO', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Btype', 'btype', 55000, 'luxury', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Carbonizzare', 'Carbonizzare', 55000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('CarbonRS', 'carbonrs', 42000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Cheburek-GT', 'Cheburek', 15000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Cheetah ', 'Cheetah ', 73000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Chimera', 'chimera', 30000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Chino', 'chino', 25000, 'muscle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Cliffhanger', 'cliffhanger', 24000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Cognoscenti', 'cognoscenti', 70000, 'luxury', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Comet-GT', 'comet3', 70000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Comet-GT-EXTRA', 'comet5', 80000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Coquette', 'coquette', 60000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Cruiser', 'cruiser', 1100, 'bike', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Cyclone', 'cyclone', 85000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Daemon', 'daemon', 16000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Defiler', 'defiler', 28000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Deviant', 'deviant', 37000, 'muscle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Diablous', 'diablous', 35000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Dominator', 'dominator', 42000, 'muscle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Double', 'double', 45000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Dubsta2', 'dubsta2', 65000, 'suv', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Mitsubishi-XR', 'eclipse', 68000, 'mitsubishi', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Civic SIR (EG6)', 'eg6', 20000, 'eg6', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Elegy', 'elegy', 70000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Elegy-GT', 'elegy2', 55000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Esskey', 'esskey', 17000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Exc-250', 'excf250', 25000, 'KTM', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('F620', 'f620', 32000, 'compacts', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Faction3', 'faction3', 40000, 'muscle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Faggio', 'faggio', 4000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Fcr', 'fcr', 21000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Fixter', 'fixter', 1050, 'bike', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Flashgt', 'flashgt', 26000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('futo', 'futo', 13000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('MT-07', 'fz07', 62000, 'Yamaha ', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('G-65 ', 'g65amg', 200000, 'Mercedes', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('911', 'gt2rsmr', 230000, 'porsche', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('GTR', 'gtr', 220000, 'nISSAN', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('H2', 'h2carb', 175000, 'kawasaki', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Hakuchou2', 'hakuchou2', 39000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Hermes ', 'hermes', 32000, 'muscle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Hotring', 'hotring', 70000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Issi2', 'issi2', 17000, 'compacts', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Issi3', 'issi3', 14000, 'compacts', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Itali-GT', 'italigto', 70000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Jester3', 'jester3', 36000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Kuruma', 'kuruma', 50000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('aventador', 'lp700', 350000, 'Lamborghin', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Lamborghin', 'lp700r', 358000, 'Lamborghin', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Manchez', 'manchez', 14000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Mesa', 'mesa', 40000, 'suv', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Mesa3', 'mesa3', 45000, 'offroad', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Michelli ', 'Michelli ', 17000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Monroe', 'Monroe', 36000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Moonbeam2', 'moonbeam2', 45000, 'vans', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('MT-03', 'mt25', 34000, 'Yamaha ', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Mazda-3', 'mz3c', 55000, 'MAZDA', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Neon', 'neon', 107000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Night-shade', 'nightshade', 32000, 'muscle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Omnis', 'omnis', 30000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Outlaw', 'outlaw', 28000, 'offroad', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Panto', 'panto', 7000, 'compacts', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Pigalle', 'Pigalle', 24000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Polo', 'polo2018', 62000, 'gOLF', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Audi-R8', 'r820', 223000, 'aUDI', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('RC', 'rc', 31000, 'KTM', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Reaper-GT', 'reaper', 100000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Retinue', 'retinue', 18000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Rhapsody', 'Rhapsody', 13500, 'compacts', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('M3', 'rm3e36', 102000, 'bmw', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('GT-63', 'rmodgt63', 250000, 'Mercedes', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('M4', 'rmodm4', 140000, 'bmw', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('i8', 'rmodmi8lb', 230000, 'bmw', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Mustang', 'rmodmustang', 197000, 'fORD', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('X6', 'rmodx6', 165000, 'bmw', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Rs3', 'rs318', 120000, 'aUDI', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('RS-5', 'rs5r', 140000, 'aUDI', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Ruiner ', 'ruiner ', 26000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Ruston', 'ruston', 38000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Rx-7', 'rx7cwest', 122000, 'drift', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('1000RR', 's1000rr', 150000, 'bmw-Motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Sanchez', 'sanchez', 13000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Sanchez', 'sanchez2', 16000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Schlagen', 'schlagen', 60000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Sentinel3', 'sentinel3', 50000, 'compacts', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Seven70', 'seven70', 45000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Silvia-S15', 'silvias15', 75000, 'drift', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Skyline', 'skyline', 145000, 'nISSAN', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Specter', 'specter2', 52000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Speedo4', 'speedo4', 33000, 'vans', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Stinger', 'stinger', 42000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('WRX', 'subwrx', 67000, 'sUBARO', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Sultan', 'sultan', 62000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Sultan-RS', 'sultanrs', 85000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Skoda-Superb', 'superb', 110000, 'luxury', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Supra', 'supra2', 165000, 'toyota', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Tampa', 'Tampa', 40000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Tampa-GT', 'Tampa2', 60000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Tmax-Dx', 'tmaxDX', 63000, 'Yamaha ', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Toros', 'toros', 75000, 'suv', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Tribike', 'tribike', 1250, 'bike', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Tropos-GT', 'Tropos ', 42000, 'sport', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Volester', 'veln', 63000, 'hyundai', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('VooDoo', 'voodoo', 30000, 'muscle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Vortex', 'vortex', 18000, 'motorcycle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Windsor', 'windsor', 60000, 'luxury', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Windsor-GT', 'windsor2', 65000, 'luxury', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Xls', 'xls', 60000, 'suv', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Xmax-300', 'xmax', 35000, 'Yamaha ', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Yosemite', 'yosemite', 26000, 'muscle', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('R-125', 'yzfr125', 35000, 'Yamaha ', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('R6', 'yzfr6', 65000, 'Yamaha ', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Super-Moto', 'yzfsm', 27000, 'Yamaha ', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Camaro', 'zl12017', 210000, 'sHEVROLET', 1);
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('Ninja', 'zx10r', 65000, 'kawasaki', 1);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- Dumping structure for table evrp.vehicles_display
CREATE TABLE IF NOT EXISTS `vehicles_display` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `profit` int(11) NOT NULL DEFAULT '10',
  `price` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.vehicles_display: ~6 rows (approximately)
/*!40000 ALTER TABLE `vehicles_display` DISABLE KEYS */;
INSERT INTO `vehicles_display` (`ID`, `name`, `model`, `profit`, `price`) VALUES
	(1, 'Mazda-RX7-SuperDrift', 'rx7cwest', 0, 120000);
INSERT INTO `vehicles_display` (`ID`, `name`, `model`, `profit`, `price`) VALUES
	(2, 'Skoda-Superb', 'superb', 0, 110000);
INSERT INTO `vehicles_display` (`ID`, `name`, `model`, `profit`, `price`) VALUES
	(3, 'Brz-Extra-Drift', 'brzrbv3', 0, 118000);
INSERT INTO `vehicles_display` (`ID`, `name`, `model`, `profit`, `price`) VALUES
	(4, 'Yamaha-Xmax', 'xmax', 0, 35000);
INSERT INTO `vehicles_display` (`ID`, `name`, `model`, `profit`, `price`) VALUES
	(5, 'Kawasaki-H2', 'h2carb', 0, 175000);
INSERT INTO `vehicles_display` (`ID`, `name`, `model`, `profit`, `price`) VALUES
	(6, 'Bmw-1000RR', 's1000rr', 0, 150000);
/*!40000 ALTER TABLE `vehicles_display` ENABLE KEYS */;

-- Dumping structure for table evrp.vehicle_categories
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.vehicle_categories: ~29 rows (approximately)
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('aUDI', 'Audi');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('bike', 'Bike');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('bmw', 'Bmw');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('bmw-Motorcycle', 'Bmw Motorcycles');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('compacts', 'Compacts');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('drift', 'Drift');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('fORD', 'Ford');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('gOLF', 'Golf');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('hyundai', 'Hyundai');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('kawasaki', 'Kawasaki');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('KTM', 'Ktm Motorcycles');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('Lamborghin', 'Lamborghini');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('luxury', 'Luxury');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('maclarenn', 'Maclaren');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('MAZDA', 'Mazda');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('Mercedes', 'Mercedes Benz');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('mitsubishi', 'Mitsubishi');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('motorcycle', 'Motorcycles');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('muscle', 'Muscle');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('nISSAN', 'Nissan');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('offroad', 'Off Road');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('porsche', 'Porsche');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('sHEVROLET', 'Chevrolet');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('sport', 'Sport');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('sUBARO', 'Subaro');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('suv', 'SUV');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('toyota', 'Toyota');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('vans', 'Vans');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('Yamaha ', 'Yamaha Motorcycle');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;

-- Dumping structure for table evrp.vehicle_sold
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table evrp.vehicle_sold: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;

-- Dumping structure for table evrp.yellow_tweets
CREATE TABLE IF NOT EXISTS `yellow_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table evrp.yellow_tweets: ~0 rows (approximately)
/*!40000 ALTER TABLE `yellow_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `yellow_tweets` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
bb