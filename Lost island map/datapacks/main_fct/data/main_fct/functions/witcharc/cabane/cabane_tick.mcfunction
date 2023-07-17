#####################################
#SAVING CHRISTOPHER
#####################################

function main_fct:witcharc/cabane/christophe/tick

######################################
#Angry witch
#####################################

#initiate angry witch arc
execute if score witch_arc cabane_angry_witch matches 1 run function main_fct:witcharc/cabane/angry_witch/initiate
#Blood dripping animation + close doors of hub
execute if score witch_arc cabane_angry_witch matches 2 run function main_fct:witcharc/cabane/angry_witch/tick
#Stop dripping animation
execute if score witch_arc cabane_angry_witch matches 2 if block 131 55 265 redstone_block run scoreboard players set witch_arc cabane_angry_witch 3

#####################################
#Entering witch house
#####################################

execute if entity @a[x=145,z=275, y=67,dy=2] if score witch_arc witch_house_entering matches 0 run function main_fct:witcharc/cabane/entering/inside_the_house
execute if entity @a[x=144,z=275, y=67,dy=2] if score witch_arc witch_house_entering matches 0 run function main_fct:witcharc/cabane/entering/inside_the_house

execute if score witch_arc witch_house_entering matches 2 run function main_fct:witcharc/cabane/entering/illegal_entry_tick
execute if score witch_arc witch_house_entering matches 3 run function main_fct:witcharc/cabane/entering/killing_blow

#######################################
#Going inside the attic
#######################################

#Player open the potion chest: need that one chest is opened and that the player is looking at the chest
execute as @a at @s if score @s chest_opened matches 1 if score witch_arc potion_chest_opened matches 0 if entity @a[x=141,y=78,z=281,dx=3,dz=3,dy=1] anchored eyes facing 143 78 281 anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run function main_fct:witcharc/cabane/attic/potion_chest_opening

#####################################
#Boss fight end
#####################################

execute if score witch_arc end_boss_fight matches 0 if block 137 55 282 redstone_block run function main_fct:witcharc/cabane/boss_fight/end
#Add quitting early
execute if score witch_arc end_boss_fight matches 1 run function main_fct:witcharc/cabane/quitting_early/tick
execute if score witch_arc end_boss_fight matches 1 run function main_fct:witcharc/cabane/quitting_upstairs_v2/tick
#(No)Block doors upstair
#execute if score witch_arc end_boss_fight matches 1 run function main_fct:witcharc/cabane/quitting_upstairs/tick
