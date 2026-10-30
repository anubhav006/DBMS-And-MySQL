-- Assignment 7: Using Aggregate Functions

-- Set-up (given, not a task)
CREATE TABLE sales (
    salesperson VARCHAR(20),
    region VARCHAR(20),
    amount INT
);
INSERT INTO sales (salesperson, region, amount) VALUES
    ('Deepak', 'North', 12000),
    ('Pooja', 'South', 8500),
    ('Deepak', 'South', 9500),
    ('Lata', 'North', 11000);

-- Task 1: Number of sales rows
SELECT COUNT(*) AS num_sales
FROM sales;

-- Task 2: Total of all amounts
SELECT SUM(amount) AS total
FROM sales;

-- Task 3: Highest amount
SELECT MAX(amount) AS highest
FROM sales;
