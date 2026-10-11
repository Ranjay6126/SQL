SELECT
    customer_id,
    COUNT(DISTINCT order_date) AS order_days,
    SUM(amount) AS total_amount
FROM Orders
GROUP BY customer_id
HAVING COUNT(DISTINCT order_date) >= 3;