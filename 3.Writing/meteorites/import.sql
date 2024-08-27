-- import csv
.import --csv meteorites.csv temp
-- remove id column
ALTER TABLE temp
DROP COLUMN "id";

-- update column value '' to NULL for column mass,year,lat,long
UPDATE "temp"
SET "mass"=NULL , "year"=NULL,"lat"=NULL,long=NULL
WHERE "mass"='' OR "year"='' OR "lat" = '' OR long='';
-- update column value two digit after decimal like 70.47 for column mass,lat,long
UPDATE "temp"
SET "mass"=ROUND(mass,2) ,"lat"=ROUND(lat,2),long=ROUND(long,2);
-- Delete meteorites with nametype = 'Relict'
DELETE FROM "temp"
WHERE "nametype" = 'Relict';
-- Create table meteorites

-- Drop the temporary table
-- DROP TABLE "temp";
