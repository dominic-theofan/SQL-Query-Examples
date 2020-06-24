SELECT 
sp.first_name ||', '|| sp.last_name name, sp.pro_id, sp.player_id, dt.game_type_string,
CASE
	WHEN sg.game_type = '14'
	THEN 'NCAA'
	WHEN sg.game_type = '15'
	THEN 'NCAA'
	WHEN sg.game_type = '16'
	THEN 'NCAA'
ELSE 'Other'
END 
FROM scout.games sg
INNER JOIN scout.tags st
ON sg.game_id = st.game_id
INNER JOIN scout.players sp
ON st.situation_pitcher = sp.player_id
INNER JOIN scout.players sp2
ON st.situation_batter = sp2.player_id
INNER JOIN dict.game_type dt
ON sg.game_type = dt.game_type
WHERE sg.date_created > '2019-01-01'
ORDER BY 
