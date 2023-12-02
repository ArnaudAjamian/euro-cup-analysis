/*
Q.8 Write a SQL query to find the match number for the game with
	the highest number of penalty shots, and which countries played
    that match.
*/

WITH penalty_shots_per_match AS (
	SELECT
		match_no,
        team_id,
        penalty_score AS penalty_shots,
        
        -- calculate the number of penalty shots per match
		SUM(penalty_score) OVER(PARTITION BY match_no) AS sum_penalty_shots
	FROM match_details
)

SELECT
	match_no,
    team_id,
    country_name AS country,
	penalty_shots
    
FROM penalty_shots_per_match
JOIN soccer_country
	ON penalty_shots_per_match.team_id = soccer_country.country_id
    
ORDER BY sum_penalty_shots DESC
LIMIT 2;