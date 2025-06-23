/*create database company;
use company;
create table employee (eid int primary key,empname varchar(40) not null,email varchar(30) unique ,gender char(1),salary varchar(20));
alter table employee
add column phnno varchar(30) after email
alter table employee add column department varchar(30) after gender;
alter table employee
modify column salary decimal(10,2);
alter table employee 
drop column phnno;*/
rename table employee to associates;


