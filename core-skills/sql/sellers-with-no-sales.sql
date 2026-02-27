-- solution 1 (subquery)
SELECT seller.seller_name
FROM seller
WHERE seller.seller_id NOT IN (
    SELECT orders.seller_id
    FROM orders
    WHERE EXTRACT(YEAR FROM orders.sale_date) = 2020
)
ORDER BY seller.seller_name ASC;


-- solution 2 (JOIN)
SELECT DISTINCT seller.seller_name
FROM seller
LEFT JOIN orders ON
    seller.seller_id = orders.seller_id AND
    EXTRACT(YEAR FROM orders.sale_date) = 2020
WHERE orders.seller_id IS NULL
ORDER BY seller.seller_name ASC;
