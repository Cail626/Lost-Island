#Set update variables
scoreboard players set witch_arc subarc 2
scoreboard players set witch_arc immobilized 1
#Change spawnpoint
spawnpoint @a 145 67 268

#save inventory inside chest
function main_fct:witcharc/cabane2/imprisoned/save_chest
#Remove inventory of all the players
clear @a

##Christophe

#Replace christophe in prison if saved
execute as @e[tag=aj.christophe.root] positioned 150 70 279 rotated 180 0 run function christophe:move
#Remove the lever prison
setblock 150 71 276 air replace

##Other

#Spawn Sandra
execute positioned 145 74 280 facing 143 74 281 run function animated_java:sandra/summon/angry
#Spawn nathalie
summon witch 146 74 281 {Invulnerable:1b,NoAI:1b,Rotation:[90F,0F],CustomName:'{"text":"Nathalie"}'}

#Open the door: 
setblock 144 74 281 air
setblock 144 74 281 minecraft:dark_oak_door[half=lower,facing=north,hinge=left,open=false] replace
setblock 144 75 281 minecraft:dark_oak_door[half=upper,facing=north,hinge=left,open=false] replace
execute positioned 144 75 281 run kill @e[type=item,nbt={Item:{id:"minecraft:warped_door",Count:1b}},sort=nearest]
#Close the trapdoor:
setblock 145 74 280 minecraft:spruce_trapdoor[open=false,facing=south] replace

#Start dialog
function main_fct:witcharc/cabane2/imprisoned/dialog/first_1

#Setup music
function main_fct:sound_controller/force_start