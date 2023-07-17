#keep doors closed during the fight
execute if block 961 107 67 minecraft:dark_oak_door[open=true] if score witch_arc fight_room_enter matches 1 run function main_fct:witcharc/dream_world/fight_room/close_doors
execute if block 962 107 68 minecraft:dark_oak_door[open=true] if score witch_arc fight_room_enter matches 1 run function main_fct:witcharc/dream_world/fight_room/close_doors
#Setup ashes
execute if score witch_arc fight_room_set_up_ashes matches 1 run function main_fct:witcharc/dream_world/fight_room/ashes_tick
#Summon ennemies
execute if score witch_arc fight_room_enter matches 1 if score witch_arc fight_room_see_if_finish matches 0 run function main_fct:witcharc/dream_world/fight_room/summon_ennemies_tick

#See if the player died before the fight is finished
execute if entity @a[scores={deaths=1}] run function main_fct:witcharc/dream_world/fight_room/player_died

#see if the fight is finished after all the monsters have spawned
#We divide the room into 2 square and see if in each one of the 2 squares the room hasn't any monsters in it
execute if score witch_arc fight_room_see_if_finish matches 1 run scoreboard players set witch_arc fight_room_see_if_finish_C1 0
execute if score witch_arc fight_room_see_if_finish matches 1 run scoreboard players set witch_arc fight_room_see_if_finish_C2 0
execute if score witch_arc fight_room_see_if_finish matches 1 positioned 964 106 65 unless entity @e[type=zombie,distance=..4] unless entity @e[type=silverfish,distance=..4] run scoreboard players set witch_arc fight_room_see_if_finish_C1 1
execute if score witch_arc fight_room_see_if_finish matches 1 positioned 965 106 64 unless entity @e[type=zombie,distance=..5] unless entity @e[type=silverfish,distance=..5] run scoreboard players set witch_arc fight_room_see_if_finish_C2 1
execute if score witch_arc fight_room_see_if_finish_C1 matches 1 if score witch_arc fight_room_see_if_finish_C2 matches 1 run function main_fct:witcharc/dream_world/fight_room/fight_is_finished
