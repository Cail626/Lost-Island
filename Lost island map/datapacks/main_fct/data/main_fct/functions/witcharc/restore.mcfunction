######################################################
######################################################
#Replace and remove objects
######################################################
######################################################

setblock 150 71 276 minecraft:lever[facing=west] replace
function christophe:remove/all
function animated_java:sully/remove/all

#Activate command block created system to restart the cabane arc
setblock 151 56 278 minecraft:redstone_block
#Stop main system
setblock 151 56 276 oxidized_copper
#Witch_arc end fight
setblock 146 55 286 redstone_block

#Before entering
function main_fct:witcharc/before_entering/jean/restore
function main_fct:witcharc/cabane/restore
function main_fct:witcharc/dream_world/restore
function main_fct:witcharc/cabane2/restore