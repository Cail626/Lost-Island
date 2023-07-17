#TICK#
#Hub
execute if score main_fct current_arc matches 1 run function main_fct:hub/tick
#Witch
execute if score main_fct current_arc matches 2 run function main_fct:witcharc/witch_tick
#Interlude
execute if score main_fct current_arc matches 3 run function main_fct:interlude/tick
#Collector
#execute if score main_fct current_arc matches 4 run function main_fct:?
#...

#Corruption
function main_fct:corruption/tick
#Restricted access
execute if score main_fct restricted_access matches 1 if score main_fct edit_mode matches 0 run function main_fct:game_manager/restricted_access/restricted_tick

########################################
########################################
            #Music
########################################
########################################

function main_fct:sound_controller/tick

########################################
########################################
            #Special items
########################################
########################################

function main_fct:objects/quest_item/father_memento/tick

########################################
########################################
        #Reinitialize variables
########################################
########################################

###TO PUT AT THE END###

#reinitialize chest opening variable
scoreboard players set @a chest_opened 0
#reinitialize is using

#Reset objective
scoreboard players set @a[scores={is_using=1..}] is_using 0

########################################
########################################
                 #DEAD
########################################
########################################

########################################
#MUST BE PLAYED AT THE END OF THE TICK
########################################
#Check if the player has died


execute if entity @a[scores={deaths=1}] if score main_fct death_begin matches 0 run function main_fct:global/player_died
execute if entity @e[scores={deaths=1}] run function main_fct:objects/player_died
execute if entity @e[scores={deaths=1}] if score main_fct current_arc matches 2 run function main_fct:witcharc/dead
execute if entity @e[scores={deaths=1}] if score main_fct current_arc matches 3 run function main_fct:interlude/dead
execute if entity @e[scores={deaths=1}] run scoreboard players set main_fct death_begin 0
scoreboard players set @e[scores={deaths=1}] deaths 0
