-- At what type of address did the Lost Letter end up?: Residential

SELECT *
FROM "addresses"
WHERE "id"=
(
    SELECT "address_id"
    FROM "scans"
    WHERE "package_id" = (
        SELECT id
        FROM "packages"
        WHERE "from_address_id" =
            (SELECT "id"
            FROM "addresses"
            WHERE "address" = "900 Somerville Avenue")
        AND
        "to_address_id" =
            (SELECT "id"
            FROM "addresses"
            WHERE "address" = "2 Finnigan Street")
        )
        AND
    "action" = "Pick"
);
