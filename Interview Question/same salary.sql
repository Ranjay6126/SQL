-- 12. Find Employees with Same Salary
SELECT e1.*
FROM employees e1
JOIN employees e2
ON e1.salary = e2.salary
AND e1.id <> e2.id;

-- 13. Find Total Salary Department Wise
SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;


-- 14. Find Employees Whose Name Starts with 'A'
SELECT *
FROM employees
WHERE name LIKE 'A%';