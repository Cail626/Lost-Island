
#Add gift
execute positioned 932 114 65 run function main_fct:witcharc/dream_world/parkour_room/gift
#Change terrain
function main_fct:witcharc/dream_world/parkour_room/return_normal
function main_fct:witcharc/dream_world/parkour_room/add_ladder

#Variable set
scoreboard players set witch_arc pk_room_succeed 1
scoreboard players set witch_arc pk_room_start_countdown 0

#Spawnpoint
spawnpoint @a 946 100 76

#Dialog
tellraw @a [{"text": "(Sandra) What!? You succeeded? How??? When Sully was testing it, he couldn't do it at all. He tried for a whole year... Maybe I underestimated you. Your intellect and agility seem to surpass those of Sully...", "color": "dark_purple"}]
schedule function main_fct:witcharc/dream_world/dialog/end_parkour_room_1 7s
schedule function main_fct:witcharc/dream_world/dialog/end_parkour_room_2 11s
schedule function main_fct:witcharc/dream_world/dialog/end_parkour_room_3 15s
schedule function main_fct:witcharc/dream_world/dialog/end_parkour_room_4 19s

function main_fct:witcharc/dream_world/parkour_room/summon_aftermatch_monsters