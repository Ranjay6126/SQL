WITH CustomerRevenue AS (
    SELECT
        customer_id,
        SUM(amount) AS revenue
    FROM Orders
    GROUP BY customer_id
),
RevenueShare AS (
    SELECT
        customer_id,
        revenue,
        ROUND(
            100.0 * revenue / SUM(revenue) OVER (),
            2
        ) AS revenue_percentage,
        RANK() OVER (
            ORDER BY revenue DESC
        ) AS revenue_rank
    FROM CustomerRevenue
)
SELECT
    customer_id,
    revenue,
    revenue_percentage
FROM RevenueShare
WHERE revenue_rank = 1;