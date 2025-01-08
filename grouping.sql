-- Active: 1736276969157@@127.0.0.1@5432@learn_grouping
CREATE DATABASE learn_grouping;

/* 
in grouping you will learn
1. Aggregate Function
2. Group BY
3. HAVING
 */
-- CREATE SEQUENCE 
CREATE SEQUENCE fruit_id_sec;

-- CREATE TABLE
CREATE TABLE
    fruits (
        id INTEGER PRIMARY KEY DEFAULT nextval ('fruit_id_sec') NOT NULL,
        weight INTEGER,
        quantity INTEGER
    );

-- ALTER COLUMN
ALTER TABLE fruits
ALTER COLUMN weight
SET
    NOT NULL,
ALTER COLUMN quantity
SET
    NOT NULL;

-- ADD COLUMN
ALTER TABLE fruits
ADD COLUMN name VARCHAR(255);

ALTER TABLE fruits
ALTER COLUMN name
SET
    NOT NULL;

INSERT INTO
    fruits ("name", "weight", "quantity")
VALUES
    ('Apple', 150, 10),
    ('Banana', 120, 20),
    ('Orange', 200, 15),
    ('Grapes', 50, 30),
    ('Mango', 300, 8),
    ('Pineapple', 1000, 3),
    ('Papaya', 800, 5),
    ('Watermelon', 5000, 2),
    ('Strawberry', 15, 50),
    ('Blueberry', 10, 40),
    ('Cherry', 8, 60),
    ('Pear', 250, 12),
    ('Peach', 200, 10),
    ('Kiwi', 100, 20),
    ('Lime', 50, 25),
    ('Lemon', 80, 18),
    ('Coconut', 1500, 4),
    ('Avocado', 250, 10),
    ('Guava', 300, 15),
    ('Pomegranate', 400, 7),
    ('Dragonfruit', 600, 6),
    ('Raspberry', 12, 45),
    ('Blackberry', 12, 40),
    ('Durian', 2500, 1),
    ('Jackfruit', 8000, 1),
    ('Starfruit', 200, 10),
    ('Fig', 50, 20),
    ('Dates', 10, 100),
    ('Lychee', 15, 35),
    ('Cranberry', 10, 50);

-- GET ALL FRUITS
SELECT
    id,
    name,
    weight,
    quantity
FROM
    fruits;

-- AGREGRATION FUNCTION
/* 
https://www.postgresql.org/docs/current/functions-aggregate.html
 */
-- COUNT
SELECT
    COUNT(id) AS "Total Fruit"
FROM
    fruits;

-- AVG (AVERAGE)
SELECT
    AVG(weight) AS "AVERAGE WEIGHT",
    AVG(quantity) AS "AVERAGE QUANTITY"
FROM
    fruits;

-- MAX
SELECT
    MAX(quantity) AS "MOST QUANTITY PRODUCT"
FROM
    fruits;

-- MIN
SELECT
    MIN(quantity) AS "MIN QUANTITY PRODUCT"
FROM
    fruits;

/*
Sometimes when aggregating, we want the data to be grouped based on certain criteria.

For example, we want to see the average product price, but we want it per category

Or we want to see the total of all products, but per category
 */
-- CREATE TABLE orders
CREATE TABLE
    orders (
        id SERIAL PRIMARY KEY,
        product_name VARCHAR(100),
        customer_name VARCHAR(100),
        quantity INT
    );

INSERT INTO
    orders ("product_name", "customer_name", "quantity")
VALUES
    ('Product A', 'John', 5),
    ('Product B', 'Alice', 3),
    ('Product A', 'Bob', 2),
    ('Product B', 'John', 4),
    ('Product C', 'Alice', 6);

-- PRACTICE SUM
SELECT
    product_name,
    SUM(quantity) as total_sold
FROM
    orders
GROUP BY
    product_name;

-- OTHER EXAMPLE
SELECT
    name,
    AVG(quantity) as "AVERAGE QUANTITY"
FROM
    fruits
GROUP BY
    name;

SELECT
    customer_name as name,
    AVG(quantity) as total
FROM
    orders
GROUP BY
    customer_name;

-- HAVING
/* 
Sometimes we want to filter the data that we have grouped.
For example, we want to display sales data with data above 3
If we use WHERE in SELECT, this cannot be done       
 */