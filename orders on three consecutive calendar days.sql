WITH DailyOrders AS (
    SELECT DISTINCT
        customer_id,
        DATE(order_date) AS order_day
    FROM Orders
),
NumberedOrders AS (
    SELECT
        customer_id,
        order_day,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id
            ORDER BY order_day
        ) AS rn
    FROM DailyOrders
),
GroupedOrders AS (
    SELECT
        customer_id,
        order_day,
        DATE_SUB(
            order_day,
            INTERVAL rn DAY
        ) AS grp
    FROM NumberedOrders
)
SELECT
    customer_id,
    MIN(order_day) AS streak_start,
    MAX(order_day) AS streak_end,
    COUNT(*) AS consecutive_days
FROM GroupedOrders
GROUP BY customer_id, grp
HAVING COUNT(*) >= 3;