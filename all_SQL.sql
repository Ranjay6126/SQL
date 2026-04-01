-- Queries from createtable_withdata.sql
insert into Bidharthi

-- Queries from MySQL.sql
create database School;

-- Queries from where_operator_order.sql
CREATE DATABASE colleges;

-- Additional DDL Examples (Creating Tables)
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    department VARCHAR(50)
);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE
);

-- Additional DML Examples (Inserting Data)
INSERT INTO employees (id, name, age, department) VALUES (1, 'John Doe', 30, 'HR');
INSERT INTO employees (id, name, age, department) VALUES (2, 'Jane Smith', 25, 'IT');

INSERT INTO departments (dept_id, dept_name) VALUES (1, 'HR');
INSERT INTO departments (dept_id, dept_name) VALUES (2, 'IT');

-- Updating Data
UPDATE employees SET age = 31 WHERE id = 1;

-- Deleting Data
DELETE FROM employees WHERE id = 2;

-- Basic SELECT Queries
SELECT * FROM employees;
SELECT name, age FROM employees WHERE age > 25;
SELECT DISTINCT department FROM employees;

-- JOIN Examples
SELECT e.name, d.dept_name
FROM employees e
INNER JOIN departments d ON e.department = d.dept_name;

-- Aggregate Functions
SELECT COUNT(*) FROM employees;
SELECT AVG(age) FROM employees;
SELECT department, COUNT(*) FROM employees GROUP BY department;

-- ORDER BY
SELECT * FROM employees ORDER BY age DESC;

-- Subquery Example
SELECT * FROM employees WHERE age > (SELECT AVG(age) FROM employees);

-- Transaction Example
START TRANSACTION;
INSERT INTO employees (id, name, age, department) VALUES (3, 'Bob Johnson', 28, 'Finance');
COMMIT;

-- View Example
CREATE VIEW employee_summary AS
SELECT name, department FROM employees;

-- Index Example
CREATE INDEX idx_employee_name ON employees (name);