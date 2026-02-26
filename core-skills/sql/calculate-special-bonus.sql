SELECT
    employee_id,
    CASE
        -- employee id is odd AND first char is not 'M' -> give bonus equal to salary
        -- otherwise, set bonus to 0
        WHEN employee_id % 2 = 1 AND LEFT (name, 1) != 'M' THEN salary
        ELSE 0
    END AS bonus
FROM employees
ORDER BY employee_id;
