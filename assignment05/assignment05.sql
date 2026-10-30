-- Assignment 5: Pattern Matching with LIKE

-- Set-up (given, not a task)
CREATE TABLE book (
    title VARCHAR(40),
    category VARCHAR(20),
    copies INT
);
INSERT INTO book (title, category, copies) VALUES
    ('Database Systems', 'Computer', 3),
    ('Digital Electronics', 'Electronics', 2),
    ('Data Structures in C', 'Computer', 2),
    ('Short Stories', 'Literature', 1);

-- Task 1: Titles that start with Data
SELECT title
FROM book
WHERE title LIKE 'Data%';

-- Task 2: Titles that end with C
SELECT title
FROM book
WHERE title LIKE '%C';

-- Task 3: Titles whose second letter is h
SELECT title
FROM book
WHERE title LIKE '_h%';
