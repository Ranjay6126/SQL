WITH RankedEmployees AS (
    SELECT
        e.employee_id,
        e.employee_name,
        e.department_id,
        e.salary,
        DENSE_RANK() OVER (
            PARTITION BY e.department_id
            ORDER BY e.salary DESC
        ) AS salary_rank
    FROM Employees e
)

SELECT
    d.department_name,
    r.employee_name,
    r.salary,
    r.salary_rank
FROM RankedEmployees r
JOIN Departments d
    ON r.department_id = d.department_id
WHERE r.salary_rank <= 3
ORDER BY
    d.department_name,
    r.salary_rank;