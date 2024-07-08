-- What are the contents of the Forgotten Gift?
SELECT "contents"
FROM "packages"
WHERE "from_address_id" = (
    SELECT "id"
    from "addresses"
    WHERE "address" = "109 Tileston Street"
);

-- Who has the Forgotten Gift?
SELECT "name"
FROM "drivers"
WHERE "id" = (
    SELECT "driver_id"
    FROM "scans"
    WHERE "package_id" = (
        SELECT "id"
        FROM "packages"
        WHERE "from_address_id" = (
            SELECT "id"
            from "addresses"
            WHERE "address" = "109 Tileston Street"
        )
    )
    ORDER BY "timestamp" DESC LIMIT 1
);
