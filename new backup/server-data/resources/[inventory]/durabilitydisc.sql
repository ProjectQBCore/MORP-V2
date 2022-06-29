-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.5.5-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- essentialmode için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `essentialmode` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `essentialmode`;

-- tablo yapısı dökülüyor essentialmode.disc_inventory
CREATE TABLE IF NOT EXISTS `disc_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` text NOT NULL,
  `type` text DEFAULT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8mb4;

-- essentialmode.disc_inventory: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `disc_inventory` DISABLE KEYS */;
INSERT IGNORE INTO `disc_inventory` (`id`, `owner`, `type`, `data`) VALUES
	(357, 'steam:11000013f544bf0', 'player', '{"1":{"count":99046520,"quality":100,"name":"cash","serie":"123781784"}}'),
	(360, 'steam:1100001370297a8', 'player', '{"5":{"serie":"123714794","name":"WEAPON_PISTOL","quality":100,"count":1},"2":{"serie":"123964212","name":"lockpick","quality":100,"count":1},"1":{"serie":"123796890","name":"WEAPON_COMBATPISTOL","quality":100,"count":1},"4":{"serie":"123968661","name":"cash","quality":100,"count":16000},"3":{"serie":"123650112","name":"bulletsample","quality":100,"count":1}}');
/*!40000 ALTER TABLE `disc_inventory` ENABLE KEYS */;

-- tablo yapısı dökülüyor essentialmode.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1,
  `weight` float NOT NULL DEFAULT 0.1,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) NOT NULL DEFAULT 0,
  `max` int(11) NOT NULL DEFAULT 1000,
  `closeonuse` tinyint(4) NOT NULL DEFAULT 1,
  `durability` int(6) NOT NULL DEFAULT 100,
  `serie` varchar(50) NOT NULL DEFAULT '123',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2507 DEFAULT CHARSET=utf8mb4;

-- essentialmode.items: ~378 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT IGNORE INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`, `id`, `price`, `max`, `closeonuse`, `durability`, `serie`) VALUES
	('bread', 'Ekmek', 5, 0, 1, 0.1, 1, 4, 1000, 1, 100, '123'),
	('water', 'Su', 5, 0, 1, 0.1, 2, 2, 1000, 1, 100, '123'),
	('jewels', 'Mücevherler', -1, 0, 1, 0, 3, 0, 1000, 1, 100, '123'),
	('armor', 'Normal Çelik Yelek', 2, 0, 1, 1, 4, 4000, 1000, 1, 100, '123'),
	('lighter', 'Çakmak', 2, 0, 1, 0.1, 5, 3, 1000, 1, 100, '123'),
	('cigarett', 'Sigara', 20, 0, 1, 0.1, 6, 2, 1000, 1, 100, '123'),
	('c4_bank', 'C4', 1, 0, 1, 0.6, 7, 20000, 1000, 1, 100, '123'),
	('blowtorch', 'Kaynak makinesi', 1, 0, 1, 0.6, 8, 2000, 1000, 1, 100, '123'),
	('keycard', 'Keycard', -1, 0, 1, 0.2, 9, 4000, 1000, 1, 100, '123'),
	('raspberry', 'Raspberry', 20, 0, 1, 0.2, 10, 5000, 1000, 1, 100, '123'),
	('beer', 'Bira', 20, 0, 1, 0.1, 11, 25, 1000, 1, 100, '123'),
	('vodka', 'Vodka', 20, 0, 1, 0.1, 12, 50, 1000, 1, 100, '123'),
	('tequila', 'Tekila', 20, 0, 1, 0.1, 13, 75, 1000, 1, 100, '123'),
	('whiskey', 'Viski', 20, 0, 1, 0.1, 14, 45, 1000, 1, 100, '123'),
	('medikit', 'İlk Yardım Çantası', 20, 0, 1, 0.3, 15, 0, 1000, 1, 100, '123'),
	('bandage', 'Bandaj', 20, 0, 1, 0.1, 16, 0, 1000, 1, 100, '123'),
	('painkiller', 'Ağrıkesici', 10, 0, 1, 0.2, 17, 0, 1000, 1, 100, '123'),
	('pcp', 'PCP', 25, 0, 1, 1, 18, 500, 1000, 1, 100, '123'),
	('breathalyzer', 'Alkol Ölçer', 5, 0, 1, 0.2, 19, 500, 1000, 1, 100, '123'),
	('fakepee', 'Sahte Çiş', 5, 0, 1, 0.1, 20, 500, 1000, 1, 100, '123'),
	('drugtest', 'Uyuşturucu Testi', 5, 0, 1, 0.1, 21, 500, 1000, 1, 100, '123'),
	('dabs', 'Dabs', 20, 0, 1, 1, 22, 0, 1000, 1, 100, '123'),
	('cocaine', 'Kokoin', 20, 0, 1, 0.4, 29, 0, 1000, 1, 100, '123'),
	('coca', 'Koko', 20, 0, 1, 0.4, 30, 0, 1000, 1, 100, '123'),
	('radio', 'Telsiz', 2, 0, 1, 0.2, 35, 500, 1000, 1, 100, '123'),
	('alive_chicken', 'Canlı Tavuk', 50, 0, 1, 0.1, 36, 0, 1000, 1, 100, '123'),
	('slaughtered_chicken', 'Kesilmiş Tavuk', 50, 0, 1, 0.1, 37, 0, 1000, 1, 100, '123'),
	('packaged_chicken', 'Paketlenmiş Tavuk', 50, 0, 1, 0.1, 38, 0, 1000, 1, 100, '123'),
	('fish', 'Balık', 50, 0, 1, 0.1, 39, 0, 1000, 1, 100, '123'),
	('stone', 'Taş', 7, 0, 1, 0.1, 40, 0, 1000, 1, 100, '123'),
	('washed_stone', 'Yıkanmış Taş', 7, 0, 1, 0.1, 41, 0, 1000, 1, 100, '123'),
	('copper', 'Bakır', 20, 0, 1, 0.1, 42, 0, 1000, 1, 100, '123'),
	('iron', 'Demir', 20, 0, 1, 0.1, 43, 0, 1000, 1, 100, '123'),
	('gold', 'Altın', 20, 0, 1, 0.1, 44, 0, 1000, 1, 100, '123'),
	('diamond', 'Elmas', 20, 0, 1, 0.1, 45, 0, 1000, 1, 100, '123'),
	('wood', 'Odun', 20, 0, 1, 0.1, 46, 0, 1000, 1, 100, '123'),
	('cutted_wood', 'Kesilmiş Odun', 20, 0, 1, 0.1, 47, 0, 1000, 1, 100, '123'),
	('packaged_plank', 'Paketlenmiş Odun', 20, 0, 1, 0.1, 48, 0, 1000, 1, 100, '123'),
	('petrol', 'Petrol', 24, 0, 1, 0.1, 49, 0, 1000, 1, 100, '123'),
	('petrol_raffin', 'İşlenmiş Petrol', 24, 0, 1, 0.1, 50, 0, 1000, 1, 100, '123'),
	('essence', 'Gaz', 24, 0, 1, 0.1, 51, 0, 1000, 1, 100, '123'),
	('wool', 'Yün', 40, 0, 1, 0.25, 52, 0, 1000, 1, 100, '123'),
	('fabric', 'Kumaş', 40, 0, 1, 0.12, 53, 0, 1000, 1, 100, '123'),
	('clothe', 'Kıyafet', 40, 0, 1, 0.25, 54, 0, 1000, 1, 100, '123'),
	('battery', 'Araç Bataryası', 2, 0, 1, 0.1, 55, 0, 1000, 1, 100, '123'),
	('lowradio', 'Bağlantı Kabloları', 5, 0, 1, 0.1, 56, 0, 1000, 1, 100, '123'),
	('stockrim', 'Jant Kapakları', 4, 0, 1, 0.2, 57, 0, 1000, 1, 100, '123'),
	('airbag', 'Airbag', 7, 0, 1, 0.2, 58, 0, 1000, 1, 100, '123'),
	('highradio', 'Araç Radyosu', 5, 0, 1, 0.2, 59, 0, 1000, 1, 100, '123'),
	('highrim', 'Kaliteli Jant Kapağı', 4, 0, 1, 0.2, 60, 0, 1000, 1, 100, '123'),
	('kacaksigara', 'Kaçak Sıgara', 10, 0, 1, 0.1, 61, 1000, 1000, 1, 100, '123'),
	('bodycam', 'Bodycam', 5, 0, 1, 0, 63, 100, 1000, 1, 100, '123'),
	('lightarmor', 'Hafif Çelik Yelek', 2, 0, 1, 0.5, 64, 2500, 1000, 1, 100, '123'),
	('heavyarmor', 'Ağır Çelik Yelek', 2, 0, 1, 1, 65, 5000, 1000, 1, 100, '123'),
	('gym_membership', 'Üyelik Kartı', 1, 0, 1, 0.1, 66, 250, 1000, 1, 100, '123'),
	('powerade', 'Powerade', 5, 0, 1, 0.1, 67, 20, 1000, 1, 100, '123'),
	('sportlunch', 'Sporcu Yemeği', 5, 0, 1, 0.1, 68, 20, 1000, 1, 100, '123'),
	('protein_shake', 'Protein Karışımı', 5, 0, 1, 0.1, 69, 10, 1000, 1, 100, '123'),
	('gazbottle', 'Gaz Şişesi', 11, 0, 1, 0.1, 70, 500, 1000, 1, 100, '123'),
	('carotool', 'Aletler', 4, 0, 1, 0.2, 72, 500, 1000, 1, 100, '123'),
	('blowpipe', 'Lehim Makinesi', 10, 0, 1, 0.5, 73, 500, 1000, 1, 100, '123'),
	('fixkit', 'Tamir kiti', 5, 0, 1, 0.1, 74, 90, 1000, 1, 100, '123'),
	('carokit', 'Gövde Kiti', 3, 0, 1, 0.1, 75, 500, 1000, 1, 100, '123'),
	('hamburger', 'Hamburger', 5, 0, 1, 0.1, 76, 7, 1000, 1, 100, '123'),
	('redgull', 'Redbull', 5, 0, 1, 0.1, 77, 6, 1000, 1, 100, '123'),
	('fries', 'Patates Kızartması', 5, 0, 1, 0.1, 78, 10, 1000, 1, 100, '123'),
	('coffee', 'Kahve', 5, 0, 1, 0.1, 79, 7, 1000, 1, 100, '123'),
	('donut', 'Donut', 5, 0, 1, 0.1, 80, 5, 1000, 1, 100, '123'),
	('silencieux', 'Susturucu', -1, 0, 1, 0.3, 118, 7500, 1000, 1, 100, '123'),
	('flashlight', 'Fener', -1, 0, 1, 0.2, 119, 500, 1000, 1, 100, '123'),
	('grip', 'Kabza', -1, 0, 1, 0.1, 120, 750, 1000, 1, 100, '123'),
	('yusuf', 'Skin', -1, 0, 1, 0.1, 121, 200, 1000, 1, 100, '123'),
	('scope', 'Scope', -1, 0, 1, 0.3, 122, 1500, 1000, 1, 100, '123'),
	('extended', 'Uzatılmış Şarjör', 1, 0, 1, 0.2, 123, 3500, 1000, 1, 100, '123'),
	('gps', 'GPS', 2, 0, 1, 0, 124, 500, 1000, 1, 100, '123'),
	('policetablet', 'Polis Tableti', 5, 0, 1, 0.1, 125, 500, 1000, 1, 100, '123'),
	('WEAPON_ADVANCEDRIFLE', 'Advanced Rifle', -1, 0, 1, 3.25, 126, 0, 1000, 1, 100, '123'),
	('WEAPON_APPISTOL', 'AP Pistol', -1, 0, 1, 1.5, 127, 0, 1000, 1, 100, '123'),
	('WEAPON_ASSAULTRIFLE', 'Ak-47', -1, 0, 1, 3.25, 128, 0, 1000, 1, 100, '123'),
	('WEAPON_ASSAULTSHOTGUN', 'Assault Shotgun', -1, 0, 1, 2.25, 129, 0, 1000, 1, 100, '123'),
	('WEAPON_ASSAULTSMG', 'Assault SMG', -1, 0, 1, 2.5, 130, 0, 1000, 1, 100, '123'),
	('WEAPON_AUTOSHOTGUN', 'Otomatik Pompalı', -1, 0, 1, 2.5, 131, 0, 1000, 1, 100, '123'),
	('WEAPON_BALL', 'Ball', -1, 0, 1, 0.5, 132, 0, 1000, 1, 100, '123'),
	('WEAPON_BAT', 'Sopa', -1, 0, 1, 0.7, 133, 0, 1000, 1, 100, '123'),
	('WEAPON_BATTLEAXE', 'Savaş Baltası', -1, 0, 1, 1.2, 134, 0, 1000, 1, 100, '123'),
	('WEAPON_BOTTLE', 'Şişe', -1, 0, 1, 0.5, 135, 0, 1000, 1, 100, '123'),
	('WEAPON_BULLPUPRIFLE', 'Bullpup Rifle', -1, 0, 1, 2.5, 136, 0, 1000, 1, 100, '123'),
	('WEAPON_BULLPUPSHOTGUN', 'Pompalı', -1, 0, 1, 2, 137, 0, 1000, 1, 100, '123'),
	('WEAPON_BZGAS', 'Sis Bombası', -1, 0, 1, 1, 138, 0, 1000, 1, 100, '123'),
	('WEAPON_CARBINERIFLE', 'Carbine Rifle', -1, 0, 1, 3.25, 139, 0, 1000, 1, 100, '123'),
	('WEAPON_COMBATMG', 'Combat MG', -1, 0, 1, 2.75, 140, 0, 1000, 1, 100, '123'),
	('WEAPON_COMBATPDW', 'Combat PDW', -1, 0, 1, 2.75, 141, 0, 1000, 1, 100, '123'),
	('WEAPON_COMBATPISTOL', 'Glock 17', -1, 0, 1, 1.25, 142, 0, 1000, 1, 100, '123'),
	('WEAPON_COMPACTLAUNCHER', 'Compact Launcher', -1, 0, 1, 5, 143, 0, 1000, 1, 100, '123'),
	('WEAPON_COMPACTRIFLE', 'Compact Rifle', -1, 0, 1, 3.25, 144, 0, 1000, 1, 100, '123'),
	('WEAPON_CROWBAR', 'Crowbar', -1, 0, 1, 3, 145, 0, 1000, 1, 100, '123'),
	('WEAPON_DAGGER', 'Dagger', -1, 0, 1, 0.7, 146, 0, 1000, 1, 100, '123'),
	('WEAPON_DBSHOTGUN', 'Double Barrel Shotgun', -1, 0, 1, 2.5, 147, 0, 1000, 1, 100, '123'),
	('WEAPON_DIGISCANNER', 'Digiscanner', -1, 0, 1, 1, 148, 0, 1000, 1, 100, '123'),
	('WEAPON_DOUBLEACTION', 'Double Action Revolver', -1, 0, 1, 1.75, 149, 0, 1000, 1, 100, '123'),
	('WEAPON_FIREEXTINGUISHER', 'Yangın Söndürücü', -1, 0, 1, 1.5, 150, 0, 1000, 1, 100, '123'),
	('WEAPON_FIREWORK', 'Havai Fişek Fırlatıcı', -1, 0, 1, 2, 151, 0, 1000, 1, 100, '123'),
	('WEAPON_FLARE', 'İşaret Fişeği', -1, 0, 1, 1, 152, 0, 1000, 1, 100, '123'),
	('WEAPON_FLAREGUN', 'İşaret Fişeği Tabancası', -1, 0, 1, 1, 153, 0, 1000, 1, 100, '123'),
	('WEAPON_FLASHLIGHT', 'El Feneri', -1, 0, 1, 0.4, 154, 0, 1000, 1, 100, '123'),
	('WEAPON_GARBAGEBAG', 'Çöp Torbası', -1, 0, 1, 0.4, 155, 0, 1000, 1, 100, '123'),
	('WEAPON_GOLFCLUB', 'Golf Sopası', -1, 0, 1, 0.7, 156, 0, 1000, 1, 100, '123'),
	('WEAPON_GRENADE', 'El Bombası', -1, 0, 1, 1, 157, 0, 1000, 1, 100, '123'),
	('WEAPON_GRENADELAUNCHER', 'Bomba Fırlatıcı', -1, 0, 1, 3.25, 158, 0, 1000, 1, 100, '123'),
	('WEAPON_GUSENBERG', 'Gusenberg', -1, 0, 1, 1, 159, 0, 1000, 1, 100, '123'),
	('WEAPON_HAMMER', 'Çekiç', -1, 0, 1, 0.5, 160, 0, 1000, 1, 100, '123'),
	('WEAPON_HANDCUFFS', 'Kelepçe', -1, 0, 1, 0.3, 161, 0, 1000, 1, 100, '123'),
	('WEAPON_HATCHET', 'Balta', -1, 0, 1, 1.2, 162, 0, 1000, 1, 100, '123'),
	('WEAPON_HEAVYPISTOL', 'Ağır Pistol', -1, 0, 1, 1.6, 163, 0, 1000, 1, 100, '123'),
	('WEAPON_HEAVYSHOTGUN', 'Ağır Pompalı', -1, 0, 1, 2.9, 164, 0, 1000, 1, 100, '123'),
	('WEAPON_HEAVYSNIPER', 'Ağır Sniper', -1, 0, 1, 4.5, 165, 0, 1000, 1, 100, '123'),
	('WEAPON_HOMINGLAUNCHER', 'Homing Launcher', -1, 0, 1, 1, 166, 0, 1000, 1, 100, '123'),
	('WEAPON_KNIFE', 'Bıçak', -1, 0, 1, 0.4, 167, 0, 1000, 1, 100, '123'),
	('WEAPON_KNUCKLE', 'Muşta', -1, 0, 1, 0.4, 168, 0, 1000, 1, 100, '123'),
	('WEAPON_MACHETE', 'Ekmek Bıçağı', -1, 0, 1, 0.3, 169, 0, 1000, 1, 100, '123'),
	('WEAPON_MACHINEPISTOL', 'Tec-9', -1, 0, 1, 1.25, 170, 0, 1000, 1, 100, '123'),
	('WEAPON_MARKSMANPISTOL', 'Marksman Pistol', -1, 0, 1, 1.5, 171, 0, 1000, 1, 100, '123'),
	('WEAPON_MARKSMANRIFLE', 'Marksman Rifle', -1, 0, 1, 3.4, 172, 0, 1000, 1, 100, '123'),
	('WEAPON_MG', 'MG', -1, 0, 1, 3.25, 173, 0, 1000, 1, 100, '123'),
	('WEAPON_MICROSMG', 'Micro SMG', -1, 0, 1, 1.5, 174, 0, 1000, 1, 100, '123'),
	('WEAPON_MINIGUN', 'Minigun', -1, 0, 1, 5, 175, 0, 1000, 1, 100, '123'),
	('WEAPON_MINISMG', 'Mini SMG', -1, 0, 1, 1.25, 176, 0, 1000, 1, 100, '123'),
	('WEAPON_MOLOTOV', 'Molotov', -1, 0, 1, 0.6, 177, 0, 1000, 1, 100, '123'),
	('WEAPON_MUSKET', 'Musket', -1, 0, 1, 1, 178, 0, 1000, 1, 100, '123'),
	('WEAPON_NIGHTSTICK', 'Job', -1, 0, 1, 0.5, 179, 0, 1000, 1, 100, '123'),
	('WEAPON_PETROLCAN', 'Benzin Bidonu', -1, 0, 1, 1, 180, 0, 1000, 1, 100, '123'),
	('WEAPON_PIPEBOMB', 'Pipe Bomb', -1, 0, 1, 1, 181, 0, 1000, 1, 100, '123'),
	('WEAPON_PISTOL', 'Pistol', -1, 0, 1, 1.25, 182, 0, 1000, 1, 100, '123'),
	('WEAPON_PISTOL50', 'Police .50', -1, 0, 1, 1.6, 183, 0, 1000, 1, 100, '123'),
	('WEAPON_POOLCUE', 'Pool Cue', -1, 0, 1, 1, 184, 0, 1000, 1, 100, '123'),
	('WEAPON_PROXMINE', 'Proximity Mine', -1, 0, 1, 1, 185, 0, 1000, 1, 100, '123'),
	('WEAPON_PUMPSHOTGUN', 'Pump Shotgun', -1, 0, 1, 1.9, 186, 0, 1000, 1, 100, '123'),
	('WEAPON_RAILGUN', 'Rail Gun', -1, 0, 1, 1, 187, 0, 1000, 1, 100, '123'),
	('WEAPON_REVOLVER', 'Revolver', -1, 0, 1, 2, 188, 0, 1000, 1, 100, '123'),
	('WEAPON_RPG', 'RPG', -1, 0, 1, 5, 189, 0, 1000, 1, 100, '123'),
	('WEAPON_SAWNOFFSHOTGUN', 'Av Pompalısı', -1, 0, 1, 2, 190, 0, 1000, 1, 100, '123'),
	('WEAPON_SMG', 'SMG', -1, 0, 1, 2.25, 191, 0, 1000, 1, 100, '123'),
	('WEAPON_SMOKEGRENADE', 'Smoke Grenade', -1, 0, 1, 1, 192, 0, 1000, 1, 100, '123'),
	('WEAPON_SNIPERRIFLE', 'Sniper', -1, 0, 1, 3.5, 193, 0, 1000, 1, 100, '123'),
	('WEAPON_SNOWBALL', 'Kar Topu', -1, 0, 1, 0.1, 194, 0, 1000, 1, 100, '123'),
	('WEAPON_SNSPISTOL', 'SNS Pistol', -1, 0, 1, 1, 195, 0, 1000, 1, 100, '123'),
	('WEAPON_SPECIALCARBINE', 'Special Rifle', -1, 0, 1, 3.25, 196, 0, 1000, 1, 100, '123'),
	('WEAPON_STICKYBOMB', 'Yapışkan Bomba', -1, 0, 1, 1, 197, 0, 1000, 1, 100, '123'),
	('WEAPON_STINGER', 'Stinger', -1, 0, 1, 1, 198, 0, 1000, 1, 100, '123'),
	('WEAPON_STUNGUN', 'Taser', -1, 0, 1, 1, 199, 0, 1000, 1, 100, '123'),
	('WEAPON_SWITCHBLADE', 'Kelebek', -1, 0, 1, 0.4, 200, 0, 1000, 1, 100, '123'),
	('WEAPON_VINTAGEPISTOL', 'Vintage Pistol', -1, 0, 1, 1.25, 201, 0, 1000, 1, 100, '123'),
	('WEAPON_WRENCH', 'İngiliz Anahtarı', -1, 0, 1, 1, 202, 0, 1000, 1, 100, '123'),
	('9mm_ammo', '9mm Mermi', -1, 0, 1, 0.5, 203, 0, 1000, 1, 100, '123'),
	('9mm_ammo_large', '9mm Mermi Kutusu', -1, 0, 1, 1, 204, 0, 1000, 1, 100, '123'),
	('556_ammo', '5.56 Mermi', -1, 0, 1, 0.5, 205, 0, 1000, 1, 100, '123'),
	('556_ammo_large', '5.56 Mermi Kutusu', -1, 0, 1, 1, 206, 0, 1000, 1, 100, '123'),
	('12cal_ammo', '12cal Mermi', -1, 0, 1, 0.5, 207, 0, 1000, 1, 100, '123'),
	('12cal_ammo_large', '12cal Mermi Kutusu', -1, 0, 1, 1, 208, 0, 1000, 1, 100, '123'),
	('762_ammo', '7.62 Mermi', -1, 0, 1, 0.5, 211, 0, 1000, 1, 100, '123'),
	('762_ammo_large', '7.62 Mermi Kutusu', -1, 0, 1, 1, 212, 0, 1000, 1, 100, '123'),
	('torchizm_lockpick', 'Maymunc', 10, 0, 1, 0.1, 225, 1500, 1000, 1, 100, '123'),
	('binoculars', 'Dürbün', 5, 0, 1, 0.4, 226, 0, 1000, 1, 100, '123'),
	('oxygen_mask', 'Oksijen Maskesi', 2, 0, 1, 1, 227, 0, 1000, 1, 100, '123'),
	('handcuffs', 'Kelepçe', 10, 0, 1, 0.1, 228, 0, 1000, 1, 100, '123'),
	('handcuffsKey', 'Kelepçe Anahtarı', 10, 0, 1, 0.1, 229, 0, 1000, 1, 100, '123'),
	('radiotransmitter', 'CCTV Izleyici', 5, 0, 1, 0.1, 230, 0, 1000, 1, 100, '123'),
	('lockpick', 'Maymuncuk', 10, 0, 1, 0.1, 2055, 1500, 1000, 1, 100, '123'),
	('gazbottle', 'Gaz Şişesi', 11, 0, 1, 0.1, 2056, 0, 1000, 1, 100, '123'),
	('carotool', 'Tamir Kiti', 4, 0, 1, 0.1, 2058, 0, 1000, 1, 100, '123'),
	('blowpipe', 'Chalumeaux', 10, 0, 1, 0.1, 2059, 0, 1000, 1, 100, '123'),
	('fixkit', 'Tamir Kiti', 5, 0, 1, 0.1, 2060, 0, 1000, 1, 100, '123'),
	('carokit', 'Kit carosserie', 3, 0, 1, 0.1, 2061, 0, 1000, 1, 100, '123'),
	('fish', 'Balık', 100, 0, 1, 0.1, 2062, 0, 1000, 1, 100, '123'),
	('fishbait', 'Balık Yemi', 30, 0, 1, 0.1, 2063, 0, 1000, 1, 100, '123'),
	('fishingrod', 'Olta', 2, 0, 1, 1, 2064, 0, 1000, 1, 100, '123'),
	('shark', 'Shark', -1, 0, 1, 1, 2065, 0, 1000, 1, 100, '123'),
	('turtle', 'Sea Turtle', 3, 0, 1, 4, 2066, 0, 1000, 1, 100, '123'),
	('turtlebait', 'Turtle Bait', 10, 0, 1, 1, 2067, 0, 1000, 1, 100, '123'),
	('armor', 'Çelik Yelek', 2, 0, 1, 1, 2068, 0, 1000, 1, 100, '123'),
	('carlcuzdan', 'Carl\'ın Kayıp Not Defteri', 1, 0, 1, 1, 2069, 1, 1000, 1, 100, '123'),
	('coke_pooch', 'Bag of coke', -1, 0, 1, 1, 2186, 0, 1000, 1, 100, '123'),
	('ring', 'Ring', -1, 0, 1, 1, 2187, 0, 1000, 1, 100, '123'),
	('goldNecklace', 'Gold Necklace', -1, 0, 1, 1, 2188, 0, 1000, 1, 100, '123'),
	('laptop', 'Laptop', -1, 0, 1, 1, 2189, 0, 1000, 1, 100, '123'),
	('weed_pooch', 'Bag of weed', -1, 0, 1, 1, 2190, 0, 1000, 1, 100, '123'),
	('samsungS10', 'Samsung S10', -1, 0, 1, 1, 2191, 0, 1000, 1, 100, '123'),
	('rolex', 'Rolex', -1, 0, 1, 1, 2192, 0, 1000, 1, 100, '123'),
	('camera', 'Camera', -1, 0, 1, 1, 2193, 0, 1000, 1, 100, '123'),
	('phone', 'Telefon', -1, 0, 1, 0.5, 2266, 200, 1000, 1, 100, '123'),
	('seed_weed', 'Tohum', 10000, 0, 1, 0.1, 2288, 0, 1000, 1, 100, '123'),
	('weed', 'Kaçak Sigara', 100000, 0, 1, 0.1, 2289, 0, 1000, 1, 100, '123'),
	('weed1', 'Kaçak Sigara', 1000000, 0, 1, 0.4, 2290, 0, 1000, 1, 100, '123'),
	('weed2', 'Kaliteli Kaçak Sigara', 10000, 0, 1, 0.6, 2291, 0, 1000, 1, 100, '123'),
	('crown', 'Crown', 10000, 0, 1, 0.4, 2292, 0, 1000, 1, 100, '123'),
	('acetone', 'Aseton', 5, 0, 1, 0.2, 2293, 0, 1000, 1, 100, '123'),
	('methlab', 'Taşınabilir Methlab', 1, 0, 1, 1, 2294, 0, 1000, 1, 100, '123'),
	('meth', 'Met', 30, 0, 1, 0.1, 2295, 0, 1000, 1, 100, '123'),
	('lithium', 'Lityum Batarya', 10, 0, 1, 0.2, 2296, 0, 1000, 1, 100, '123'),
	('chips', 'Cips', 5, 0, 1, 0.1, 2297, 4, 1000, 1, 100, '123'),
	('sandwich', 'Sandwich', 5, 0, 1, 0.1, 2298, 4, 1000, 1, 100, '123'),
	('chocolate', 'Çikolata', 5, 0, 1, 0.1, 2299, 4, 1000, 1, 100, '123'),
	('cocacola', 'Coca-Cola', 5, 0, 1, 0.1, 2300, 4, 1000, 1, 100, '123'),
	('fanta', 'Fanta', 5, 0, 1, 0.1, 2301, 4, 1000, 1, 100, '123'),
	('sprite', 'Sprite', 5, 0, 1, 0.1, 2302, 4, 1000, 1, 100, '123'),
	('coffe', 'Kahve', 5, 0, 1, 0.1, 2303, 4, 1000, 1, 100, '123'),
	('icetea', 'Ice-Tea', 5, 0, 1, 0.1, 2304, 4, 1000, 1, 100, '123'),
	('milk', 'Süt', 5, 0, 1, 0.1, 2305, 4, 1000, 1, 100, '123'),
	('cupcake', 'Cupkek', 5, 0, 1, 0.1, 2306, 4, 1000, 1, 100, '123'),
	('champagne', 'Şampanya', 20, 0, 1, 0.1, 2307, 25, 1000, 1, 100, '123'),
	('gintonic', 'Cintonik', 20, 0, 1, 0.1, 2308, 25, 1000, 1, 100, '123'),
	('pizza', 'Pizza', -1, 0, 1, 0.1, 2309, 0, 1000, 1, 100, '123'),
	('orage', 'Portakal', 50, 0, 1, 1, 2310, 0, 1000, 1, 100, '123'),
	('juice_orage', 'Portakal Suyu', 10, 0, 1, 1, 2311, 0, 1000, 1, 100, '123'),
	('sheet', 'Çarşaf', -1, 0, 1, 0.1, 2312, 0, 1000, 1, 100, '123'),
	('bottle', 'Şişe', -1, 0, 1, 0.1, 2313, 0, 1000, 1, 100, '123'),
	('alcohol', 'Saf Alkol', -1, 0, 1, 0.1, 2314, 0, 1000, 1, 100, '123'),
	('pill', 'Hap', -1, 0, 1, 0.1, 2315, 0, 1000, 1, 100, '123'),
	('merhem', 'Merhem', -1, 0, 1, 0.1, 2316, 0, 1000, 1, 100, '123'),
	('Enerji İçeceği', 'redbull', -1, 0, 1, 0.1, 2317, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2318, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2319, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.2, 2320, 0, 1000, 1, 100, '123'),
	('weed_pooch', 'Paketlenmiş Ot', -1, 0, 1, 0.1, 2322, 0, 1000, 1, 100, '123'),
	('coke', 'Kokoin', -1, 0, 1, 0.1, 2323, 0, 1000, 1, 100, '123'),
	('opium', 'Afyon', -1, 0, 1, 0.1, 2327, 0, 1000, 1, 100, '123'),
	('opium_pooch', 'İşlenmiş Afyon', -1, 0, 1, 0.1, 2328, 0, 1000, 1, 100, '123'),
	('cannabis', 'Kenevir', 50, 0, 1, 0.3, 2331, 0, 1000, 1, 100, '123'),
	('marijuana', 'Kaçak Sigara', 250, 0, 1, 0.3, 2332, 0, 1000, 1, 100, '123'),
	('ephedra', 'Efedra', 100, 0, 1, 0.1, 2333, 0, 1000, 1, 100, '123'),
	('ephedrine', 'Efedrin', 100, 0, 1, 0.1, 2334, 0, 1000, 1, 100, '123'),
	('poppy', 'Haşhaş', 100, 0, 1, 0.1, 2335, 0, 1000, 1, 100, '123'),
	('opium', 'Afyon', 50, 0, 1, 0.1, 2336, 0, 1000, 1, 100, '123'),
	('heroine', 'Heroine', 10, 0, 1, 0.1, 2338, 0, 1000, 1, 100, '123'),
	('crack', 'Crack', 25, 0, 1, 0.1, 2339, 0, 1000, 1, 100, '123'),
	('drugtest', 'Uyuşturucu Testi', 10, 0, 1, 0.1, 2340, 0, 1000, 1, 100, '123'),
	('breathalyzer', 'Alkol Ölçer', 10, 0, 1, 0.1, 2341, 0, 1000, 1, 100, '123'),
	('fakepee', 'Sahte Çiş', 5, 0, 1, 0.1, 2342, 0, 1000, 1, 100, '123'),
	('pcp', 'PCP', 25, 0, 1, 0.1, 2343, 0, 1000, 1, 100, '123'),
	('dabs', 'Dabs', 50, 0, 1, 0.1, 2344, 0, 1000, 1, 100, '123'),
	('painkiller', 'Ağrıkesici', 10, 0, 1, 0.1, 2345, 0, 1000, 1, 100, '123'),
	('narcan', 'Narcan', 10, 0, 1, 0.1, 2346, 0, 1000, 1, 100, '123'),
	('gazbottle', 'bouteille de gaz', 11, 0, 1, 0.1, 2347, 0, 1000, 1, 100, '123'),
	('fixtool', 'Tamir Kiti', 6, 0, 1, 0.1, 2348, 0, 1000, 1, 100, '123'),
	('carotool', 'outils carosserie', 4, 0, 1, 0.1, 2349, 0, 1000, 1, 100, '123'),
	('blowpipe', 'Chalumeaux', 10, 0, 1, 0.1, 2350, 0, 1000, 1, 100, '123'),
	('fixkit', 'Kit réparation', 5, 0, 1, 0.1, 2351, 0, 1000, 1, 100, '123'),
	('carokit', 'Kit carosserie', 3, 0, 1, 0.1, 2352, 0, 1000, 1, 100, '123'),
	('redbull', 'Enerji İçeceği', -1, 0, 1, 0.1, 2353, 0, 1000, 1, 100, '123'),
	('donut', 'Donut', -1, 0, 1, 0.1, 2354, 0, 1000, 1, 100, '123'),
	('rakibardagi', 'Rakı Bardağı', -1, 0, 1, 0.1, 2355, 0, 1000, 1, 100, '123'),
	('bosrakibardagi', 'Boş Rakı Bardağı', -1, 0, 1, 0.1, 2356, 0, 1000, 1, 100, '123'),
	('rakisisesi', 'Rakı Şişesi', -1, 0, 1, 0.1, 2357, 0, 1000, 1, 100, '123'),
	('meze', 'Meze', -1, 0, 1, 0.1, 2358, 0, 1000, 1, 100, '123'),
	('radiobreaker', 'Telsiz Kırıcı', -1, 0, 1, 5, 2359, 0, 1000, 1, 100, '123'),
	('hackerlaptop', 'Hacker Laptopu', -1, 0, 1, 1, 2360, 0, 1000, 1, 100, '123'),
	('hackertablet', 'Hacker Tableti', -1, 0, 1, 2, 2361, 0, 1000, 1, 100, '123'),
	('hackerphone', 'Hacker Saati', -1, 0, 1, 4, 2362, 0, 1000, 1, 100, '123'),
	('secure4', 'Güvenlik Kartı', -1, 0, 1, 0.5, 2363, 0, 1000, 1, 100, '123'),
	('cokeburn', 'USB', -1, 0, 1, 0.1, 2364, 4, 1000, 1, 100, '123'),
	('bloodsample', 'Kan Örneği', -1, 0, 1, 0.1, 2365, 0, 1000, 1, 100, '123'),
	('bulletsample', 'Mermi Kovanı', -1, 0, 1, 0.1, 2366, 0, 1000, 1, 100, '123'),
	('nitro', 'Nitro', -1, 0, 1, 0.1, 2367, 0, 1000, 1, 100, '123'),
	('bag', 'Siyah Sırttan Asmalı', -1, 0, 1, 0.1, 2368, 0, 1000, 1, 100, '123'),
	('bag2', 'Haki Sırttan Asmalı', -1, 0, 1, 0.1, 2369, 0, 1000, 1, 100, '123'),
	('tires', 'Tekerlek', -1, 0, 1, 1, 2370, 0, 1000, 1, 100, '123'),
	('blue_phone', 'Mavi Telefon', 0, 0, 1, 1, 2371, 0, 1000, 1, 100, '123'),
	('green_phone', 'Yeşil Telefon', 0, 0, 1, 1, 2372, 0, 1000, 1, 100, '123'),
	('white_phone', 'Beyaz Telefon', 0, 0, 1, 1, 2373, 0, 1000, 1, 100, '123'),
	('cash', 'Nakit', -1, 0, 1, 0, 2374, 0, 2147483647, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2375, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2376, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2377, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2378, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2379, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2380, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2381, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2382, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2383, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2384, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2385, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2386, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2387, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2388, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2389, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2390, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2391, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2392, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2393, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2394, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2395, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2396, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2397, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2398, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2399, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2400, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2401, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2402, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2403, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2404, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2405, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2406, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2407, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2408, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2409, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2410, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2411, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2412, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2413, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2414, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2415, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2416, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2417, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2418, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2419, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2420, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2421, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2422, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2423, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2424, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2425, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2426, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2427, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2428, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2429, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2430, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2431, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2432, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2433, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2434, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2435, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2436, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2437, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2438, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2439, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2440, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2441, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2442, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2443, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2444, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2445, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2446, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2447, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2448, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2449, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2450, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2451, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2452, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2453, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2454, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2455, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2456, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2457, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2458, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2459, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2460, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2461, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2462, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2463, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2464, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2465, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2466, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2467, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2468, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2469, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2470, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2471, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2472, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2473, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2474, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2475, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2476, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2477, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2478, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2479, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2480, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2481, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2482, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2483, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2484, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2485, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2486, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2487, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2488, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2489, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2490, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2491, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2492, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2493, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2494, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2495, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2496, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2497, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2498, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2499, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2500, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2501, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2502, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2503, 0, 1000, 1, 100, '123'),
	('wiz_fishingrod', 'Olta', -1, 0, 1, 0.1, 2504, 0, 1000, 1, 100, '123'),
	('wiz_fish', 'Tatlı Su Balığı', -1, 0, 1, 0.1, 2505, 0, 1000, 1, 100, '123'),
	('wiz_fishingbait', 'Balık Yemi', -1, 0, 1, 0.1, 2506, 0, 1000, 1, 100, '123');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
