SELECT AVG(t.pitch_release_speed*2.23694) AS "Velocity", count(distinct t.measurement_id), gt.game_type, t.situation_pitcher_id, t.situation_pitcher
FROM plays.v2_ball_2019 AS t
INNER JOIN DICT.game_type gt
ON t.game_type = gt.game_type
WHERE t.is_data_verified = TRUE
AND t.result_pitch_type = 1
AND t.pitcher_pro_id = '8898979'
AND t.game_type = 8
AND t.pitch_release_speed IS NOT NULL
GROUP BY 3, 4, 5
ORDER BY 1 DESC

