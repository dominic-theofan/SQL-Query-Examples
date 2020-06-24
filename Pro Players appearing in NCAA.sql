select sp.player_id, sp.first_name||', '||sp.last_name as name, sp.pro_id, tm.name as team, st.game_id
from scout.games sg
inner join scout.tags st
on st.game_id = sg.game_id
inner join scout.teams hm
on hm.team_id = sg.home_team_id
inner join scout.teams aw
on aw.team_id = sg.away_team_id
--batters
inner join scout.players sp
on sp.player_id = st.situation_batter
inner join scout.teams tm
on tm.team_id = st.situation_batting_team
where sg.game_type = 14
and sg.is_data_verified = TRUE
and st.removed = FALSE
and sg.first_pitch > '2019-01-01'
and st.situation_batter in (
'0db28687-abda-45c7-8904-16f59accab74',
'c1faa8d3-6112-4788-9b69-a46cdce72ca3',
'cca857e3-89a7-4076-95a5-ec01f3ab069b',
'523c34df-3ca8-4dcd-9593-e164363b7cd1',
'881d8a72-0bb2-11e5-bf6b-00155d51c0cb',
'5de9123f-e8b4-468b-b5d8-b0c423deb0d1',
'19ee3b3f-aefa-41fe-b5d8-ec2a28d5d9e5',
'3aade451-83f5-4350-a595-e1e2d030679c',
'8970ba5e-b5ac-4aa0-88e6-1b39d97bb5b6',
'4fc9dbbb-cf1f-4d10-aac8-e3df35c450fe'
)
group by sp.player_id, sp.first_name, sp.last_name, sp.pro_id, tm.name, st.game_id
order by sp.first_name||' '||sp.last_name asc
