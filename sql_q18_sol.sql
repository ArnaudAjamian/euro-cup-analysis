/*
Q.18 Write a SQL query to find the highest number of
	 foul cards given in one match.
*/

SELECT
	match_no,
    COUNT(player_id) AS num_bookings
    
FROM player_booked

GROUP BY match_no
ORDER BY COUNT(player_id) DESC
LIMIT 1;