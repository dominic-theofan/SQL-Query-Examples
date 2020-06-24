SELECT MAX(t.hit_exit_speed*2.23694) AS Exit_Velo, t.situation_batter_id, t.situation_batter
FROM plays.v2_ball_2019 AS t
INNER JOIN DICT.game_type gt
ON t.game_type = gt.game_type
WHERE t.is_data_verified = TRUE
AND t.game_type = 26
AND t.hit_exit_speed IS NOT NULL
GROUP BY 2, 3
ORDER BY 1 DESC