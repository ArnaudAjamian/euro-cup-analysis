/*
Q.17 Write a SQL query to find the country where the most
	 assistant referees come from, and the count of the 
     assistant referees.
*/

/*
CTE: calculate the number of assistant referees per
	 country and their associated rank
*/
WITH num_asst_refs_country AS (
	SELECT
		country_name,
		COUNT(ass_ref_id) AS num_asst_refs,
		DENSE_RANK() OVER(ORDER BY COUNT(ass_ref_id) DESC) AS ranking
		
	FROM asst_referee_mast
	JOIN soccer_country
		USING(country_id)
		
	GROUP BY country_name
	)

SELECT *
FROM num_asst_refs_country
WHERE ranking = 1;