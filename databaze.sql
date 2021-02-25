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

/* 08.01.2021 */

INSERT INTO `students` (`id_students`, `firstname`, `lastname`, `class`, `email`) VALUES
(1,	'Martin',	'Lédl',	'2.C',	'martin.ledl@student.ossp.cz'),
(2,	'Sorin',	'Eni',	'2.C',	'sorin.eni@student.ossp.cz'),
(3,	'Karel',	'Nakládal',	'2.C',	'karel.nakladal@student.ossp.cz'),
(4,	'Jakub',	'Vavrů',	'2.C',	'jakub.vavru@student.ossp.cz'),
(5,	'Jan',	'Šlechta',	'2.C',	'jan.slechta@student.ossp.cz'),
(6,	'Štěpán',	'Kolarovský',	'2.C',	'stepan.kolarovsky@student.ossp.cz'),
(7,	'Michal',	'Plaček',	'2.C',	'michal.placek@student.ossp.cz'),
(8,	'Šimon',	'Siksta',	'2.C',	'simon.siksta@student.ossp.cz');

INSERT INTO `teachers` (`id_teacher`, `firstname`, `lastname`, `email`, `description`) VALUES
(1,	'Lenka',	'Sklenářová',	'lenka.sklenarova@ossp.cz',	''),
(2,	'Lukáš',	'Jakoubek',	'lukas.jakoubek@ossp.cz',	''),
(3,	'Dana ',	'Kašparová',	'dana.kasparova@ossp.cz',	''),
(4,	'Iva',	'Součková',	'iva.souckova@ossp.cz',	''),
(5,	'Martin',	'Kokeš',	'martin.kokes@student.ossp.cz',	'');

/* 24.01.2021 */

CREATE TABLE subjects (
  id_subject int AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  description text,
  PRIMARY KEY (id_subject)
);

ALTER TABLE subjects ADD shortname varchar(10);

UPDATE subjects
SET shortname='M'
WHERE id_subject='1';

INSERT INTO subjects 
VALUES( null, "Anime", "Jap", "Sain gengo wa yoidesu" 
);

INSERT INTO `subjects` (`id_subject`, `name`, `shortname`, `description`) VALUES
(1,	'Matematika',	'M',	'1+1=2 easy math'),
(2,	'English',	'En',	'Pidaras'),
(3,	'Anime',	'Jap',	'Sain gengo wa yoidesu'),
(4,	'German',	'Ger',	'Mein Leben'),
(5,	'Mongolia',	'Mon',	'Chingis khaan bol mash sain tsergiin udirdagch yum'),
(6,	'Walter',	'White',	'Jesse we need to fuck'),
(7,	'Jesse',	'Pinkman',	'No dont do that old man'),
(8,	'Gustavo',	'Fring',	'Cook meth Waltar or i will delete your steam account.'),
(9,	'Bellman',	'Ring',	'Ring Ring Ring Ring Ring Ring Ring Ring Ring Ring'),
(10,	'Boris',	'Johnson',	'Briish');


/* 11.02.2021 */

CREATE TABLE classrooms (
  id_classroom varchar(255),
  building smallint,
  seat_count int,
  computer_lab tinyint,
  description text
);


INSERT INTO `classrooms` (`id_classroom`, `building`, `seat_count`, `computer_lab`, `description`) VALUES
('1A',	1,	20,	0,	'niggachan'),
('2B',	2,	25,	0,	'kiruychan'),
('3C',	1,	30,	0,	'cikamchan'),
('4D',	2,	40,	0,	'gorosan'),
('5E',	1,	55,	1,	'earthchan'),
('6F',	2,	68,	1,	'girlfriendchan'),
('7G',	1,	69,	0,	'friendchan'),
('8H',	2,	48,	1,	'niggerchan'),
('9CH',	1,	41,	1,	'pedochan'),
('10I',	2,	46,	1,	'groomerchan');

/* 24.02.2021 */

ALTER TABLE classrooms
ADD UNIQUE (id_classroom);

CREATE TABLE schedule(
id_schedule int primary key,
id_classroom int,
id_teacher int,
id_subject int,
lesson_number int,
day_of_week tinyint); 

ALTER TABLE schedule
ADD UNIQUE (id_schedule)
ADD UNIQUE (id_classroom)
ADD UNIQUE id_teacher)
ADD UNIQUE (id_subject);


INSERT INTO schedule (id_schedule, id_classroom, id_teacher, id_subject, lesson_number, day_of_week)
VALUES ("1", "1", "1", "1", "1", "1")