CREATE DATABASE school; /* vytvoření databáze */
DROP DATABASE school; /* mazání databáze */
CREATE TABLE car ( 
 id_car int,
 manafacturer varchar(255), /* vytvoření tabulky */
 model varchar(255)
);
CREATE TABLE employees (
 jméno varchar(255),
 příjmení varchar(255), /* přidání někoho nebo něco do tabulky */
 věk int,
 email varchar(255)
);

describe employees;

ALTER TABLE employees
add column id_employee int FIRST; /* přidání řádku */
change column vintage manafacturing_year smallint; /* změna názvu řádku */

INSERT INTO employees
VALUES (2,'Walter','White','52','jesse.whereismymeth.com') /*zaměstnanec přidání do tabulky */

SELECT*
FROM employees /* vypsání vše co je v tabulce */

/* 30.09.2020 */

DROP TABLE garages;

/* 14.10.2020 */

CREATE TABLE garages(
id_garage int not null auto_increment, 
email varchar(255),
telephone int,
car varchar(255),
adress varchar(255)
);

ALTER TABLE garages MODIFY COLUMN id_garage INT NOT NULL AUTO_INCREMENT PRIMARY KEY; /* auto_increment zařazuje automaticky do tabulky*/ /* Primary key zakáže duplikáty */ /* not_null nemusí se vypisovat číslo uděla automaticky pomocí prvního příkazu */

describe garages;

INSERT INTO garages 
VALUES (null, 'Prčice', 'adress@adress.cz', '666666666', 'Ford Mustang' 
); /* specifikování auta a adresy a dalších věcí */
 
ALTER TABLE employees MODIFY COLUMN id_employee INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

/* 4.11 2020 */

ALTER TABLE employees
ADD id_car int;

UPDATE employees
SET id_car = 1
WHERE id_employee = 1;

/* 17.11.2020 */

SELECT COUNT(*) AS pocet_aut
FROM vehicles;

SELECT COUNT(*) AS slaves
FROM employees;

SELECT COUNT(*) AS smelly_garage
FROM garages;

/* 25.11.2020 */

CREATE DATABASE `covid_meter` COLLATE 'utf8_bin';

CREATE TABLE countries (
  id_country int AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  zkratka varchar(10) NOT NULL,
  description text,
  PRIMARY KEY (id_country)
);

INSERT INTO `countries` (`id_country`, `name`, `code`, `description`) VALUES
(1,	'Poland',	'PL',	NULL),
(2,	'Czech Republic',	'CZ',	NULL),
(3,	'Columbia',	'COL',	NULL),
(4,	'Brazil',	'BRA',	NULL),
(5,	'Croatia',	'HR',	NULL),
(6,	'France',	'FRA',	NULL),
(7,	'Estonia',	'EST',	NULL),
(8,	'Finland',	'FIN',	NULL),
(9,	'Germany',	'DEU',	NULL),
(10,	'New Zealand',	'NZL',	NULL),
(11,	'Pakistan',	'PAK',	NULL),
(12,	'Ethiopia',	'ETH',	NULL),
(13,	'Great Britain',	'GBR',	NULL),
(14,	'Central African Republic',	'CAF',	NULL),
(15,	'Serbia',	'SRB',	NULL),
(16,	'Switzerland',	'CHE',	NULL),
(17,	'Thailand',	'THA',	NULL),
(18,	'Turkey',	'TUR',	NULL),
(19,	'Christmas Island',	'CXR',	NULL),
(20,	'Queen Maud Land',	'ATN',	NULL);


/* 30.11.2020 */

ALTER TABLE countries
add column deaths_total int

UPDATE countries
SET deaths_total = 9000
WHERE id_country = 1;

UPDATE countries
SET deaths_total = 10000
WHERE id_country = 2;

UPDATE countries
SET deaths_total = 11000
WHERE id_country = 3;

INSERT INTO `countries` (`id_country`, `name`, `code`, `description`, `deaths_total`) VALUES
(1,	'Poland',	'PL',	NULL,	5565),
(2,	'Czech Republic',	'CZ',	NULL,	9012),
(3,	'Columbia',	'COL',	NULL,	6047),
(4,	'Brazil',	'BRA',	NULL,	2085),
(5,	'Croatia',	'HR',	NULL,	1005),
(6,	'France',	'FRA',	NULL,	1544),
(7,	'Estonia',	'EST',	NULL,	9700),
(8,	'Finland',	'FIN',	NULL,	4568),
(9,	'Germany',	'DEU',	NULL,	2568),
(10,	'New Zealand',	'NZL',	NULL,	7456),
(11,	'Pakistan',	'PAK',	NULL,	4122),
(12,	'Ethiopia',	'ETH',	NULL,	7458),
(13,	'Great Britain',	'GBR',	NULL,	7412),
(14,	'Central African Republic',	'CAF',	NULL,	9854),
(15,	'Serbia',	'SRB',	NULL,	7452),
(16,	'Switzerland',	'CHE',	NULL,	7412),
(17,	'Thailand',	'THA',	NULL,	8954),
(18,	'Turkey',	'TUR',	NULL,	4741),
(19,	'Christmas Island',	'CXR',	NULL,	9865),
(20,	'Queen Maud Land',	'ATN',	NULL,	2548);

/* 08.12.2020 */

SELECT *
FROM countries
WHERE deaths_total > 4000;

SELECT *
FROM countries
WHERE deaths_total > 1000 AND deaths_total < 6000;

SELECT *
FROM countries
WHERE deaths_total < 1000;

SELECT *
FROM countries
ORDER BY code ASC;

SELECT *
FROM countries
ORDER BY deaths_total DESC;

SELECT *
FROM countries
WHERE deaths_total < 1000 OR deaths_total > 5000;

/* 17.12.2020 */

SELECT * FROM countries
WHERE name LIKE "C%";

SELECT * FROM countries
WHERE name LIKE "%a";

SELECT * FROM countries
WHERE name LIKE "%republic%";

SELECT * FROM countries
WHERE name LIKE "%ra%";
