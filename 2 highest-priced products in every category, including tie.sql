WITH RankedProducts AS (
    SELECT
        product_id,
        product_name,
        category_id,
        price,
        DENSE_RANK() OVER (
            PARTITION BY category_id
            ORDER BY price DESC
        ) AS price_rank
    FROM Products
)
SELECT
    product_id,
    product_name,
    category_id,
    price
FROM RankedProducts
WHERE price_rank <= 2
ORDER BY category_id, price DESC;