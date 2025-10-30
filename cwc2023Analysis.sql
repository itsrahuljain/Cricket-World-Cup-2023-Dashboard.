select * from matches limit 10

--total teams
SELECT "team_a" AS team FROM matches
UNION
SELECT "team_b" AS team FROM matches;

--total matches played
SELECT team, COUNT(*) as matches_played FROM (
    SELECT "team_a" AS team FROM matches
    UNION ALL
    SELECT "team_b" AS team FROM matches
) AS all_teams
GROUP BY team
ORDER BY matches_played DESC;

--total wins by team
SELECT "wining_team", COUNT(*) as wins
FROM matches
GROUP BY "wining_team"
ORDER BY wins DESC;

--Top MOM player awards
SELECT "man_of_the_match", COUNT(*) as awards
FROM matches
GROUP BY "man_of_the_match"
ORDER BY awards DESC
LIMIT 10;

--Top venues by number of matches
SELECT "stadium", COUNT(*) as total_matches
FROM matches
GROUP BY "stadium"
ORDER BY total_matches DESC;
