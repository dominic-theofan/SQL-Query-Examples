SELECT AVG(t.pitch_release_speed*2.23694) AS "Velocity", count(distinct t.measurement_id)
FROM plays.v2_ball_2019 AS t
INNER JOIN DICT.game_type gt
ON t.game_type = gt.game_type
WHERE t.is_data_verified = TRUE
AND t.result_pitch_type = 1
AND t.game_type = 14
AND t.pitch_release_speed IS NOT NULL
ORDER BY 1 DESC