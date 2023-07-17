#Close the doors
function main_fct:witcharc/dream_world/fight_room/close_doors

#Change ice color
function main_fct:witcharc/dream_world/fight_room/change_ice_color

#Indicate that we entered the fight room
scoreboard players set witch_arc fight_room_enter 1

#setting ashes
schedule function main_fct:witcharc/dream_world/fight_room/set_up_ashes 2s

#dialog
function main_fct:witcharc/dream_world/dialog/enter_fight_room_1
schedule function main_fct:witcharc/dream_world/dialog/enter_fight_room_2 5s

#Invoking ennemies
schedule function main_fct:witcharc/dream_world/fight_room/summon_ennemies 5s

#No more ashes
schedule function main_fct:witcharc/dream_world/fight_room/no_ashes 51s

schedule function main_fct:witcharc/dream_world/fight_room/see_if_fight_finished 51s

#Set spawnpoint
spawnpoint @a 946 100 76 ~