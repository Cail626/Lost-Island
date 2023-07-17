#Add more mobs
execute positioned 135 73 281 run function main_fct:mobs/zombie_head
execute positioned 135 73 285 run function main_fct:mobs/zombie_head

scoreboard players set witch_arc witch_house_entering 1
#Play music
function main_fct:sound_controller/force_start

#Check if player has picked up jean
execute if score witch_arc pick_up_jean matches 0 run function main_fct:witcharc/cabane/entering/illegal_entry