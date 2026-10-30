-- Assignment 13: UNION and INTERSECT

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

-- Task 1: UNION: all names once
SELECT student_name
FROM club_a
UNION
SELECT student_name
FROM club_b
ORDER BY student_name;

-- Task 2: INTERSECT: names in both clubs
SELECT student_name
FROM club_a
INTERSECT
SELECT student_name
FROM club_b
ORDER BY student_name;

-- Task 3: UNION ALL: all names with repeats
SELECT student_name
FROM club_a
UNION ALL
SELECT student_name
FROM club_b
ORDER BY student_name;
