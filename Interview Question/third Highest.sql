-- 7. Find Top 3 Highest Salaries

SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 3;