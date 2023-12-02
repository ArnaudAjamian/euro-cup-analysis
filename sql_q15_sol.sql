/*
Q.15 Write a SQL query to find the referee who booked the
	 most number of players.
*/

SELECT
	referee_id,
    referee_name,
    COUNT(pb.player_id) AS num_bookings
    
FROM match_mast
JOIN player_booked AS pb
	USING(match_no)
JOIN referee_mast
	USING(referee_id)

GROUP BY referee_id, referee_name
ORDER BY num_bookings DESC
LIMIT 1;