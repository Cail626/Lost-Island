#############
#Emprisonnement
#############

scoreboard objectives add sandra_leaves dummy
scoreboard players set witch_arc sandra_leaves 0
scoreboard objectives add sandra_leaves_tick dummy
scoreboard players set witch_arc sandra_leaves_tick 0
scoreboard objectives add immobilized dummy
scoreboard players set witch_arc immobilized 0

############
#Inside Sandra's room
############

function main_fct:witcharc/cabane2/sandra_angry/load