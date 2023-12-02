/*
Q.13 Write a SQL query to find all the defenders who scored
	 a goal for their teams.
*/

SELECT
	sc.country_name,
    pm.player_name,
    pp.position_desc AS position,
    COUNT(goal_id) AS num_goals
    
FROM goal_details AS gd
JOIN player_mast AS pm
	USING(player_id)
JOIN playing_position AS pp
	ON pm.posi_to_play = pp.position_id
JOIN soccer_country AS sc
	ON gd.team_id = sc.country_id
    
WHERE position_desc = 'Defenders'
GROUP BY country_name, player_name
ORDER BY country_name;