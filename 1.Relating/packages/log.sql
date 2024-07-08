
-- *** The Lost Letter ***

SELECT "id" FROM "addresses" WHERE "address" = "900 Somerville Avenue"
Find the sender address id from addresses? -432

SELECT "id" FROM "addresses" WHERE "address" LIKE "2 Finnigan Street";
Find the reciver address id from addresses?-854

what-address id.
why-Find the package id by using the address id.

SELECT id FROM "packages" WHERE "from_address_id" = 432 AND "to_address_id" = 854; - 384
what- package id.
why - to check the package is picked or not from scans table.

SELECT "address_id" FROM "scans" WHERE "package_id" = "384" AND "action" = "Drop"; - 854
what - get action(pick or drop)
why - See weather the package is pick or drop

At what type of address did the Lost Letter end up?:
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
    AND
    "action" = "Drop";


-- *** The Devious Delivery ***
At what type of address did the Devious Delivery end up?:

SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL AND contents = "Duck debugger"; - 5098
what - get the id of packages;
why - as the customer said there are no from address, and the content of package quack(duck quack),
so we can find the package by searching package table where form_address_id table is null and the contents is "Duck"

SELECT "address_id" FROM "scans" WHERE "package_id" = 5098 AND "action" = "Drop"; - 348
what - get the address_id of Drop package
why -  to see the type of address the devious delivery end up , we need the Drop address_id from scans table.

SELECT "type" FROM "addresses" WHERE "id" = 348;
what - get the address type of Drop package
why -  it is where the Devious Delivery end up.



-- *** The Forgotten Gift ***
What are the contents of the Forgotten Gift?
SELECT "id" from "addresses" WHERE "address" = "109 Tileston Street"; - 9873
what - id of the address
why - to get the content from packages table we need the address id.

SELECT "contents" FROM "packages" WHERE "from_address_id" = 9873;
what - contents in the forgotten gift
why - The package is send from 109 Tileston street , to get the content we have to search by this from_address_id

Who has the Forgotten Gift?:

-- What are the contents of the Forgotten Gift?
SELECT "id"
FROM "packages"
WHERE "from_address_id" = (
    SELECT "id"
    from "addresses"
    WHERE "address" = "109 Tileston Street"
);
what - id of forgotten gift - 9523
why - we need to see the package status thats why we need the package id

SELECT "driver_id" FROM "scans" WHERE "package_id" = 9523 ORDER BY "timestamp" DESC LIMIT 1;
what - get the driver id
why - we need to find who pick the package

SELECT "name" FROM "drivers" WHERE "id" = 17;
what - name of the driver
why - As the driver has pick this package he has it


