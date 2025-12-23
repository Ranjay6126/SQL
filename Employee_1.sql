
create database abc;

use abc;

create	table Employee(
id int primary key,
name varchar(50),
salary int not null
);

-- RegNO int unique,
-- primary key(YourName, id),

insert into Employee(id, name, salary)
values
(1, "adam", 2500),
(2, "bob", 30000),
(3,"casey", 40000);

insert into Employee(id, name, salary)
values
(4, "jampa", 5500);

select * from Employee;
