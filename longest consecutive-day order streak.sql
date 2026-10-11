WITH DailyOrders AS (
    SELECT DISTINCT customer_id, order_date
    FROM Orders
),
GroupedDates AS (
    SELECT
        customer_id,
        order_date,
        DATE_SUB(
            order_date,
            INTERVAL ROW_NUMBER() OVER (
                PARTITION BY customer_id
                ORDER BY order_date
            ) DAY
        ) AS grp
    FROM DailyOrders
),
Streaks AS (
    SELECT
        customer_id,
        MIN(order_date) AS streak_start,
        MAX(order_date) AS streak_end,
        COUNT(*) AS streak_length
    FROM GroupedDates
    GROUP BY customer_id, grp
)
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY customer_id
               ORDER BY streak_length DESC, streak_end DESC
           ) AS rn
    FROM Streaks
) AS ranked
WHERE rn = 1;