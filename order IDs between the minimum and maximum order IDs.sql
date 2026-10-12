WITH RECURSIVE AllIDs AS (
    SELECT MIN(order_id) AS id
    FROM Orders

    UNION ALL

    SELECT id + 1
    FROM AllIDs
    WHERE id < (SELECT MAX(order_id) FROM Orders)
)
SELECT A.id AS missing_order_id
FROM AllIDs A
LEFT JOIN Orders O
    ON O.order_id = A.id
WHERE O.order_id IS NULL
ORDER BY A.id;