
###############
#FIREWORK
###############

execute if entity @e[type=minecraft:firework_rocket,nbt={FireworksItem:{tag:{fake:1}}}] run scoreboard players set witch_arc pot_room_fireworks_launched 1
execute unless entity @e[type=minecraft:firework_rocket,nbt={FireworksItem:{tag:{fake:1}}}] if score witch_arc pot_room_fireworks_launched matches 1 if score witch_arc pot_room_fireworks_exploded matches 0 run function main_fct:witcharc/dream_world/potion_room/firework_exploded

##################
#POTION MAKING
##################

#If the potion wasn't created we create one
execute if score witch_arc pot_room_potion_created matches 0 positioned 932 120 95 if entity @e[type=item,name="Crimson Fungus",distance=..1] run scoreboard players set witch_arc pot_room_potion_created 1

execute if score witch_arc pot_room_potion_created matches 1 run scoreboard players set witch_arc pot_room_potion_creating 0
execute positioned 932 120 95 if score witch_arc pot_room_potion_created matches 1 run kill @e[type=item,distance=..1]
execute if score witch_arc pot_room_potion_created matches 1 run scoreboard players set witch_arc pot_room_potion_created 2

#Creating the potion animation
execute if score witch_arc pot_room_potion_created matches 2 run function main_fct:witcharc/dream_world/potion_room/potion_creating_tick

##################
#End
##################

execute if score witch_arc pot_room_end matches 0 positioned 945 126 85 if entity @a[distance=..1] run function main_fct:witcharc/dream_world/potion_room/end
