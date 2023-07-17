#Add Jean to inventory
give @a player_head{display:{Name:'{"text": "Jean"}',Lore:['{"text": "A strange speaking head found on the sand."}']}}
#Remove Jean head
setblock 226 63 247 air
#Spawn chests that have dialog with jean: 
setblock 144 67 272 air
execute positioned 144 67 272 run function book_generator:witch_arc/cabane/chest_front_door
setblock 144 67 271 bamboo_wall_sign[facing=north]{Text1:'{"text":"Read book"}'} replace
#Indicate that jean was picked up
scoreboard players set witch_arc pick_up_jean 1
spawnpoint @a 225 63 251 90
scoreboard players set witch_arc witch_arc_jean_end 1
#Summon christophe
function main_fct:witcharc/cabane/christophe/summon