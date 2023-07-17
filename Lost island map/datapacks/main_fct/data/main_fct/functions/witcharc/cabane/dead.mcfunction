#Remove sandra
execute positioned 145 67 272 as @e[tag=aj.sandra.root,distance=..2] run function animated_java:sandra/remove/this
#Clear weather
weather clear 

execute if score witch_arc end_boss_fight matches 0 run function main_fct:witcharc/cabane/load_save_1
execute if score witch_arc end_boss_fight matches 0 run function main_fct:witcharc/cabane/load_save_2
execute if score witch_arc end_boss_fight matches 1 run function main_fct:witcharc/cabane/load_save_2
#Christophe
function main_fct:witcharc/cabane/christophe/dead
#Command block created system
execute if score witch_arc end_boss_fight matches 0 run setblock 151 56 278 minecraft:redstone_block
#Reset spawn
execute if score witch_arc end_boss_fight matches 0 if score witch_arc pick_up_jean matches 0 run spawnpoint @a 251 65 291
execute if score witch_arc end_boss_fight matches 0 if score witch_arc pick_up_jean matches 1 run spawnpoint @a 225 63 251 90
#Restore quitting_upstairs_v2
function main_fct:witcharc/cabane/quitting_upstairs_v2/dead

#Close doors
setblock 145 67 275 air replace
setblock 145 67 275 minecraft:warped_door[half=lower,facing=south,hinge=left] replace
setblock 145 68 275 minecraft:warped_door[half=upper,facing=south,hinge=left] replace
setblock 144 67 275 air replace
setblock 144 67 275 minecraft:warped_door[half=lower,facing=south,hinge=right] replace
setblock 144 68 275 minecraft:warped_door[half=upper,facing=south,hinge=right] replace
execute positioned 145 67 275 run kill @e[type=item,nbt={Item:{id:"minecraft:warped_door",Count:1b}},sort=nearest]
setblock 143 73 285 air replace
setblock 143 73 285 minecraft:iron_door[half=lower,facing=west,hinge=left] replace
setblock 143 74 285 minecraft:iron_door[half=upper,facing=west,hinge=left] replace
execute positioned 145 67 275 run kill @e[type=item,nbt={Item:{id:"minecraft:iron_door",Count:1b}},sort=nearest]
