/*
Q.12 Write a SQL query that returns the total number of goals
	 scored by each position on each country's team. Do not include
	 positions which scored no goals.
*/

SELECT
    sc.country_name,
    pp.position_desc AS position,
    COUNT(goal_id) AS num_goals_by_country_position
    
FROM goal_details AS gd
JOIN player_mast AS pm
	USING(player_id)
JOIN playing_position AS pp
	ON pm.posi_to_play = pp.position_id
JOIN soccer_country AS sc
	ON gd.team_id = sc.country_id
    
GROUP BY country_name, position;