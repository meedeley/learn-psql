-- Active: 1736276969157@@127.0.0.1@5432@learn_relationship
CREATE DATABASE learn_relationship;

/* 
when we create a relationship we definitely need a foreign key constraint


FOREIGN KEY : A column in a table that refers to the primary key of another table. Foreign keys are used to link data between tables and establish relational relationships between them.
 */
-- ONE TO ONE
-- CREATE SEQUENCE user_id_sec;
CREATE SEQUENCE user_id_sec;

-- CREATE TABLE users
CREATE TABLE
    users (
        id INTEGER PRIMARY KEY DEFAULT nextval ('user_id_sec'),
        name VARCHAR(64) NOT NULL
    )
    -- INSERT TO TABLE users
INSERT INTO
    users ("name")
VALUES
    ('Nichola'),
    ('Joko'),
    ('Budi');

SELECT
    *
FROM
    users;

-- CREATE SEQUNCE user_profile_sequence
CREATE SEQUENCE user_profile_sec;

-- CREATE TABLE user_profiles
CREATE TABLE
    user_profiles (
        id INTEGER PRIMARY KEY DEFAULT nextval ('user_profile_sec'),
        user_id INT UNIQUE, -- set unique for constraing if 1 - 1 relationship
        bio TEXT,
        FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
    )
    -- INSERT TO user_profiles
INSERT INTO
    user_profiles ("user_id", "bio")
VALUES
    (1, 'Nama Saya Nichola'),
    (2, 'Nama Saya Joko'),
    (3, 'Nama Saya Budi');

SELECT
    *
FROM
    user_profiles;

-- INSERT AGAIN AT SAME user_id (error duplicate)
INSERT INTO
    user_profiles ("user_id", "bio")
VALUES
    (1, 'Nama Saya Nichola ERROR LAGI'),
    (2, 'Nama Saya Joko ERROR LAGI'),
    (3, 'Nama Saya Budi ERROR LAGI')
    -- ONE TO MANY
    -- CREATE SEQUENCE FOR customers
    CREATE SEQUENCE customer_id_sec;

-- CREATE TABLE customers
CREATE TABLE
    customers (
        id INTEGER PRIMARY KEY DEFAULT nextval ('customer_id_sec') NOT NULL,
        name VARCHAR(64) NOT NULL
    );

INSERT INTO
    customers ("name")
VALUES
    ('Nichola'),
    ('Joko'),
    ('Budi');

-- SELECT customers
SELECT
    *
FROM
    customers;

-- CREATE SEQUENCE FOR orders
CREATE SEQUENCE order_id_sec;

-- CREATE TABLE detail_customers
CREATE TABLE
    detail_customers (
        id INTEGER PRIMARY KEY DEFAULT nextval ('order_id_sec') NOT NULL,
        customer_id INT,
        bio TEXT,
        FOREIGN KEY (customer_id) REFERENCES customers (id) ON DELETE SET NULL
    );

-- INSERT TO detail_customers
INSERT INTO
    detail_customers ("customer_id", "bio")
VALUES
    (1, 'Halo Saya Nichola'),
    (2, 'Halo Saya Joko'),
    (3, 'Halo Saya Budi');

-- GET ALL detail_customers
SELECT
    *
FROM
    detail_customers
INSERT INTO
    detail_customers ("customer_id", "bio")
VALUES
    (1, 'Halo Saya Nichola LAGI'),
    (2, 'Halo Saya Joko LAGI'),
    (3, 'Halo Saya Budi LAGI');

INSERT INTO
    detail_customers ("customer_id", "bio")
VALUES
    (1, 'Halo Saya Nichola LAGI LAGI'),
    (2, 'Halo Saya Joko LAGI LAGI'),
    (3, 'Halo Saya Budi LAGI LAGI');

-- MANY TO MANY
/* 
The PIVOT operator in SQL Server and Oracle is an extremely useful technique that transforms table rows into columns. Not only does the PIVOT operator improve the readability and interpretation of query results, but it also makes it easier to understand data trends by using aggregations to create pivot tables or cross-tabulations. These pivot tables are particularly helpful in reports that require nice visualizations. 

What is pivot?
Pivoting is a technique in SQL that is used to transform rows into columns in tabular data. In SQL Server and Oracle, pivoting is done with the PIVOT operator. The syntax for the SQL PIVOT operator, which is shown below, has three main parts:
 */
-- CREATE SEQUENCE products
CREATE SEQUENCE product_id_sec;

-- CREATE TABLE products
CREATE TABLE
    products (
        id INTEGER PRIMARY KEY DEFAULT nextval ('product_id_sec') NOT NULL,
        name VARCHAR(64) NOT NULL,
        price DECIMAL(10, 2) NOT NULL
    );

-- CREATE SEQUENCE transactions 
CREATE SEQUENCE transaction_id_sec;

-- CREATE TABLE transactions
CREATE TABLE
    transactions (
        id INTEGER PRIMARY KEY DEFAULT nextval ('transaction_id_sec') NOT NULL,
        data DATE NOT NULL
    )

-- RENAME COLUMN transactions
ALTER TABLE transactions 
    RENAME COLUMN data to date;
    -- CREATE PIVOT TABLE transaction_details
CREATE TABLE
    transaction_details (
        transaction_id INT NOT NULL,
        product_id INT NOT NULL,
        quantity INT NOT NULL,
        PRIMARY KEY (transaction_id, product_id), -- COMPOSITE KEY 
        FOREIGN KEY (transaction_id) REFERENCES transactions (id) ON DELETE CASCADE,
        FOREIGN KEY (product_id) REFERENCES products (id) ON DELETE CASCADE
    )
    -- INSERT TO products 
INSERT INTO
    products ("name", "price")
VALUES
    ('Laptop', 1500000),
    ('Mouse', 2500000),
    ('Keyboard', 500000),
    ('Monitor', 3000000);

INSERT INTO
    transactions ("date")
VALUES
    ('2025-01-01'),
    ('2025-01-02'),
    ('2025-01-03');

INSERT INTO transaction_details ("transaction_id", "product_id", "quantity") VALUES 
    (1, 1, 1),
    (1,2,4),
    (2,3,1),
    (3,3,3);

SELECT * FROM products;
SELECT * FROM transactions;
SELECT * FROM transaction_details;