WITH Ranked AS (
    SELECT salary,
           ROW_NUMBER() OVER (ORDER BY salary) AS rn,
           COUNT(*) OVER () AS total_rows
    FROM Employees
)
SELECT AVG(salary) AS median_salary
FROM Ranked
WHERE rn IN (
    FLOOR((total_rows + 1) / 2),
    FLOOR((total_rows + 2) / 2)
);