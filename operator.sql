-- Active: 1736276969157@@127.0.0.1@5432@learn_operator
CREATE DATABASE learn_operator;
/*
you will learn
1. WHERE
2. WHERE IN
3. WHERE NULL
4. WHERE BEETWEEN
5. LIMIT
6. AND OPERATOR
7. OR OPERATOR
8. DISTINC
 */
-- CREATE SEQUENCE products
CREATE SEQUENCE product_id_sec;

-- CREATE TABLE products
CREATE TABLE
    products (
        id INTEGER PRIMARY KEY DEFAULT nextval ('product_id_sec'),
        name VARCHAR(64),
        price DECIMAL(15, 3)
    )
    -- INSERT DATA TO products
INSERT INTO
    products ("name", "price")
VALUES
    ('Mie Goreng Original', 10.000),
    ('Mie Goreng Pedas', 12.000),
    ('Mie Goreng Special', 14.000),
    ('Mie Goreng Keju', 15.000),
    ('Mie Goreng Telur', 13.000),
    ('Mie Goreng Bakso', 16.000),
    ('Mie Goreng Sosis', 17.000),
    ('Mie Goreng Udang', 20.000),
    ('Mie Kuah Original', 11.000),
    ('Mie Kuah Pedas', 12.000),
    ('Mie Kuah Bakso', 18.000),
    ('Mie Kuah Ayam', 19.000),
    ('Mie Kuah Seafood', 25.000),
    ('Mie Yamin Sederhana', 10.500),
    ('Mie Yamin Komplit', 15.000),
    ('Mie Yamin Bakso', 13.500),
    ('Mie Yamin Pedas', 12.500),
    ('Mie Yamin Telur', 14.500),
    ('Mie Ayam Kampung', 18.000),
    ('Mie Ayam Jumbo', 25.000),
    ('Mie Ayam Ceker', 20.000),
    ('Mie Ayam Rica-rica', 22.000),
    ('Mie Ayam Jamur', 19.000),
    ('Mie Ayam Mozzarella', 28.000),
    ('Mie Ayam Mercon', 21.000),
    ('Mie Ayam BBQ', 24.000),
    ('Mie Ayam Spesial', 27.000),
    ('Mie Ayam Kari', 23.000),
    ('Mie Ayam Lada Hitam', 22.500),
    ('Mie Pedas Gila', 18.000),
    ('Mie Pedas Level 1', 15.000),
    ('Mie Pedas Level 2', 17.000),
    ('Mie Pedas Level 3', 19.000),
    ('Mie Pedas Level 4', 21.000),
    ('Mie Udang Saus Tiram', 30.000),
    ('Mie Udang Sambal Matah', 32.000),
    ('Mie Udang Asam Manis', 28.000),
    ('Mie Seafood Komplit', 35.000),
    ('Mie Ayam Geprek', 25.000),
    ('Mie Ayam Goreng Tepung', 22.000);

-- DELETE ALL ITEM ON products
DELETE FROM products;

-- SELECT ALL products
SELECT
    *
FROM
    products;

-- ARITMETIC OPERATOR
SELECT
    id,
    name,
    price + 1.000 AS after_adjust,
    price as real_price
FROM
    products;

SELECT
    id,
    name,
    price - 1.000 AS before_adjut,
    price as real_price
FROM
    products;

SELECT
    id,
    name,
    price * 0.5 AS discount,
    price as real_price
FROM
    products;

SELECT
    id,
    name,
    price / 2.0 AS discount,
    price as real_price
FROM
    products;

-- STRING OPERATOR
SELECT
    id,
    name || ' Sedap Spesial' as new_name -- thats mean name + ' Sedap Spesial'
FROM
    products
WHERE
    id = 1;

-- WHERE CLAUSE
SELECT
    *
FROM
    products
WHERE
    name = 'Mie Goreng Original';

-- WHERE OPERATOR 
SELECT
    *
FROM
    products
WHERE
    price > 10.000;

-- AND OR WHERE OPERAOTR
SELECT
    *
FROM
    products
WHERE
    price = 10.000
    AND name = 'Mie Goreng Original';

SELECT
    *
FROM
    products
WHERE
    price = 10.000
    OR price = 12.000;

-- WHERE BETWEEN OPERATOR (to search between value)
SELECT
    id,
    name,
    price
FROM
    products
WHERE
    price BETWEEN 10.000 AND 12.000;

SELECT
    id,
    name,
    price
FROM
    products
WHERE
    price BETWEEN 12.000 AND 15.000;

-- WHERE NOT BETWEEN
SELECT
    id,
    name,
    price
FROM
    products
WHERE
    price NOT BETWEEN 10.000 AND 12.000;

-- WHERE IN (to search same value)
SELECT
    id,
    name,
    price
FROM
    products
WHERE
    price IN (15.000);

-- ORDER BY ASC (from smallest to biggest)
SELECT
    *
FROM
    products
ORDER BY
    price ASC;

-- ORDER BY DESC (from biggest to smallest)
SELECT
    *
FROM
    products
ORDER BY
    price DESC;

-- LIMIT CLAUSE
/*
Querying all data its not best practice, the best way we can do is adjust limit to quering data
 */
SELECT
    *
FROM
    products
LIMIT
    5;

-- SELECT DISTINCT (if data duplicate you can use this)
SELECT DISTINCT
    *
FROM
    products;

-- CREATE SEQUENCE 
CREATE SEQUENCE discount_id_sec;

-- CREATE TABLE discount;
CREATE TABLE
    discounts (
        id INTEGER PRIMARY KEY DEFAULT nextval ('discount_id_sec'),
        name VARCHAR(64),
        price INTEGER NOT NULL
    );

-- INSERT TO discounts
INSERT INTO
    discounts ("name", "price")
VALUES
    ('PROMO AKHIR TAHUN', 20000),
    (null, 40000);

-- WHERE NULL OPERATOR
SELECT
    *
FROM
    discounts
WHERE
    name IS NULL;

-- WHERE NOT NULL OPERATOR
SELECT
    *
FROM
    discounts
WHERE
    name IS NOT NULL;

-- DISTINCT
/* 
if you just want to see the unique price without displaying other columns, just use:
 */
SELECT
    id,
    name,
    DISTINCT price
FROM
    discounts;

/* 
If you only want unique prices (price), and don't care about id or name columns, you can use GROUP BY

discussed in grouping.sql
 */