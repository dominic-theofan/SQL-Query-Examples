select 'batter' as position, situation_batter as player, batter_pro_id as pro_id, game_id, game_reference,  situation_batting_team, left(game_reference, 4)
from plays.v2_ball
where situation_batter = 'McElvy, Jackson'
and is_data_verified = TRUE   group by 1, 2, 3, 4, 5, 6, 7
UNION
select 'batter' as position, situation_batter as player, batter_pro_id as pro_id, game_id, game_reference,  situation_batting_team, left(game_reference, 4)
from plays.v2_ball
where situation_batter = 'McElvey, Jackson'
and is_data_verified = TRUE   group by 1, 2, 3, 4, 5, 6, 7
