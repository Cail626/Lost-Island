execute if score witch_arc leaving_early_state matches 0 run function main_fct:witcharc/cabane/quitting_early/start
execute if score witch_arc leaving_early_state matches 1 run function main_fct:witcharc/cabane/quitting_early/check_door_open_tick
execute if score witch_arc leaving_early_state matches 2 run function main_fct:witcharc/cabane/quitting_early/targic_encounter_tick
function main_fct:witcharc/cabane/quitting_early/look_at_player_tick