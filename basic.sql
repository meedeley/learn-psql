-- Active: 1736276969157@@127.0.0.1@5432@learn
CREATE DATABASE learn;

/* 
double quote "" is using for table, name, column name....
single quote is using for values

example : INSERT INTO "employees" ("name", "username") VALUES ('Nichola', 'Nik');
 */
-- USE learn; -- if use SQL Client
-- \c learn; -- if use CLI
/* 
to create AUTO_INCREMENT in postgres we can use SERIAL/BIGSERIAL, where automatically creates;
1. AUTO_INCREMENT
2. INTEGER (4 BYTES)
3. NOT NULL
 */
/* 
little bit about constraintm is rule that have data can be consistent; LIKE 
1. NOT NULL
2. Unique
3. PRIMARY KEY
4. FOREIGN KEY - Reference to other column value at another table
5. CHECK 
6. DEFAULT
 */
-- CREATE TABLE users
CREATE TABLE
    users (
        id SERIAL PRIMARY KEY, -- CREATE SERIAL LIKE THIS ITS NOT RECOMMEND NOW
        name VARCHAR(64) NOT NULL,
        username VARCHAR(32) NOT NULL UNIQUE
    )
    -- DESCRIBE TABLE users
SELECT
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH,
    IS_NULLABLE
FROM
    information_schema.columns
WHERE
    TABLE_NAME = 'users';

/* 
Or If Using CLI Just Try This
- \d users

if want to see all table
- \dt
 */
/*
a sequence is a database object that generates a unique series of numbers, typically used for auto-incrementing primary key columns.
 */
-- CREATE SEQUENCE 
CREATE SEQUENCE employees_id_seq;

-- CREATE TABLE employees
CREATE TABLE
    employees (
        id INTEGER PRIMARY KEY DEFAULT nextval ('employees_id_seq') NOT NULL,
        name VARCHAR(64) NOT NULL,
        username VARCHAR(64) NOT NULL
    );

-- CREATE TABLE customers 
CREATE TABLE
    customers (
        id INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
        name VARCHAR(64) NOT NULL,
        username VARCHAR(64) NOT NULL
    );

-- EDIT TABLE customers 
ALTER TABLE customers
ADD COLUMN phone INT;

-- EDIT TABLE users
ALTER TABLE users
ALTER COLUMN name TYPE VARCHAR(255);

-- DROP TABLE customers
DROP TABLE customers;

-- INSERT DATA TO employees
INSERT INTO
    "employees" ("name", "username")
VALUES
    ('Nichola', 'NIK');

-- INSERT MULTIPLE employees
INSERT INTO
    "employees" ("name", "username")
VALUES
    ('JOKO MORRO', 'JOKO'),
    ('BUDI HANDOKO', 'BUDI'),
    ('ELSA JALPASA', 'ECA');

-- SIMPLE SELECT employees;
SELECT
    id,
    name,
    username
FROM
    employees;

-- UPDATE employees
UPDATE employees
SET
    name = 'NICHOLA'
WHERE
    id = 1;

-- MULTIPLE UPDATE employees
UPDATE employees
SET
    name = 'ELSA JAPASA',
    username = 'ECA AURA'
WHERE
    id = 4;

-- DELETE employees;
DELETE FROM employees
WHERE
    id = 4;

-- SHOW TABLES
SELECT
    TABLE_NAME
FROM
    information_schema.tables
WHERE
    table_schema = 'public';

/*
JSON
 */
ALTER TABLE users
ADD COLUMN "details" JSONB;

INSERT INTO
    users ("name", "username", "details")
VALUES
    (
        'Nichola',
        'Nik',
        '{
        "Country" : "Indonesia",
        "Regency" : "East Java",
        "Hobbies" : ["Coding", "Sleep", "Eat"]
    }'
    )
    -- SELECT * users
SELECT
    *
FROM
    users;

-- GET JSON OBJECT FIELD
SELECT
    details - > 'Hobbies'
FROM
    "users";

SELECT
    details - > 'Country'
FROM
    "users";

SELECT
    details - > 'Regency'
FROM
    "users";

-- ALIAS 
SELECT
    id,
    name,
    username as user
FROM
    employees;

-- INDEXING
/* 
Types of Indexes in PostgreSQL

PostgreSQL offers several index types, each suited for different use cases:

1. B-tree Indexes (Default):

The most common and general-purpose index type.
Efficient for equality and range searches (=, <, >, <=, >=, BETWEEN).
Suitable for most data types.
Ordered, so they are also efficient for ORDER BY clauses.

2. Hash Indexes:

Only suitable for equality comparisons (=).
Faster than B-tree indexes for equality lookups in some cases, but less versatile.
Not crash-safe before PostgreSQL 10, so they were rarely used. Now they are crash-safe, but still less versatile.

3. GIN Indexes (Generalized Inverted Index):

Designed for indexing composite values like arrays and full-text search.
Efficient for searching for elements within arrays or for words within documents.
Used with the jsonb_path_ops operator class for JSONB indexing.

4. GiST Indexes (Generalized Search Tree):

Highly versatile and extensible.
Used for indexing geometric data (PostGIS), full-text search, and other complex data types.
Supports various search strategies depending on the data type.

5. BRIN Indexes (Block Range Index):

Designed for very large tables where the data is naturally ordered on the indexed column.
Stores summary information about ranges of pages (blocks), making them much smaller than B-tree indexes.
Suitable for time series data or other append-only data.
 */
-- CREATE INDEXING
CREATE INDEX idx_users_name ON users (name);

-- EXPLAIN ALGO INDEXING
EXPLAIN ANALYSE
SELECT
    *
FROM
    users
WHERE
    NAME = 'NICHOLA';

-- HASH (for where = quantity)
CREATE TABLE
    user_sessions (
        session UUID PRIMARY KEY, -- unique session identifier
        user_id INTEGER NOT NULL,
        start_time TIMESTAMPTZ, -- timestamp with timezone
        end_time TIMESTAMPTZ
    );

-- EDIT COLUMN user_sessions
ALTER TABLE user_sessions
ALTER COLUMN start_time TYPE TIMESTAMPTZ,
ALTER COLUMN end_time TYPE TIMESTAMPTZ;

ALTER TABLE user_sessions
ALTER COLUMN start_time
SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN end_time
SET DEFAULT CURRENT_TIMESTAMP;

-- INSERT DATA user_sessions
INSERT INTO
    user_sessions ("session", "user_id")
VALUES
    ('a1b2c3d4-e5f6-7890-1234-567890abcdef', 1);

-- CREATE INDEXING USER_SESSIONS
CREATE INDEX idx_user_sessions_session_id_hash ON user_sessions USING HASH (session);

-- SELECT TYPE INDEXING
SELECT
    *
FROM
    user_sessions
WHERE
    session = 'a1b2c3d4-e5f6-7890-1234-567890abcdef';

-- EXPLAIN INDEXING
EXPLAIN ANALYSE
SELECT
    *
FROM
    user_sessions
WHERE
    session = 'a1b2c3d4-e5f6-7890-1234-567890abcdef';