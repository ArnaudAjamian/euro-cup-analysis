/*
Q.9 Write a SQL query to find the goalkeeper's name and
	jersey number, playing for Germany, who played in
    Germany's group stage matches.
*/

SELECT
	md.match_no,
    md.play_stage,
    pm.player_name,
    pm.jersey_no,
    pm.posi_to_play AS position
    
FROM match_details AS md
JOIN player_mast AS pm
	ON md.player_gk = pm.player_id

WHERE play_stage = 'G' -- filter on 'Group' stage matches
	AND md.team_id IN (
		SELECT country_id
		FROM soccer_country
		WHERE country_id = 1208 -- Germany's country ID
	)
    
ORDER BY match_no ASC;