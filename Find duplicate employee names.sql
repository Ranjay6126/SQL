SELECT
    employee_name,
    COUNT(*) AS duplicate_count
FROM Employees
GROUP BY employee_name
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;