-- Assignment 12: Using a Subquery

-- Set-up (given, not a task)
CREATE TABLE club_a (
    student_name VARCHAR(30)
);
INSERT INTO club_a (student_name) VALUES
    ('Asha'),
    ('Rohan'),
    ('Neha');
CREATE TABLE club_b (
    student_name VARCHAR(30)
);
INSERT INTO club_b (student_name) VALUES
    ('Neha'),
    ('Pooja'),
    ('Meera');

-- Task 1: Names in club_a that are also in club_b
SELECT student_name
FROM club_a
WHERE student_name IN (SELECT student_name
FROM club_b);

-- Task 2: Number of names in club_b
SELECT COUNT(*) AS members
FROM club_b;

-- Task 3: Names in club_a, sorted
SELECT student_name
FROM club_a
ORDER BY student_name;
