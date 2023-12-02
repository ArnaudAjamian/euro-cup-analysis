/*
Q.11 Write a SQL query to find the players, their jersey number,
	 and playing club who were the goalkeepers for England in
     EURO Cup 2016.
*/

SELECT
	pm.player_id,
    pm.team_id,
    pm.jersey_no,
    pm.player_name,
    pp.position_desc AS position
    
FROM player_mast AS pm
JOIN playing_position AS pp
	ON pm.posi_to_play = pp.position_id
    
WHERE position_desc = 'Goalkeepers' 
	AND team_id IN (
		SELECT country_id
        FROM soccer_country
        WHERE country_id = 1206 -- England's country ID
    );