/*
Q.5 Write a SQL query to find the number of 
    bookings that happened in stoppage time.
*/

SELECT COUNT(player_id) AS num_bookings
FROM player_booked
WHERE play_schedule = 'ST'; -- filter on 'Stoppage' time