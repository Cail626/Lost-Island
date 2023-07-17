stopsound @a record
#Hub
execute if score main_fct current_arc matches 1 run function main_fct:sound_controller/hub/hub
#Witch_arc
execute if score main_fct current_arc matches 2 run function main_fct:sound_controller/witch_arc/witch_arc
#Interlude
execute if score main_fct current_arc matches 3 run function main_fct:sound_controller/interlude

scoreboard players set main_fct music_control_tick 0