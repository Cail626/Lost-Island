#We summon the monsters at the position of the light block

execute if score witch_arc fight_room_summon_monsters_clock matches 0 run function main_fct:witcharc/dream_world/fight_room/summon_steps/first_summon
execute if score witch_arc fight_room_summon_monsters_clock matches 100 run function main_fct:witcharc/dream_world/fight_room/summon_steps/second_summon
execute if score witch_arc fight_room_summon_monsters_clock matches 300 run function main_fct:witcharc/dream_world/fight_room/summon_steps/third_summon
execute if score witch_arc fight_room_summon_monsters_clock matches 500 run function main_fct:witcharc/dream_world/fight_room/summon_steps/forth_summon
execute if score witch_arc fight_room_summon_monsters_clock matches 600 run function main_fct:witcharc/dream_world/fight_room/summon_steps/fifth_summon
execute if score witch_arc fight_room_summon_monsters_clock matches 700 run function main_fct:witcharc/dream_world/fight_room/summon_steps/sixth_summon
execute if score witch_arc fight_room_summon_monsters_clock matches 1000 run function main_fct:witcharc/dream_world/fight_room/summon_steps/seventh_summon

scoreboard players add witch_arc fight_room_summon_monsters_clock 1 
execute if score witch_arc fight_room_summon_monsters_clock matches 1000 run function main_fct:witcharc/dream_world/fight_room/see_if_fight_finished