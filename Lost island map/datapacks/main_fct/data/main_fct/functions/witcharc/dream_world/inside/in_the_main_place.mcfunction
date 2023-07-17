#remove sandra
execute positioned 946 101 80 run kill @e[type=minecraft:armor_stand,distance=..3]

#Add dialog
tellraw @a [{"text":"(Jean) What is this place? We seem the be in the middle of the sea","color":"green"}]
schedule function main_fct:witcharc/dream_world/dialog/main_place_1 3s
schedule function main_fct:witcharc/dream_world/dialog/main_place_2 6s
schedule function main_fct:witcharc/dream_world/dialog/main_place_3 12s
schedule function main_fct:witcharc/dream_world/dialog/main_place_4 15s

scoreboard players set witch_arc inside_main_room 1