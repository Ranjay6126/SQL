SELECT emp_id, emp_name, dept_id, salary
FROM (
    SELECT
        emp_id,
        emp_name,
        dept_id,
        salary,
        AVG(salary) OVER (
            PARTITION BY dept_id
        ) AS dept_avg_salary
    FROM Employees
) AS E
WHERE salary > dept_avg_salary;