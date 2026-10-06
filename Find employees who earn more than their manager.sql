SELECT
    e.employee_name AS employee,
    e.salary AS employee_salary,
    m.employee_name AS manager,
    m.salary AS manager_salary
FROM Employees e
JOIN Employees m
    ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;