USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_mechanic', 'mechanic', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_mechanic', 'mechanic', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('mechanic', 'מוסך הכח')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('mechanic',0,'recrue','מכונאי',12,'{}','{}'),
	('mechanic',1,'novice','מכונאי מנוסה',24,'{}','{}'),
	('mechanic',2,'experimente','מנהל משמרת',36,'{}','{}'),
	('mechanic',3,'chief',"מנהל כספים",48,'{}','{}'),
	('mechanic',4,'boss','מנכ"ל',0,'{}','{}')
;

INSERT INTO `items` (name, label, `limit`) VALUES
	('gazbottle', 'דלק', 11),
	('fixtool', 'ערכת תיקון', 6),
	('carotool', 'ערכת רכב', 4),
	('blowpipe', 'מבער', 10),
	('fixkit', 'ערכת תיקון', 5),
	('carokit', 'ערכת רכב', 3)
;
