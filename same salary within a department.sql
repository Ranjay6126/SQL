SELECT department_id, salary, COUNT(*) AS employee_count,
       GROUP_CONCAT(name) AS employees
FROM Employees
GROUP BY department_id, salary
HAVING COUNT(*) > 1;