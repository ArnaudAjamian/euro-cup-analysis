/*
Q.7 Write a SQL query to find all the venues where matches
	with penalty shootouts were played.
*/

SELECT
	mm.venue_id,
    sv.venue_name,
    mm.decided_by,
    mm.match_no
    
FROM match_mast AS mm
JOIN soccer_venue AS sv
	USING(venue_id)
    
-- filter on games won by 'Penalty' shootout
WHERE decided_by = 'P';