/*
Q.14 Write a SQL query to find referees and the number of bookings
	 they made for the entire tournament. Sort your answer by the
     number of bookings in descending order.
*/

SELECT
	referee_id,
    referee_name,
    COUNT(player_booked.player_id) AS num_bookings
    
FROM match_mast
JOIN player_booked
	USING(match_no)
JOIN referee_mast
	USING(referee_id)

GROUP BY referee_id, referee_name
ORDER BY num_bookings DESC;