CREATE TABLE "users"(
    "user_id" INTEGER,
    "name" TEXT NOT NULL,
    "username" TEXT UNIQUE NOT NULL,
    "password" TEXT NOT NULL,
    PRIMARY KEY("user_id")
);
CREATE TABLE "companies"(
    "company_id" INTEGER,
    "name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    PRIMARY KEY("company_id")
);
CREATE TABLE "conntection_with_people"(
    "user_id" INTEGER,
    "friend_id" INTEGER,
    FOREIGN KEY("user_id") REFERENCES "users"("user_id")
);
CREATE TABLE "connection_with_people"(
    "user_id" INTEGER,
    "friend_id" INTEGER,
    FOREIGN KEY("user_id") REFERENCES "users"("user_id")
);
CREATE TABLE "connection_with_schools"(
    "user_id" INTEGER,
    "school_id" INTEGER,
    "user_name" TEXT NOT NULL,
    "school_name" TEXT NOT NULL,
    "start_date" TEXT NOT NULL,
    "end_date" TEXT,
    FOREIGN KEY("user_id") REFERENCES "users"("user_id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("school_id")
);
CREATE TABLE "connection_with_companies"(
    "user_id" INTEGER,
    "company_id" INTEGER,
    "user_name" TEXT NOT NULL,
    "company_name" TEXT NOT NULL,
    "join_date" TEXT NOT NULL,
    "resign_date" TEXT,
    "designation" TEXT NOT NULL,
    FOREIGN KEY("user_id") REFERENCES "users"("user_id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("company_id")
);
