-- Highest-paid employee in every department

SELECT
    d.department_name,
    e.employee_name,
    e.salary
FROM Employees e
JOIN Departments d
    ON e.department_id = d.department_id
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM Employees e2
    WHERE e2.department_id = e.department_id
)
ORDER BY d.department_name;