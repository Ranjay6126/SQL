WITH SalaryRanks AS (
    SELECT salary,
           DENSE_RANK() OVER (
               ORDER BY salary DESC
           ) AS salary_rank
    FROM Employees
)
SELECT DISTINCT salary
FROM SalaryRanks
WHERE salary_rank = 4;