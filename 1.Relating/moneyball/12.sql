SELECT
    "first_name",
    "last_name",
    SUM("salary") / SUM("RBI") AS "dollar per rbi"
FROM
    "players"
    JOIN "performances" ON "players"."id" = "performances"."player_id"
    JOIN "salaries" ON "performances"."player_id" = "salaries"."player_id"
WHERE
    "H" != 0
    AND "RBI" != 0
    AND "performances"."year" = 2001
    AND "salaries"."year" = 2001
GROUP BY
    "performances"."player_id"
ORDER BY
    "dollar per rbi" ASC,
    "last_name" ASC
LIMIT
    6;
