-- 8. Find Employees Joined in the Last 30 Days
SELECT *
FROM employees
WHERE join_date >= CURDATE() - INTERVAL 30 DAY;


-- 9. Delete Duplicate Records (Keep Lowest ID)
DELETE e1
FROM employees e1
JOIN employees e2
ON e1.email = e2.email
AND e1.id > e2.id;


-- 10. Find Employees Without Matching Department
SELECT e.*
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_id IS NULL;