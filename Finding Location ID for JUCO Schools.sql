SELECT distinct(t.game_id), t.home_team_id, p.name
FROM plays.v2_ball_2019 t
INNER JOIN plays.cloudsql_teams p
ON t.home_team_id = p.team_id
WHERE 
t.is_data_verified = TRUE
AND t.game_type = 8
AND t.location_id in (
'5f612ad9-ff75-569c-e777-887f22be56df',
'46d7d940-5412-9baf-5a9d-0d2d66049e22',
'c1dd1879-63c5-a95e-729e-1ee23c0f0b35',
'9326d578-f988-bf64-4bf3-05a97039d808',
'9a78df2b-3345-5501-5d74-784d5817eab7',
'ba5d2c79-d8ca-6f7c-9dca-a424b41de335',
'b330f9c0-7c42-2d3f-dd84-a11f601d215a',
'a233b920-b1c7-17e8-a6f2-497976534a6b',
'f285ff33-7c37-419d-9683-d63a589bc90c',
'bc14662e-7075-e45a-0d9f-a7804c603c8e',
'3cf483ad-7f5a-c503-35f9-a5bce8ebf37f'
)