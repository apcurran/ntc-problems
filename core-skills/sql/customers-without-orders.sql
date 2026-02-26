-- solution 1 (JOIN variant)
SELECT customers.name
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
-- find all customers who have NOT placed an order
WHERE orders.customer_id IS NULL;


-- solution 2 (subquery variant)
SELECT customers.name
FROM customers
WHERE customers.id NOT IN (SELECT orders.customer_id FROM orders);
