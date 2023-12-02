/*
Q.6 Write a SQL query to find the number of matches
    that were won by a single point, but do not 
    include matches decided by penalty shootout.
*/

WITH goal_diffs AS (
	SELECT
		match_no,
        
        -- calculate the difference in number of goals scored between the 2 teams
		ABS(goal_score - LEAD(goal_score) OVER(PARTITION BY match_no)) AS goal_diff
	FROM match_details
	WHERE decided_by = 'N' -- exclude matches decided by penalty shootout
)

SELECT
	COUNT(match_no) AS num_matches_won
FROM goal_diffs
WHERE goal_diff = 1; -- filter on matches won by a single point