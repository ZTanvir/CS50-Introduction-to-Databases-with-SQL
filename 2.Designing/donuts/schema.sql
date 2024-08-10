CREATE TABLE "ingredient"(
    "ingredient_id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "price_in_pound" NUMERIC NOT NULL,
    PRIMARY KEY("ingredient_id")
);
CREATE TABLE "donuts"(
    "donut_id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "is_gluten" NUMERIC NOT NULL,
    "price_in_cent" NUMERIC NOT NULL,
    "ingredient_id" INTEGER NOT NULL,
    PRIMARY KEY("donut_id"),
    FOREIGN KEY("ingredient_id") REFERENCES "ingredient"("ingredient_id")
);
CREATE TABLE "orders"(
    "order_id" INTEGER NOT NULL,
    "donuts_id" INTEGER NOT NULL,
    PRIMARY KEY("order_id"),
    FOREIGN KEY("donuts_id") REFERENCES "donuts"("donuts_id")
);
CREATE TABLE "customers"(
    "customer_id" INTEGER NOT NULL,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "order_id" INTEGER NOT NULL,
    PRIMARY KEY("customer_id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("order_id")
);
