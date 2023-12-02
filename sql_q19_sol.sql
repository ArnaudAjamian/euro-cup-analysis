/*
Q.19 Write a SQL query to find the number of captains
	 who were also goalkeepers.
*/

WITH goalkeeper_captains AS (
	SELECT
		mc.player_captain,
		mc.team_id,
		pm.player_name,
		pm.posi_to_play
        
	FROM match_captain AS mc
	JOIN player_mast AS pm
		ON mc.player_captain = pm.player_id
        
	WHERE posi_to_play = 'GK' -- filter on goalkeepers
	)

SELECT COUNT(DISTINCT(player_captain)) AS num_goalkeeper_captains
FROM goalkeeper_captains;