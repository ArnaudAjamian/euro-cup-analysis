/*
Q.4 Write a SQL query to compute a list showing the number
    of substitutions that happened in various stages of play
    for the entire tournament.
*/

SELECT
	play_stage,
    
    -- divide by 2 to avoid double counting: 
    -- for every "I", there is a corresponding "O"
    ROUND(COUNT(in_out) / 2) AS num_substitutions_per_stage
FROM match_mast
JOIN player_in_out
	USING(match_no)
GROUP BY play_stage;