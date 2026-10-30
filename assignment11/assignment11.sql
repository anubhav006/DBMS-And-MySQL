-- Assignment 11: Other Kinds of Joins

-- Set-up (given, not a task)
CREATE TABLE team (
    team_id INT,
    team_name VARCHAR(20)
);
INSERT INTO team (team_id, team_name) VALUES
    (1, 'Eagles'),
    (2, 'Tigers'),
    (3, 'Lions');
CREATE TABLE player (
    player_name VARCHAR(30),
    team_id INT,
    age INT
);
INSERT INTO player (player_name, team_id, age) VALUES
    ('Asha', 1, 24),
    ('Meera', 1, 22),
    ('Arjun', 2, 27);

-- Task 1: LEFT JOIN: every team with its players
SELECT team.team_name, player.player_name
FROM team
LEFT JOIN player
ON team.team_id = player.team_id
ORDER BY team.team_name, player.player_name;

-- Task 2: CROSS JOIN: every team and player pair
SELECT team.team_name, player.player_name
FROM team
CROSS JOIN player
ORDER BY team.team_name, player.player_name;

-- Task 3: NATURAL JOIN: player with team name
SELECT player_name, team_name
FROM player
NATURAL JOIN team
ORDER BY player_name;
