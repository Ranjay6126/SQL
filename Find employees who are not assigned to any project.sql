SELECT
    e.employee_id,
    e.employee_name
FROM Employees e
LEFT JOIN EmployeeProjects ep
    ON e.employee_id = ep.employee_id
WHERE ep.employee_id IS NULL;