WITH SalaryRank AS (
    SELECT
        name,
        department_id,
        salary,
        DENSE_RANK() OVER (
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS rnk
    FROM Employees
)
SELECT name, department_id, salary
FROM SalaryRank
WHERE rnk <= 3
ORDER BY department_id, salary DESC;