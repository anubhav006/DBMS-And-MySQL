-- Assignment 6: Sorting Rows and Removing Repeats

-- Set-up (given, not a task)
CREATE TABLE product (
    product_name VARCHAR(30),
    category VARCHAR(20),
    price INT
);
INSERT INTO product (product_name, category, price) VALUES
    ('Pen', 'Stationery', 15),
    ('Notebook', 'Stationery', 60),
    ('Calculator', 'Electronics', 850),
    ('Bag', 'Office', 500);

-- Task 1: All products sorted by price, highest first
SELECT product_name, price
FROM product
ORDER BY price DESC;

-- Task 2: Each category once, sorted
SELECT DISTINCT category
FROM product
ORDER BY category;

-- Task 3: Two most expensive products
SELECT product_name, price
FROM product
ORDER BY price DESC
LIMIT 2;
