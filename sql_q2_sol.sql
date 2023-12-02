/*
Q.2 Write a SQL query to find the number of matches
	that were won by penalty shootout
*/

SELECT COUNT(match_no) AS num_matches_won_by_penalty
FROM match_mast
WHERE decided_by = 'P';