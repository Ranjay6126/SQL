SELECT
    employee_id,
    employee_name,
    hire_date
FROM Employees
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
ORDER BY hire_date DESC;