#Disable the check to the if the fight is finished
scoreboard players set witch_arc fight_room_see_if_finish 2
scoreboard players set witch_arc fight_room_see_if_finish_C1 2
scoreboard players set witch_arc fight_room_see_if_finish_C2 2
#We unlock the doors
scoreboard players set witch_arc fight_room_enter 2

#Change ice color
function main_fct:witcharc/dream_world/fight_room/restore_ice_color
#spawn altair
setblock 965 106 64 stripped_warped_stem replace
#spawn book
execute positioned 965 107 64 run function main_fct:objects/heads/book_in_chest

#dialogs
function main_fct:witcharc/dream_world/dialog/end_fight_room_1
schedule function main_fct:witcharc/dream_world/dialog/end_fight_room_2 3s
schedule function main_fct:witcharc/dream_world/dialog/end_fight_room_3 6s
schedule function main_fct:witcharc/dream_world/dialog/end_fight_room_4 7s

scoreboard players set witch_arc fight_room_end 1