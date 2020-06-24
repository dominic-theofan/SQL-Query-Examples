select st.date_created, sp.last_name || ', ' || sp.first_name as Pitcher_Name, sg.game_reference, loc.name, st.result_pitch_type_auto, sm.pitch_release_speed, pitch_extension, sm.pitch_spin_rate, pitch_horizontal_break, pitch_vertical_break, pitch_induced_vertical_break, sm.pitch_release_height, sm.pitch_release_side, sm.pitch_spin_axis, sm.pitch_spin_axis_tilt, sm.pitch_release_horizontal_angle, sm.pitch_vertical_approach_angle, sm.pitch_horzontal_approach_angle, sm.pitch_release_horizontal_angle, sm.pitch_release_vertical_angle, sm.pitch_location_height, sm.pitch_location_side
from scout.tags as st
inner join scout.measurements as sm
on st.measurement_id = sm.measurement_id
inner join scout.games as sg
on st.game_id = sg.game_id
inner join scout.players as sp
on st.situation_pitcher = sp.player_id
inner join scout.locations as loc
on sg.location_id = loc.location_id
where sg.is_data_verified = 1
and st.removed = 0
and sg.game_type = '1'
and sg.first_pitch between '2018-01-01' and '2019-01-01'
and st.result_pitch_type_auto = '1'
and sm.pitch_release_height between '1.60' and '1.90'
and ABS(sm.pitch_release_side) between '0.350' and '0.650'
and sm.pitch_extension between '1.750' and '2.050'
order by 1 ASC
