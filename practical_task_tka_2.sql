
-- Part A - Database & Table Creation


-- Task 1 - Create database
CREATE DATABASE ecommerce_db;

-- Task 2 - Select database
USE ecommerce_db;

-- Task 3 - Create products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    city VARCHAR(50),
    status VARCHAR(20)
);

-- Task 4 - Display table structure
DESC products;

-- Task 5 - Display all tables
SHOW TABLES;



-- Part B - INSERT Operations


-- Task 6
INSERT INTO products
VALUES (201, 'Galaxy M55', 'Mobile', 'Samsung', 32000, 15, 'Pune', 'Available');

-- Task 7
INSERT INTO products
VALUES (202, 'iPhone 15', 'Mobile', 'Apple', 65000, 8, 'Mumbai', 'Available');

-- Task 8
INSERT INTO products
VALUES (203, 'Moto Edge 50', 'Mobile', 'Motorola', 28000, 20, 'Pune', 'Available');

-- Task 9
INSERT INTO products
VALUES (204, 'Inspiron 15', 'Laptop', 'Dell', 58000, 6, 'Nashik', 'Available');

-- Task 10
INSERT INTO products
VALUES (205, 'IdeaPad Slim 3', 'Laptop', 'Lenovo', 45000, 12, 'Mumbai', 'Available');

-- Task 11
INSERT INTO products
VALUES (206, 'Galaxy Watch 6', 'Watch', 'Samsung', 22000, 4, 'Pune', 'Out of Stock');

-- Task 12
INSERT INTO products
VALUES (207, 'Apple Watch SE', 'Watch', 'Apple', 30000, 10, 'Mumbai', 'Available');

-- Task 13
INSERT INTO products
VALUES (208, 'Redmi Pad', 'Tablet', 'Xiaomi', 24000, 18, 'Pune', 'Available');

-- Task 14
INSERT INTO products
VALUES (209, 'OnePlus Pad', 'Tablet', 'OnePlus', 35000, 5, 'Nashik', 'Available');

-- Task 15
INSERT INTO products
VALUES (210, 'Bluetooth Speaker', 'Accessories', 'JBL', 7000, 25, 'Mumbai', 'Available');



-- Part C - Basic SELECT & Operator Practice


-- Task 16 - Display all records
SELECT * FROM products;

-- Task 17 - Display only product name
SELECT product_name FROM products;

-- Task 18 - Display product name and price
SELECT product_name, price FROM products;

-- Task 19 - Display product name, category, brand and price
SELECT product_name, category, brand, price
FROM products;

-- Task 20 - Products available in Pune
SELECT * FROM products
WHERE city = 'Pune';

-- Task 21 - Products available in Mumbai
SELECT * FROM products
WHERE city = 'Mumbai';

-- Task 22 - All Mobile products
SELECT * FROM products
WHERE category = 'Mobile';

-- Task 23 - All Laptop products
SELECT * FROM products
WHERE category = 'Laptop';

-- Task 24 - Price greater than 30000
SELECT * FROM products
WHERE price > 30000;

-- Task 25 - Price less than 30000
SELECT * FROM products
WHERE price < 30000;

-- Task 26 - Price equal to 35000
SELECT * FROM products
WHERE price = 35000;

-- Task 27 - Price greater than or equal to 45000
SELECT * FROM products
WHERE price >= 45000;

-- Task 28 - Price less than or equal to 30000
SELECT * FROM products
WHERE price <= 30000;

-- Task 29 - Quantity greater than 10
SELECT * FROM products
WHERE quantity > 10;

-- Task 30 - Quantity less than 10
SELECT * FROM products
WHERE quantity < 10;


-- Part D - Logical Operators


-- Task 31 - Pune AND Mobile
SELECT * FROM products
WHERE city = 'Pune'
AND category = 'Mobile';

-- Task 32 - Mumbai AND Available
SELECT * FROM products
WHERE city = 'Mumbai'
AND status = 'Available';

-- Task 33 - Price > 30000 AND quantity > 5
SELECT * FROM products
WHERE price > 30000
AND quantity > 5;

-- Task 34 - Price between 30000 and 60000 using AND
SELECT * FROM products
WHERE price >= 30000
AND price <= 60000;

-- Task 35 - Pune OR Mumbai
SELECT * FROM products
WHERE city = 'Pune'
OR city = 'Mumbai';

-- Task 36 - Mobile OR Laptop
SELECT * FROM products
WHERE category = 'Mobile'
OR category = 'Laptop';

-- Task 37 - Quantity < 10 OR price > 50000
SELECT * FROM products
WHERE quantity < 10
OR price > 50000;

-- Task 38 - Mobile AND price > 30000
SELECT * FROM products
WHERE category = 'Mobile'
AND price > 30000;

-- Task 39 - Samsung OR Apple
SELECT * FROM products
WHERE brand = 'Samsung'
OR brand = 'Apple';

-- Task 40 - Pune AND Available AND quantity > 10
SELECT * FROM products
WHERE city = 'Pune'
AND status = 'Available'
AND quantity > 10;



-- Part E - Slightly Higher Operator Logic


-- Task 41 - Price BETWEEN 25000 and 50000
SELECT * FROM products
WHERE price BETWEEN 25000 AND 50000;

-- Task 42 - Quantity BETWEEN 5 and 15
SELECT * FROM products
WHERE quantity BETWEEN 5 AND 15;

-- Task 43 - Category IN Mobile, Laptop, Tablet
SELECT * FROM products
WHERE category IN ('Mobile', 'Laptop', 'Tablet');

-- Task 44 - City IN Pune, Mumbai
SELECT * FROM products
WHERE city IN ('Pune', 'Mumbai');

-- Task 45 - Brand NOT Samsung
SELECT * FROM products
WHERE NOT brand = 'Samsung';

-- Task 46 - Status NOT Out of Stock
SELECT * FROM products
WHERE status <> 'Out of Stock';

-- Task 47 - Price NOT EQUAL TO 30000
SELECT * FROM products
WHERE price <> 30000;

-- Task 48 - Product name starts with Galaxy
SELECT * FROM products
WHERE product_name LIKE 'Galaxy%';

-- Task 49 - Product name contains Pad
SELECT * FROM products
WHERE product_name LIKE '%Pad%';

-- Task 50 - Mobile AND (price > 30000 OR quantity > 15)
SELECT * FROM products
WHERE category = 'Mobile'
AND (price > 30000 OR quantity > 15);



-- Part F - UPDATE Operations


-- Task 51 - Galaxy M55 price 32000 -> 34000
UPDATE products
SET price = 34000
WHERE product_id = 201;

-- Task 52 - iPhone 15 quantity -> 12
UPDATE products
SET quantity = 12
WHERE product_id = 202;

-- Task 53 - Galaxy Watch 6 -> Available
UPDATE products
SET status = 'Available'
WHERE product_id = 206;

-- Task 54 - Increase price of all Mobile products by 2000
UPDATE products
SET price = price + 2000
WHERE category = 'Mobile';

-- Task 55 - Increase quantity of all Pune products by 5
UPDATE products
SET quantity = quantity + 5
WHERE city = 'Pune';

-- Task 56 - Quantity less than 5 -> Out of Stock
UPDATE products
SET status = 'Out of Stock'
WHERE quantity < 5;


-- Part G - DELETE Operations


-- Task 57 - Delete product_id 210
DELETE FROM products
WHERE product_id = 210;

-- Task 58 - Delete products with price less than 8000
DELETE FROM products
WHERE price < 8000;

-- Task 59 - Delete Out of Stock AND quantity < 5
DELETE FROM products
WHERE status = 'Out of Stock'
AND quantity < 5;

-- Task 60 - Delete Tablets with price > 30000
DELETE FROM products
WHERE category = 'Tablet'
AND price > 30000;