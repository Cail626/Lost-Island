#Check when the player spawn
execute if entity @a[x=946,y=100,z=76,dx=1,dy=1,dz=1] if score witch_arc entering_dream_world matches 0 run schedule function main_fct:witcharc/dream_world/entering/into_dream_world_2 2s

#The player enter the main room of the dream world
execute if score witch_arc inside_main_room matches 0 if entity @a[x=948,y=106,z=80,distance=..2] run function main_fct:witcharc/dream_world/inside/in_the_main_place

################################
#Fight room
###############################
#The player enters the fight room
execute if score witch_arc fight_room_enter matches 0 if entity @a[x=965,y=106,z=64,distance=..2] run function main_fct:witcharc/dream_world/fight_room/entering
execute if score witch_arc fight_room_enter matches 1 run function main_fct:witcharc/dream_world/fight_room/tick

################################
#Parkour room
###############################

#Execute the parkour only if the player hasn't succeeded
execute if score witch_arc pk_room_succeed matches 0 run function main_fct:witcharc/dream_world/parkour_room/parkour_room_tick

################################
#Invisible room
################################

#Check if the player is inside the invisible room
execute positioned 967 112 99 if entity @a[distance=..1] run function main_fct:witcharc/dream_world/invisible_room/begin
execute if score witch_arc inv_room_start matches 1 if score witch_arc inv_room_end matches 0 run function main_fct:witcharc/dream_world/invisible_room/tick

################################
#Potion room
################################

execute positioned 930 106 95 if entity @a[distance=..1] run function main_fct:witcharc/dream_world/potion_room/begin
execute if score witch_arc pot_room_start matches 1 run function main_fct:witcharc/dream_world/potion_room/tick

################################
#Tree
################################

execute if score witch_arc finish_tree matches 0 run function main_fct:witcharc/dream_world/mushroom_tree/tick

#############
#Sully fight
#############

#We need to have finished the 4 others rooms before launching the fight
execute if score witch_arc inv_room_end matches 1 if score witch_arc pot_room_end matches 1 if score witch_arc pk_room_succeed matches 1 if score witch_arc fight_room_end matches 1 run function main_fct:witcharc/dream_world/sully_fight/tick