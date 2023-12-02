/*
Q.20 Write a SQL query to find the substitute players who came
	 onto the field in the first half of play, within a normal
     play schedule.
*/

SELECT
	player_id,
    player_name
    
FROM player_mast

WHERE player_id IN (
    SELECT player_id
	FROM player_in_out
	WHERE in_out = 'I'
		AND play_schedule = 'NT' -- filter on normal play schedule
		AND play_half = 1
	);