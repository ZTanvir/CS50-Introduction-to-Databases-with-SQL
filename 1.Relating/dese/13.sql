SELECT
    "schools"."name"
FROM
    "districts"
    JOIN "schools" ON "districts"."id" = "schools"."district_id"
WHERE
    "districts"."type" = "Public School District";
