-- 6. Count Employees in Each Department

SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id;