#Block escape routes
setblock 950 106 81 air replace
setblock 950 105 81 air replace
setblock 948 104 80 warped_planks replace
setblock 949 104 71 warped_stem[axis=z] replace
setblock 949 104 72 warped_stem[axis=z] replace
setblock 949 104 73 warped_stem[axis=z] replace
setblock 961 107 68 warped_stem[axis=y] replace
setblock 961 108 68 warped_stem[axis=y] replace

tellraw @a [{"text": "(Sandra) Hahaha what a fool you are !!! Sully! Make them","color": "dark_purple"},{"text": " SUFFER","obfuscated": true,"color": "dark_purple"}]

#Set spawnpoint
spawnpoint @a 959 106 81 

scoreboard players set witch_arc sully_fight_start 2