SELECT
    employee_id,
    employee_name,
    salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
)
ORDER BY salary DESC;