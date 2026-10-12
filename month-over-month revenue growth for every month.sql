WITH RECURSIVE Months AS (
    SELECT DATE_FORMAT(
        MIN(order_date), '%Y-%m-01'
    ) AS month_start
    FROM Orders

    UNION ALL

    SELECT DATE_ADD(
        STR_TO_DATE(month_start, '%Y-%m-%d'),
        INTERVAL 1 MONTH
    )
    FROM Months
    WHERE STR_TO_DATE(month_start, '%Y-%m-%d')
          < (
              SELECT DATE_FORMAT(
                  MAX(order_date), '%Y-%m-01'
              )
              FROM Orders
          )
),
MonthlyRevenue AS (
    SELECT
        STR_TO_DATE(M.month_start, '%Y-%m-%d') AS month_start,
        COALESCE(SUM(O.amount), 0) AS revenue
    FROM Months M
    LEFT JOIN Orders O
        ON O.order_date >= STR_TO_DATE(
            M.month_start, '%Y-%m-%d'
        )
       AND O.order_date < DATE_ADD(
            STR_TO_DATE(M.month_start, '%Y-%m-%d'),
            INTERVAL 1 MONTH
       )
    GROUP BY M.month_start
),
RevenueComparison AS (
    SELECT
        month_start,
        revenue,
        LAG(revenue) OVER (
            ORDER BY month_start
        ) AS previous_revenue
    FROM MonthlyRevenue
)
SELECT
    month_start,
    revenue,
    previous_revenue,
    ROUND(
        100.0 * (revenue - previous_revenue)
        / NULLIF(previous_revenue, 0),
        2
    ) AS growth_percentage
FROM RevenueComparison
ORDER BY month_start;