SELECT 
    users.name, 
    CASE
        WHEN SUM(rides.distance) IS NULL THEN 0
        ELSE SUM(rides.distance)
    END AS travelled_distance
FROM users 
LEFT JOIN rides ON users.id = rides.user_id 
GROUP BY users.id, users.name
ORDER BY travelled_distance DESC, users.name ASC;