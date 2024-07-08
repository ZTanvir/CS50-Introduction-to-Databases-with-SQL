-- At what type of address did the Devious Delivery end up?
SELECT "type"
FROM "addresses"
WHERE "id" = (
    SELECT "address_id"
    FROM "scans" WHERE
    "package_id" =
    (
        SELECT "id"
        FROM "packages"
        WHERE "from_address_id"
        IS NULL
        AND
        contents = "Duck debugger"
    )
    AND "action" = "Drop"
);

-- What were the contents of the Devious Delivery?

SELECT *
FROM "packages"
WHERE "from_address_id"
IS NULL;
