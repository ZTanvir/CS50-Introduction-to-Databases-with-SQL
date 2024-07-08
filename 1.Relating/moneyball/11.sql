SELECT
    "first_name",
    "last_name",
    SUM("salary") / SUM("H") AS "dollars per hit"
FROM
    "players"
    JOIN "performances" ON "players"."id" = "performances"."player_id"
    JOIN "salaries" ON "performances"."player_id" = "salaries"."player_id"
WHERE
    "performances"."year" = 2001
    AND "performances"."H" != 0
    AND "salaries"."year" = 2001
GROUP BY
    "performances"."player_id"
ORDER BY
    "dollars per hit" ASC,
    "first_name" ASC,
    "last_name" ASC
LIMIT
    10;
