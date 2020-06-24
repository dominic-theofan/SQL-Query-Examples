SELECT 
case
when st.result_ball_flight = 1 then 'GroundBall'
when st.result_ball_flight = 2 then 'LineDrive'
when st.result_ball_flight = 3 then 'FlyBall'
when st.result_ball_flight = 4 then 'Popup'
when st.result_ball_flight = 5 then 'Bunt'
else 'Error'
end as result_ball_flight,
count(sm.hit_exit_speed > 0) as Measured_BIP, count(sm.measurement_id) as Total_Balls_In_Play
from scout.tags st
inner join scout.games sg
on st.game_id = sg.game_id
inner JOIN scout.measurements sm
on st.measurement_id = sm.measurement_id
WHERE sm.game_id in (
'a82bf51a-5285-11e9-8ad5-cc2f71f7d6a3',
'7166e031-4ff8-11e9-8ad3-cc2f71f7d6a3',
'b44dc336-50db-11e9-8ad3-cc2f71f7d6a3',
'293826f8-4fdf-11e9-8ad3-cc2f71f7d6a3',
'316f4dd7-5029-11e9-8ad3-cc2f71f7d6a3',
'9e70cf6c-50bf-11e9-8ad3-cc2f71f7d6a3',
'19d7b5fa-51be-11e9-8ad4-cc2f71f7d6a3',
'0cae6818-50f7-11e9-8ad3-cc2f71f7d6a3',
'fd0d07a1-50a8-11e9-8ad3-cc2f71f7d6a3',
'cae6a3d2-5011-11e9-8ad3-cc2f71f7d6a3',
'f89abed8-5189-11e9-8ad4-cc2f71f7d6a3'
)
and st.result_pitch_result = 7
and st.result_ball_flight in (1, 2, 3, 4, 5)
group by st.result_ball_flight 
order by st.result_ball_flight ASC




