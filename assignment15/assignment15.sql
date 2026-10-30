-- Assignment 15: Indexes and Adding a Row

-- Set-up (given, not a task)
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    city VARCHAR(20)
);
INSERT INTO customer (customer_id, name, city) VALUES
    (1, 'Kiran', 'Kochi'),
    (2, 'Deepak', 'Delhi'),
    (3, 'Lata', 'Mumbai'),
    (4, 'Asha', 'Delhi');

-- Task 1: Create the index idx_city
CREATE INDEX idx_city ON customer (city);

-- Task 2: Customers who live in Delhi, sorted by name
SELECT name
FROM customer
WHERE city = 'Delhi'
ORDER BY name;

-- Task 3: Add customer 5, Arjun, Pune
INSERT INTO customer (customer_id, name, city) VALUES
    (5, 'Arjun', 'Pune');
SELECT *
FROM customer; -- check the table
