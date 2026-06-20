-- 5. Find Employees Who Have Not Been Assigned Any Department
SELECT *
FROM employees
WHERE department_id IS NULL;