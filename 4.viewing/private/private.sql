CREATE TABLE IF NOT EXISTS "cipher"(
    "id" INTEGER,
    "sentence_number" NUMERIC,
    "character_number" NUMERIC,
    "message_length" NUMERIC,
    PRIMARY KEY("id")
);

INSERT INTO "cipher"("sentence_number","character_number","message_length")
    VALUES (14,98,4),
            (114,3,5),
            (618,72,9),
            (630,7,3),
            (932,12,5),
            (2230,50,7),
            (2346,44,10),
            (3041,14,5);


CREATE TABLE "cipher_sentences" AS
SELECT "sentence","character_number","message_length" FROM
"sentences" JOIN "cipher" ON "sentences"."id" = "cipher"."sentence_number";

CREATE VIEW "message" AS
SELECT
substr(
    "sentence","character_number","message_length")
    AS "phrase"
    FROM "cipher_sentences";


