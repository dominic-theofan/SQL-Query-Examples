select 'pitcher' as position, situation_pitcher as player, pitcher_pro_id as pro_id, game_id, game_reference,  situation_batting_team, left(game_reference, 4)
from plays.v2_ball
where situation_pitcher = 'McElvy, Jackson'
and is_data_verified = TRUE  group by 1, 2, 3, 4, 5, 6, 7
UNION
select 'pitcher' as position, situation_pitcher as player, pitcher_pro_id as pro_id, game_id, game_reference,  situation_batting_team, left(game_reference, 4)
from plays.v2_ball
where situation_pitcher = 'McElvey, Jackson'
and is_data_verified = TRUE  group by 1, 2, 3, 4, 5, 6, 7