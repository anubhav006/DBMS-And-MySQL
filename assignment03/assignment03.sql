-- Assignment 3: Selecting Columns and Rows with WHERE

-- Set-up (given, not a task)
CREATE TABLE student (
    roll_no INT,
    name VARCHAR(30),
    marks INT
);
INSERT INTO student (roll_no, name, marks) VALUES
    (101, 'Asha', 78),
    (102, 'Rohan', 64),
    (103, 'Neha', 88),
    (104, 'Deepak', 52);

-- Task 1: Show only name and marks
SELECT name, marks
FROM student;

-- Task 2: Students with marks greater than 60
SELECT *
FROM student
WHERE marks > 60;

-- Task 3: Name of the student whose roll_no is 103
SELECT name
FROM student
WHERE roll_no = 103;
