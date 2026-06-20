-- 4. Get Highest Salary in Each Department

SELECT department_id, MAX(salary) AS highest_salary
FROM employees
GROUP BY department_id;