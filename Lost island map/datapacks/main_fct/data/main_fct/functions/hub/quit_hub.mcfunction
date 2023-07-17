#start witch arc
scoreboard players set main_fct current_arc 2
function main_fct:witcharc/begin
#Equip player
function main_fct:hub/equip_player
#Remove boat
clone 298 61 454 302 61 460 298 62 454
clone 297 81 453 303 81 461 297 63 453
clone 297 81 453 303 81 461 297 64 453
clone 297 81 453 303 81 461 297 65 453
clone 297 81 453 303 81 461 297 66 453
clone 297 81 453 303 81 461 297 67 453

#Place the boat near the shore
clone -11 62 1009 -17 69 1001 261 62 307

#Set spawnpoint
spawnpoint @a 251 65 291

#tp
tp @p 249 65 295 0 0


