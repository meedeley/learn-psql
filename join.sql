-- Active: 1736276969157@@127.0.0.1@5432@learn_join
CREATE DATABASE learn_join;

/* 
A JOIN clause is used when you need to combine data from two or more tables into one data set. Records from both tables are matched based on a condition (also called a JOIN predicate) you specify in the JOIN clause. If the condition is met, the records are included in the output. 

we gonna learn :
1. INNER JOIN - SIMPLE JOIN
2. LEFT JOIN
3. RIGHT JOIN
4. FULL JOIN
 */
-- CREATE SEQUENCE customers
CREATE SEQUENCE customer_id_sec;

-- CREATE TABLE customers
CREATE TABLE
    customers (
        customer_id INT PRIMARY KEY DEFAULT nextval ('customer_id_sec') NOT NULL,
        name VARCHAR(100),
        lastname VARCHAR(100),
        gender VARCHAR(1),
        marital_status VARCHAR(1)
    )
ALTER TABLE customers
ALTER COLUMN marital_status TYPE VARCHAR(10);

--  CREATE SEQUENCE accounts
CREATE SEQUENCE account_id_sec;

-- CREATA TABLE accounts
CREATE TABLE
    accounts (
        account_id INTEGER PRIMARY KEY DEFAULT nextval ('account_id_sec') NOT NULL,
        overdraft_amt INT NOT NULL,
        customer_id INT,
        type_id INT,
        segment VARCHAR(5),
        FOREIGN KEY (customer_id) REFERENCES customers (customer_id) ON DELETE CASCADE
    )
    -- ALTER COLUMN segment 
ALTER TABLE accounts
ALTER COLUMN segment TYPE VARCHAR(20)
-- INSERT TO customers
INSERT INTO
    customers ("name", "lastname", "gender", "marital_status")
VALUES
    ('John', 'Doe', 'M', 'Single'),
    ('Jane', 'Smith', 'F', 'Married'),
    ('Alice', 'Johnson', 'F', 'Single'),
    ('Bob', 'Brown', 'M', 'Married'),
    ('Charlie', 'Taylor', 'M', 'Divorced'),
    ('Daisy', 'White', 'F', 'Single'),
    ('Eve', 'Green', 'F', 'Married'),
    ('Frank', 'Black', 'M', 'Widowed');

-- GET ALL customers
SELECT
    *
FROM
    customers;

-- GET ALL accounts
INSERT INTO
    accounts (
        "overdraft_amt",
        "customer_id",
        "type_id",
        "segment"
    )
VALUES
    (500000.00, 1, 1, 'Retail'),
    (1000000.00, NULL, 2, 'Corporate'), -- NULL for customer_id
    (750000.00, 3, 1, 'SME'),
    (800000.00, NULL, 3, 'Retail'), -- NULL for customer_id
    (1200000.00, 5, 2, 'Corporate'),
    (300000.00, 6, NULL, 'Retail'),
    (250000.00, NULL, 1, 'SME'), -- NULL for customer_id
    (400000.00, 7, 2, 'Corporate'),
    (950000.00, NULL, 3, 'Retail'), -- NULL for customer_id
    (1500000.00, 8, NULL, 'Corporate'),
    (600000.00, NULL, 1, 'SME'), -- NULL for customer_id
    (500000.00, 4, 2, 'Retail'),
    (1000000.00, NULL, 3, 'Corporate'), -- NULL for customer_id
    (700000.00, 2, NULL, 'Retail'),
    (850000.00, NULL, 2, 'SME'), -- NULL for customer_id
    (550000.00, 1, 3, 'Retail'),
    (950000.00, NULL, 1, 'Corporate'), -- NULL for customer_id
    (350000.00, 3, 2, 'SME'),
    (1500000.00, NULL, 3, 'Corporate'), -- NULL for customer_id
    (900000.00, 4, NULL, 'Retail'),
    (500000.00, 6, 2, 'SME'),
    (1200000.00, NULL, 1, 'Corporate'), -- NULL for customer_id
    (800000.00, 7, 3, 'Retail'),
    (650000.00, 8, 2, 'Corporate'),
    (700000.00, NULL, NULL, 'Retail'), -- NULL for customer_id dan type_id
    (400000.00, 2, 1, 'SME'),
    (750000.00, NULL, 2, 'Corporate'), -- NULL for customer_id
    (300000.00, 5, NULL, 'Retail'),
    (1000000.00, NULL, 1, 'SME'), -- NULL for customer_id
    (450000.00, 6, 3, 'Corporate');

-- GET DATA accounts
SELECT
    *
FROM
    accounts;

-- INNER JOIN
/* 

 */
-- GET ALL DATA WHERE SELECT FROM TABLE DEPEDENCY
SELECT
    *
FROM
    accounts
    JOIN customers ON customers.customer_id = accounts.customer_id;

-- GET SOME DATA
SELECT
    account_id,
    overdraft_amt,
    customers.name,
    customers.lastname,
    customers.marital_status
FROM
    accounts
    join customers ON customers.customer_id = accounts.customer_id;

-- GET SOME DATA USING ALIAS
SELECT
    account_id,
    overdraft_amt,
    c.name,
    c.lastname,
    c.marital_status
FROM
    accounts
    join customers as c ON c.customer_id = accounts.customer_id;

-- GET ALL DATA WHERE SELECT FROM NON-DEPENDENT TABLES
SELECT * FROM customers JOIN accounts ON accounts.customer_id = customers.customer_id;
SELECT * FROM customers JOIN accounts ON customers.customer_id = accounts.customer_id; 

-- GET SOME DATA 
SELECT a.account_id, name FROM customers JOIN accounts as a ON customers.customer_id = a.customer_id; 
