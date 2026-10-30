-- Assignment 4: Combining Conditions

-- Set-up (given, not a task)
CREATE TABLE player (
    name VARCHAR(30),
    team VARCHAR(20),
    runs INT
);
INSERT INTO player (name, team, runs) VALUES
    ('Asha', 'Eagles', 45),
    ('Meera', 'Tigers', 72),
    ('Arjun', 'Eagles', 30),
    ('Kiran', 'Lions', 88);

-- Task 1: Eagles players with more than 35 runs (AND)
SELECT name, runs
FROM player
WHERE team = 'Eagles' AND runs > 35;

-- Task 2: Runs between 40 and 80 (BETWEEN)
SELECT name, runs
FROM player
WHERE runs BETWEEN 40 AND 80;

-- Task 3: Players of Tigers or Lions (IN)
SELECT name, team
FROM player
WHERE team IN ('Tigers', 'Lions');
