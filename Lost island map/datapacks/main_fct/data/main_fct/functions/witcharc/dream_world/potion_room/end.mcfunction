
function main_fct:witcharc/dream_world/dialog/end_pot_room_1 
schedule function main_fct:witcharc/dream_world/dialog/end_pot_room_2 4s
schedule function main_fct:witcharc/dream_world/dialog/end_pot_room_3 6s
schedule function main_fct:witcharc/dream_world/dialog/end_pot_room_4 10s
#schedule function main_fct:witcharc/dream_world/dialog/end_pot_room_5 25s
#schedule function main_fct:witcharc/dream_world/dialog/end_pot_room_6 29s

scoreboard players set witch_arc pot_room_end 1

#Set spawnpoint
spawnpoint @a 946 100 76 ~

function main_fct:witcharc/dream_world/potion_room/summon_aftermatch_monsters