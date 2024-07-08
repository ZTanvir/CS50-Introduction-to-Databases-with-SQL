SELECT "title","air_date" from "episodes" WHERE "air_date" LIKE "%-12-%";
SELECT "title","air_date" from "episodes" WHERE strftime("%m",air_date) = "12";
