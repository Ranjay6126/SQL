-- 2. Find Duplicate Records

SELECT email, COUNT(*)
FROM employees
GROUP BY email
HAVING COUNT(*) > 1;