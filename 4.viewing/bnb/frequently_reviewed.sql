CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id","property_type","host_name",COUNT("comments") AS "total_review" FROM "listings"
JOIN "reviews" ON "listings"."id" = "reviews"."listing_id"
GROUP BY "listing_id"
ORDER BY "total_review" DESC LIMIT 100;
