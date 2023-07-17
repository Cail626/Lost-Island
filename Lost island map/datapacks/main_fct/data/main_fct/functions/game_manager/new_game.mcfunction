#Restorate the game
function main_fct:game_manager/restore

#Set the ARC to the Hub arc
scoreboard players set main_fct current_arc 1 
scoreboard players set main_fct edit_mode 0

#Place the boat at the right place 
setworldspawn 0 100 1000
#Place boat
clone 7 62 1008 -1 69 998 295 62 452

#Place the player at the start
tp @a 300 63 460 180 0


###############################
#COMMANDS BLOCKS NEAR THE START
###############################
#PLILLAR
setblock 154 97 276 air
setblock 154 96 276 air
setblock 154 95 276 air
setblock 154 94 276 air
setblock 154 93 276 air
setblock 154 92 276 air
setblock 154 91 276 air
setblock 154 90 276 air
setblock 154 89 276 air
setblock 154 88 276 air
setblock 154 87 276 air
setblock 154 86 276 air
setblock 154 85 276 air
setblock 154 84 276 air
setblock 154 83 276 air
setblock 154 82 276 air
setblock 154 81 276 air
setblock 154 80 276 air
setblock 154 79 276 air
setblock 154 78 276 air
setblock 154 77 276 air
setblock 154 76 276 air
setblock 154 75 276 air
setblock 154 74 276 air
setblock 154 73 276 air
setblock 154 72 276 air
setblock 154 71 276 air
setblock 154 70 276 air
setblock 154 69 276 air
setblock 154 68 276 air
setblock 154 67 276 air
setblock 154 66 276 air
setblock 154 65 276 air
setblock 154 64 276 air
#Ground access
setblock 155 62 276 deepslate
setblock 155 63 276 sand
