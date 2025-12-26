CREATE DATABASE colleges;
USE colleges;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student (rollno, name, marks, grade, city)
VALUES
(101, 'anil', 78, 'C', 'Pune'),
(102, 'bhumika', 93, 'A', 'Mumbai'),
(103, 'chetan', 85, 'B', 'Mumbai'),
(104, 'dhruv', 96, 'A', 'Delhi'),
(105, 'emanuel', 12, 'F', 'Delhi'),
(106, 'farah', 82, 'B', 'Delhi');

select * from student;
select city from student;

-- DISTINCT means unique(don't show the reptation one) --
select distinct city from student;

select name, marks from student;

select * from student where marks > 80;

select * from student where city = "pune";

select * from student where city = "Mumbia";

select * from student where city="Delhi" and marks > 90;

select * from student where marks+10 > 90;

select * from student where marks>75 and name="anil";

select * from student where marks>90 or city="Mumbai";

select * from student where marks between 80 and 90;

select * from student where city in ("Delhi", "Mumbai", "pune");

select * from student where city not in ("Delhi", "Mumbai") ;

select * from student where marks > 70 limit 3;

-- order by clause

select * from student order by rollno desc;

select * from student order by name asc;

select * from student order by marks desc ;
select * from student order by marks desc limit 1;

-- function ag gregrate functions

select count(name) from student ;

select sum(marks) from student;

select max(marks) from student;

select avg(marks) from student;


-- unique cities

select distinct city from student;


-- duplicate cities
SELECT city
FROM student
GROUP BY city
HAVING COUNT(*) > 1;
