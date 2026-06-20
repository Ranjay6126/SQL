-- 12. Find Employees with Same Salary
SELECT e1.*
FROM employees e1
JOIN employees e2
ON e1.salary = e2.salary
AND e1.id <> e2.id;
