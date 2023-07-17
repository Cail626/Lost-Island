#Remove chest
setblock 144 67 281 air
setblock 144 67 282 air
#Summon christophe again
function main_fct:witcharc/cabane/christophe/summon
#Remove saved christophe
function christophe:remove/all
#Close de door
setblock 150 71 276 minecraft:lever[facing=west] replace