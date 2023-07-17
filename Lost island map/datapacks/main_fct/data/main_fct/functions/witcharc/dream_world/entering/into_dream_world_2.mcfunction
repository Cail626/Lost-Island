#entering the dream world

#spawn book
#execute positioned 948 100 77 run function book_generator:witch_arc/chest_entering_dream_world
#spawn sandra
execute positioned 944 100 78 rotated 270 0 run function animated_java:sandra/summon/happy

########################################
#SPAWN ALL ENTITIES
########################################

#summon armor_stand 956 62 69 {ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:chainmail_helmet",Count:1b}]}
kill @e[type=minecraft:item_frame,x=948,y=101,z=78,dx=0,dy=0,dz=0]
execute positioned 948 101 78 run function main_fct:objects/quest_item/ice_breaker

#Add first checkpoint
spawnpoint @a 946 100 76 ~

function main_fct:witcharc/dream_world/entering/summon_first_monsters

#Setup music
function main_fct:sound_controller/force_start
scoreboard players set witch_arc entering_dream_world 1