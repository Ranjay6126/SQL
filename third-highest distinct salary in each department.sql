WITH RankedSalaries AS (
    SELECT
        emp_id,
        emp_name,
        dept_id,
        salary,
        DENSE_RANK() OVER (
            PARTITION BY dept_id
            ORDER BY salary DESC
        ) AS salary_rank
    FROM Employees
)
SELECT emp_id, emp_name, dept_id, salary
FROM RankedSalaries
WHERE salary_rank = 3;