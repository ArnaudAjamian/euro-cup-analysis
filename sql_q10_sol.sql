/*
Q.10 Write a SQL query to find all available information
	 about the players under contract to Liverpool F.C.
     playing for England in EURO Cup 2016.
*/

SELECT
	pm.player_id,
    pm.team_id,
    pm.jersey_no,
    pm.player_name,
    pp.position_desc AS position,
    pm.dt_of_bir AS birthdate,
    pm.age,
    pm.playing_club
    
FROM player_mast AS pm
JOIN playing_position AS pp
	ON pm.posi_to_play = pp.position_id
    
WHERE playing_club LIKE '%Liverpool'
	AND team_id IN (
		SELECT country_id
        FROM soccer_country
        WHERE country_id = 1206 -- England's country ID
    );