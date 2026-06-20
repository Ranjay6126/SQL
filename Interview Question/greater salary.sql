-- 3. Find Employees with Salary Greater Than Average Salary

SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);