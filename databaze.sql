CREATE DATABASE school; /* vytvoření databáze */
DROP DATABASE school; /* mazání databáze */
create table car ( 
 id_car int,
 manafacturer varchar(255), /* vytvoření tabulky */
 model varchar(255)
);
create table employees (
 jméno varchar(255),
 příjmení varchar(255), /* přidání někoho nebo něco do tabulky */
 věk int,
 email varchar(255)
);

describe employees;

alter table employees
add column id_employee int FIRST; /* přidání řádku */
change column vintage manafacturing_year smallint; /* změna názvu řádku */

insert into employees
values (2,'Walter','White','52','jesse.whereismymeth.com') /*zaměstnanec přidání do tabulky */

select*
from employees /* vypsání vše co je v tabulce */

/* 30.09.2020 */

drop table garages;

create table garages(
id_garage int not null auto_increment, /* auto_increment zařazuje automaticky do tabulky*/ /* not_null nemusí se vypisovat číslo uděla automaticky pomocí prvního příkazu */
color varchar(255),
adress varchar(255),
email varchar(255),
telephone int,
primary key (id_garage) /* primary key zakazuje duplikáty */
);

insert into garages (color, adress) /* specifikování barvy a adresy */
values ('červená', 'někde někdy 666');

alter table employees
auto_increment = id_employee,
add primary key (id_employee);
