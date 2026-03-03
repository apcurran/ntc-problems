-- solution 1 (subquery version)
SELECT sales_person.name
FROM sales_person
WHERE sales_person.sales_id NOT IN (
    SELECT orders.sales_id
    FROM orders
    INNER JOIN company ON orders.com_id = company.com_id
    WHERE company.name = 'CRIMSON'
);


-- solution 2 (NOT EXISTS alt subquery approach)
SELECT sales_person.name
FROM sales_person
WHERE NOT EXISTS (
    SELECT orders.sales_id
    FROM orders
    INNER JOIN company ON orders.com_id = company.com_id
    WHERE
        orders.sales_id = sales_person.sales_id AND
        company.name = 'CRIMSON'
);
