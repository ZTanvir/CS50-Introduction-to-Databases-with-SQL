SELECT
    COUNT(city) AS "Public School",
    "city"
FROM
    "schools"
WHERE
    "type" = 'Public School'
GROUP BY
    "city"
HAVING
    COUNT("city") < 4
ORDER BY
    "Public School" DESC,
    "city";
