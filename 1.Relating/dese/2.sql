-- District that are no longer operational
SELECT
    "name"
FROM
    "districts"
WHERE
    "name" LIKE "%(non-op)%";
