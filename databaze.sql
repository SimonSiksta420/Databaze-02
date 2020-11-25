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

INSERT INTO countries (
  name,
  shortcut,
  description
)
VALUES (
  'Ethiopia',
  'ETH',
  NULL
);


