-- Active: 1736276969157@@127.0.0.1@5432@dannys_diner
-- CREATE DATABASE
CREATE DATABASE dannys_dinner;

-- CREATE TABLE sales
CREATE TABLE
    sales (
        "customer_id" VARCHAR(1),
        "order_date" DATE,
        "product_id" INTEGER
    );

-- INSERT INTO dannys_dinner
INSERT INTO
    sales ("customer_id", "order_date", "product_id")
VALUES
    ('A', '2021-01-01', '1'),
    ('A', '2021-01-01', '2'),
    ('A', '2021-01-07', '2'),
    ('A', '2021-01-10', '3'),
    ('A', '2021-01-11', '3'),
    ('A', '2021-01-11', '3'),
    ('B', '2021-01-01', '2'),
    ('B', '2021-01-02', '2'),
    ('B', '2021-01-04', '1'),
    ('B', '2021-01-11', '1'),
    ('B', '2021-01-16', '3'),
    ('B', '2021-02-01', '3'),
    ('C', '2021-01-01', '3'),
    ('C', '2021-01-01', '3'),
    ('C', '2021-01-07', '3');

-- CREATE TABLE menu
CREATE TABLE
    menu (
        "product_id" INTEGER,
        "product_name" VARCHAR(5),
        "price" INTEGER
    );

-- INSERT INTO menu
INSERT INTO
    menu ("product_id", "product_name", "price")
VALUES
    ('1', 'sushi', '10'),
    ('2', 'curry', '15'),
    ('3', 'ramen', '12');

-- CREATE TABLE menu
CREATE TABLE
    members ("customer_id" VARCHAR(1), "join_date" DATE);

-- INSERT INTO members
INSERT INTO
    members ("customer_id", "join_date")
VALUES
    ('A', '2021-01-07'),
    ('B', '2021-01-09');

/*
LIST KEY => 
1. customer_id ON sales FK
2. product_id ON sales FK

3. product_id ON menu PK

4. customer_id ON members PK
 */
-- What is the total amount each customer spent at the restaurant?
SELECT
    customer_id,
    SUM(menu.price) as total_sales
FROM
    sales
    JOIN menu ON sales.product_id = menu.product_id
GROUP BY
    customer_id
ORDER BY
    customer_id;

-- How many days has each customer visited the restaurant?
SELECT
    COUNT(DISTINCT (order_date)) as customer_visit,
    members.customer_id
FROM
    sales
    RIGHT JOIN members ON sales.customer_id = members.customer_id
GROUP BY
    (members.customer_id);

-- What was the first item from the menu purchased by each customer?
WITH
    ordered_sales AS (
        SELECT
            customer_id,
            order_date,
            menu.product_name,
            DENSE_RANK() OVER (
                PARTITION BY
                    sales.customer_id
                ORDER BY
                    sales.order_date
            ) AS rank FROM sales
            JOIN menu ON sales.product_id = menu.product_id
    )
    SELECT customer_id, product_name FROM ordered_sales WHERE rank = 1 GROUP BY customer_id, product_name;


    /*
    
    WITH : to create COMMON TABLE EXPRESSION with mean is current query that we gonna use for main query, its use for reusable query, easy to ride and efficiency
    
    DENSE RANK : for give a rank to rows in result of query base on specific order, not unlike RANK DENSE_RANK not passed rank when found same value, that's mean if 2 rows have same rank, the next rank will directly continues without a gap
    
    OVER : for flexibilty on agregation operator
    
    PARTITION : for split data by group
    
    Solution : 
    Create a Common Table Expression (CTE) called ordered_sales_cte. Within the CTE, create a new column rank and calculate the row number using DENSE_RANK() window function. The PARTITION BY clause divides the data by customer_id, and the ORDER BY clause orders the rows within each partition by order_date.
    In the outer query, select the appropriate columns and apply a filter in the WHERE clause to retrieve only the rows where the rank column equals 1, which represents the first row within each customer_id partition.
    Use the GROUP BY clause to group the result by customer_id and product_name.
     */