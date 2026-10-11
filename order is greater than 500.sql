SELECT customer_id
FROM Orders
GROUP BY customer_id
HAVING MIN(amount) > 500;