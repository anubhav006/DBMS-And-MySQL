-- Assignment 8: Grouping Rows and Using HAVING

-- Set-up (given, not a task)
CREATE TABLE shop_sale (
    salesperson VARCHAR(20),
    region VARCHAR(20),
    amount INT
);
INSERT INTO shop_sale (salesperson, region, amount) VALUES
    ('Deepak', 'North', 12000),
    ('Pooja', 'South', 8500),
    ('Deepak', 'South', 9500),
    ('Lata', 'North', 11000);

-- Task 1: Number of sales in each region
SELECT region, COUNT(*) AS num_sales
FROM shop_sale
GROUP BY region
ORDER BY region;

-- Task 2: Total amount in each region
SELECT region, SUM(amount) AS total
FROM shop_sale
GROUP BY region
ORDER BY region;

-- Task 3: Regions with total more than 20000 (HAVING)
SELECT region, SUM(amount) AS total
FROM shop_sale
GROUP BY region
HAVING SUM(amount) > 20000
ORDER BY region;
