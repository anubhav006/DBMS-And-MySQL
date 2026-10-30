-- Assignment 9: Aliases and CASE

-- Set-up (given, not a task)
CREATE TABLE exam_result (
    name VARCHAR(20),
    marks INT
);
INSERT INTO exam_result (name, marks) VALUES
    ('Asha', 92),
    ('Rohan', 47),
    ('Neha', 68),
    ('Meera', 33);

-- Task 1: Rename columns with AS
SELECT name AS student_name, marks AS score
FROM exam_result;

-- Task 2: Pass / Fail with CASE
SELECT name, CASE WHEN marks >= 40 THEN 'Pass' ELSE 'Fail' END AS result
FROM exam_result;

-- Task 3: Marks with 5 bonus marks
SELECT name, marks + 5 AS with_bonus
FROM exam_result;
