#Countdown gestion
execute if score witch_arc pk_room_start_countdown matches 1 run scoreboard players remove witch_arc pk_room_countdown 1
execute if score witch_arc pk_room_countdown matches 0 if score witch_arc pk_room_start_countdown matches 1 run function main_fct:witcharc/dream_world/parkour_room/countdown_runout
execute if score witch_arc pk_room_countdown matches 200 if score witch_arc pk_room_start_countdown matches 1 run tellraw @a [{"text": "(Sandra) 10 seconds!","color": "dark_purple"}]
execute if score witch_arc pk_room_countdown matches 400 if score witch_arc pk_room_start_countdown matches 1 run tellraw @a [{"text": "(Sandra) 20 seconds!","color": "dark_purple"}]

execute if score witch_arc pk_room_start_countdown matches 1 if block 932 120 63 warped_button[powered=true] run function main_fct:witcharc/dream_world/parkour_room/succeed
execute if score witch_arc pk_room_start_countdown matches 1 if block 932 120 64 warped_button[powered=true] run function main_fct:witcharc/dream_world/parkour_room/succeed
execute if score witch_arc pk_room_start_countdown matches 1 if block 933 120 63 warped_button[powered=true] run function main_fct:witcharc/dream_world/parkour_room/succeed
execute if score witch_arc pk_room_start_countdown matches 1 if block 933 120 64 warped_button[powered=true] run function main_fct:witcharc/dream_world/parkour_room/succeed

#Check if player dies
execute if entity @a[scores={deaths=1}] run function main_fct:witcharc/dream_world/parkour_room/player_died