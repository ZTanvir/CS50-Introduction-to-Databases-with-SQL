SELECT
    "name",
    "graduated",
    "per_pupil_expenditure"
FROM
    "schools"
    JOIN "graduation_rates" ON "schools".id = "graduation_rates"."school_id"
    JOIN "expenditures" ON "schools"."district_id" = "expenditures"."district_id"
ORDER BY
    "per_pupil_expenditure" DESC,
    "name";
