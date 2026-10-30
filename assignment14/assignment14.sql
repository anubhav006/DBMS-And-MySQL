-- Assignment 14: Creating and Using a View

-- Set-up (given, not a task)
CREATE TABLE score (
    name VARCHAR(30),
    subject VARCHAR(20),
    marks INT
);
INSERT INTO score (name, subject, marks) VALUES
    ('Asha', 'Maths', 78),
    ('Rohan', 'Maths', 64),
    ('Neha', 'Maths', 88),
    ('Kiran', 'Maths', 52);

-- Task 1: Create the view high_scores
CREATE VIEW high_scores AS
SELECT name, marks
FROM score
WHERE marks >= 70;

-- Task 2: Show all rows of the view
SELECT *
FROM high_scores;

-- Task 3: Show only the names, sorted
SELECT name
FROM high_scores
ORDER BY name;
