WITH RECURSIVE EmployeeHierarchy AS (
    SELECT
        emp_id,
        emp_name,
        manager_id,
        0 AS hierarchy_level,
        CAST(emp_name AS CHAR(2000)) AS manager_chain
    FROM Employees
    WHERE manager_id IS NULL

    UNION ALL

    SELECT
        E.emp_id,
        E.emp_name,
        E.manager_id,
        H.hierarchy_level + 1,
        CONCAT(H.manager_chain, ' -> ', E.emp_name)
    FROM Employees E
    JOIN EmployeeHierarchy H
        ON E.manager_id = H.emp_id
)
SELECT
    emp_id,
    emp_name,
    manager_id,
    hierarchy_level,
    manager_chain
FROM EmployeeHierarchy
ORDER BY hierarchy_level, emp_id;