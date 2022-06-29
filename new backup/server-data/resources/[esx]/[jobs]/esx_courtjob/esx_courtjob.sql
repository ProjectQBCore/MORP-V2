INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(83, 'court', 0, 'boss', 'Patron', 500, '', '');

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('court', 'שופט', 1);

INSERT INTO `addon_account` (name, label, shared) VALUES 
    ('society_court','שופט',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    ('society_court','שופט',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
    ('society_court', 'שופט', 1)
;
