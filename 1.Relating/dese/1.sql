-- Name and city of all public schools
SELECT
    "name",
    "city"
FROM
    "schools"
WHERE
    "type" = "Public School";
