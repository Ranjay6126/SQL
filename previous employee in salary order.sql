WITH SalaryComparison AS (
    SELECT name, salary,
           LAG(salary) OVER (
               ORDER BY salary, emp_id
           ) AS previous_salary
    FROM Employees
)
SELECT name, salary, previous_salary
FROM SalaryComparison
WHERE salary > previous_salary;