create database employee_management_system;
use employee_management_system;

create table admin_details(name varchar(100)
,email varchar(100),
password varchar(100));

-- create employee
create table employee(
id int ,
name varchar(100),
email varchar(100),
salary double,
department varchar(50)
);