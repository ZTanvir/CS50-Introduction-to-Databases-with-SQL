SELECT
    COUNT(city) AS "Number of public schools",
    "city"
FROM
    "schools"
WHERE
    "type" = 'Public School'
GROUP BY
    "city"
ORDER BY
    "Number of public schools" DESC,
    "city"
LIMIT
    10;
