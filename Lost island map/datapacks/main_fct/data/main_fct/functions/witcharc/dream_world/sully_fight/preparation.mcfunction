#Summon sully
execute positioned 942 106 80 rotated 180 0 run function sully_fight:main/summon
#Setup dialog chest
execute positioned 944 105 83 run function book_generator:witch_arc/sully_first_encounter

scoreboard players set witch_arc sully_fight_start 1