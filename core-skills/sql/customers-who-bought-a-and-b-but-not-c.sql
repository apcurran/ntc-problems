-- solution 1 (subqueries)
SELECT
    c.customer_id,
    c.customer_name
FROM customers AS c
WHERE c.customer_id IN (
    SELECT customer_id
    FROM orders
    WHERE product_name = 'A'
    INTERSECT -- combines all rows that are both in query A and query B
    SELECT customer_id
    FROM orders
    WHERE product_name = 'B'
) AND c.customer_id NOT IN (
    -- exclude any customer who bought 'C'
    SELECT customer_id
    FROM orders
    WHERE product_name = 'C'
)
ORDER BY c.customer_name;
