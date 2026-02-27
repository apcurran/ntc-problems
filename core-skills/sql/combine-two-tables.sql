-- show NULL for any columns like city and state that a person does not have
SELECT
    person.first_name,
    person.last_name,
    address.city,
    address.state
FROM person
LEFT JOIN address
    ON person.person_id = address.person_id;
