execute if score witch_arc fight_room_enter matches 1 if score witch_arc fight_room_end matches 0 run function main_fct:witcharc/dream_world/fight_room/player_died

execute if score witch_arc pk_room_start_countdown matches 1 run function main_fct:witcharc/dream_world/fight_room/player_died

execute if score witch_arc inv_room_start matches 1 if score witch_arc inv_room_end matches 0 run function main_fct:witcharc/dream_world/invisible_room/player_died

#Nothing for potion room

execute if score witch_arc sully_fight_start matches 1 run function main_fct:witcharc/dream_world/sully_fight/player_died
execute if score witch_arc sully_fight_start matches 2 run function main_fct:witcharc/dream_world/sully_fight/player_died