#If christopher is saved
execute if score witch_arc christopher_saved matches 2 run function main_fct:witcharc/cabane/christophe/christopher_saved_tick

#Check if christopher is being saved: 
execute as @e[type=minecraft:zombie_villager,nbt=!{ConversionTime:-1},tag=christophe] if score witch_arc christopher_saved matches 0 run scoreboard players set witch_arc christopher_saved 1
execute as @e[type=minecraft:zombie_villager,tag=christophe] if score witch_arc christopher_saved matches 1 run data merge entity @s {ConversionTime:100}
execute if score witch_arc christopher_saved matches 1 run tellraw @a [{"text":"(Christopher) Graaaa!!!","color":"dark_gray"}]
execute if entity @e[type=minecraft:zombie_villager,nbt={ConversionTime:40},tag=christophe] run tellraw @a [{"text":"(Jean) Look he is turning back into a human!","color":"green"}]
execute if entity @e[type=minecraft:zombie_villager,nbt={ConversionTime:1},tag=christophe] run function main_fct:witcharc/cabane/christophe/end_transformation

#Change score of christopher
execute if score witch_arc christopher_saved matches 1 run scoreboard players set witch_arc christopher_saved 2


#####################
#Helping messages
#####################

execute if entity @a[x=149,y=72,z=285,dy=1] if score witch_arc players_tries_to_go matches 0 if score witch_arc end_boss_fight matches 1 run function main_fct:witcharc/cabane/christophe/save_christophe_message
execute if entity @a[x=144,y=67,z=281,dy=1] if score witch_arc players_tries_to_go matches 0 if score witch_arc end_boss_fight matches 1 run function main_fct:witcharc/cabane/christophe/save_christophe_message
execute if entity @a[x=148,y=70,z=276,dy=1] if score witch_arc players_tries_to_go matches 0 if score witch_arc end_boss_fight matches 1 run function main_fct:witcharc/cabane/christophe/save_christophe_message
execute if entity @a[x=148,y=70,z=276,dx=0,dy=0,dz=0] if entity @a if score witch_arc end_boss_fight matches 1 if score witch_arc help_for_christophe matches 0 run function main_fct:witcharc/cabane/christophe/helping/begin