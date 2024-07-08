SELECT
    "first_name",
    "last_name",
    "salary",
    "salaries"."year",
    "HR"
FROM
    "players"
    JOIN "performances" ON "players"."id" = "performances"."player_id"
    JOIN "salaries" ON "performances"."player_id" = "salaries"."player_id"
WHERE
    "performances"."year" = "salaries"."year"
ORDER BY
    "players"."id" ASC,
    "salaries"."year" DESC,
    "performances"."HR" DESC,
    "salaries"."salary" DESC;
