
create database Country;
use country;

CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    full_name VARCHAR(50),
    base_salary INT DEFAULT 50000,
    location_id INT
);

CREATE TABLE learner (
    learner_id INT PRIMARY KEY,
    learner_name VARCHAR(50),
    location_ref INT,
    FOREIGN KEY (location_ref) REFERENCES staff(location_id)
);


INSERT INTO staff (staff_id, full_name, location_id)
VALUES
(101, 'Ram', 134),
(102, 'Geeta', 2375),
(103, 'Sita', 1375);


INSERT INTO learner (learner_id, learner_name, location_ref)
VALUES
(201, 'Aman', 134),
(202, 'Priya', 2375);

