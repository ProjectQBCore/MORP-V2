USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_taco', 'taco', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('taco', 'taco')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('taco',0,'worker','Worker',24,'{}','{}'),
	('taco',1,'boss','Boss',40,'{}','{}');

