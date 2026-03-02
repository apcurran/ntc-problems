-- total distance for user user (SUM() aggregate fn)
-- sort by travelled_distance in DESC order, then name ASC order
SELECT
    users.name,
    COALESCE(SUM(rides.distance), 0) AS travelled_distance
FROM users
LEFT JOIN rides ON users.id = rides.user_id
GROUP BY users.id
ORDER BY travelled_distance DESC, name ASC;
