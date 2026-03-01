"# SQL" 

SQL Practice Repository

This repository contains SQL scripts created while learning and practicing MySQL. It includes basic to intermediate level queries such as table creation, data insertion, filtering, joins, and constraints. These scripts were written as part of interview preparation and hands-on database practice.

The goal of this repository is to strengthen SQL fundamentals and provide examples that can be useful for revision and learning.

Topics Covered

Database and Table Creation

Insert Operations

Select Queries

Distinct Values

Where Conditions

Operators

Order By Clause

Foreign Keys

Constraints

Sample Employee Database

Repository Files
1. Employee_1.sql

Contains employee table queries used for interview preparation.
Includes:

Table structure

Sample data

Basic queries

2. MySQL.sql

Basic MySQL commands and syntax practice.
Includes:

Simple queries

Data operations

Practice examples

3. Select_distinct.sql

Examples of using the SELECT DISTINCT statement.
Used to retrieve unique values from a table.

Example:

SELECT DISTINCT department FROM employees;
4. createtable_withdata.sql

Creates tables and inserts sample data.
Useful for practicing queries on ready-made datasets.

Includes:

CREATE TABLE

INSERT INTO

5. foreign_key.sql

Examples of foreign key relationships between tables.

Includes:

Primary Key

Foreign Key

Table Relationships

Example:

FOREIGN KEY (dept_id) REFERENCES department(id)
6. where_operator_order.sql

Examples of filtering and sorting data.

Includes:

WHERE clause

Operators (=, >, <, LIKE)

ORDER BY

Example:

SELECT * 
FROM employees
WHERE salary > 30000
ORDER BY salary DESC;
7. README.md

Contains documentation and description of the repository.

Skills Practiced

Writing SQL Queries

Database Design Basics

Data Filtering

Sorting Data

Table Relationships

Query Optimization Basics

How to Use

Install MySQL or any SQL-supported database.

Open MySQL Workbench or any SQL editor.

Run the .sql files one by one.

Modify queries and practice.

Example Queries
Create Table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);
Insert Data
INSERT INTO employees (id, name, salary)
VALUES (1, 'John', 30000);
Select Data
SELECT * FROM employees;
Purpose

This repository was created for:

SQL learning

Interview preparation

Query practice

Concept revision
