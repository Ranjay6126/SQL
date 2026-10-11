WITH SalaryPercentile AS (
    SELECT
        emp_id,
        name,
        department_id,
        salary,
        CUME_DIST() OVER (
            PARTITION BY department_id
            ORDER BY salary
        ) AS salary_distribution
    FROM Employees
)
SELECT name, department_id, salary
FROM SalaryPercentile
WHERE salary_distribution > 0.75
ORDER BY department_id, salary DESC;