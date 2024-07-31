CREATE TABLE passengers(
    "id" INTEGER,
    "firstName" TEXT,
    "lastName" TEXT,
    "age" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE checkins(
    "passenger_id" INTEGER,
    "datetime" NUMERIC CURRENT_TIMESTAMP,
    "flight" TEXT,
    FOREIGN KEY("passenger_id") REFERENCES "passengers"("id")
);

CREATE TABLE airlines(
    "name" TEXT,
    "concourse" TEXT
);

CREATE TABLE flights(
    "number" INTEGER,
    "airline" TEXT,
    "from" TEXT,
    "to" TEXT,
    "departure_time" TEXT,
    "arrival_time" TEXT
);
