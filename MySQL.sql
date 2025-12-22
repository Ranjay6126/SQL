create database School;

use School;

create table Student_Details(
id int primary key,
name varchar(50),
age int not null

);

INSERT INTO Student_Details (id, name, age)
VALUES
(100, 'Ram', 34),
(101, 'Sita', 45),
(102, 'Ranjay', 23);

SHOW TABLES;


select * from Student_Details;

show databases;
