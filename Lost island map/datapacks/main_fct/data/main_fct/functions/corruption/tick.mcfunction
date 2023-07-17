function main_fct:corruption/right_island_tick
function main_fct:corruption/starting_rock_tick
function main_fct:corruption/detect_sickness_tick
execute as @a at @a if entity @e[tag=corruption_center_100,distance=..100] if score main_fct corruption_warning matches 0 if score witch_arc pick_up_jean matches 1 run function main_fct:corruption/warning
execute as @a at @a if entity @e[tag=corruption_center_15,distance=..15] if score main_fct corruption_warning matches 0 if score witch_arc pick_up_jean matches 1 run function main_fct:corruption/warning
