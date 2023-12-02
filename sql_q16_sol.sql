/*
Q.16 Write a SQL query to find the referees and the number of
	 matches they worked in each venue.
*/

SELECT
	referee_name,
	venue_name,
    COUNT(match_no) AS num_matches
    
FROM match_mast
JOIN soccer_venue
	USING(venue_id)
JOIN referee_mast
	USING(referee_id)

GROUP BY referee_name, venue_name
ORDER BY referee_name, num_matches DESC;