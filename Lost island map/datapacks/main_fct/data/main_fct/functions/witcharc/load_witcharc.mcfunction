#We indicate in which subarc we are currently on
#1 is the cabane
#2 is the dream world

scoreboard objectives add subarc dummy
scoreboard players set witch_arc subarc 0

######################################################
######################################################
                    #Jean
######################################################
######################################################

scoreboard objectives add pick_up_jean dummy
scoreboard players set witch_arc pick_up_jean 0
scoreboard objectives add near_jean dummy
scoreboard players set witch_arc near_jean 0
scoreboard objectives add witch_arc_jean_end dummy
scoreboard players set witch_arc witch_arc_jean_end 0

######################################################
######################################################
                    #CABANE
######################################################
######################################################

function main_fct:witcharc/cabane/load_save_1
function main_fct:witcharc/cabane/load_save_2

######################################################
######################################################
                    #DREAM WORLD
######################################################
######################################################

scoreboard objectives add entering_dream_world dummy
scoreboard players set witch_arc entering_dream_world 0

###########
#Fight room
###########

scoreboard objectives add fight_room_enter dummy
scoreboard players set witch_arc fight_room_enter 0

scoreboard objectives add fight_room_set_up_ashes dummy
scoreboard players set witch_arc fight_room_set_up_ashes 0
scoreboard objectives add fight_room_summon_monsters_clock dummy
scoreboard players set witch_arc fight_room_summon_monsters_clock 0

scoreboard objectives add fight_room_see_if_finish_C1 dummy
scoreboard players set witch_arc fight_room_see_if_finish_C1 0
scoreboard objectives add fight_room_see_if_finish_C2 dummy
scoreboard players set witch_arc fight_room_see_if_finish_C2 0
scoreboard objectives add fight_room_see_if_finish dummy
scoreboard players set witch_arc fight_room_see_if_finish 0

scoreboard objectives add fight_room_end dummy
scoreboard players set witch_arc fight_room_end 0

##############
#Parkour room
##############

scoreboard objectives add pk_room_start_countdown dummy
scoreboard players set witch_arc pk_room_start_countdown 0
scoreboard objectives add pk_room_countdown dummy
scoreboard players set witch_arc pk_room_countdown 0
scoreboard objectives add pk_room_succeed dummy
scoreboard players set witch_arc pk_room_succeed 0

###############
#Invisible room
###############

scoreboard objectives add inv_room_end dummy
scoreboard players set witch_arc inv_room_end 0
scoreboard objectives add inv_room_start dummy
scoreboard players set witch_arc inv_room_start 0

##############
#Potion room
##############

scoreboard objectives add pot_room_fireworks_launched dummy
scoreboard players set witch_arc pot_room_fireworks_launched 0
scoreboard objectives add pot_room_fireworks_exploded dummy
scoreboard players set witch_arc pot_room_fireworks_exploded 0
scoreboard objectives add pot_room_potion_creating dummy
scoreboard players set witch_arc pot_room_potion_creating 0
scoreboard objectives add pot_room_potion_created dummy
scoreboard players set witch_arc pot_room_potion_created 0
scoreboard objectives add pot_room_end dummy 
scoreboard players set witch_arc pot_room_end 0
scoreboard objectives add pot_room_start dummy 
scoreboard players set witch_arc pot_room_start 0

#############
#Tree
#############

scoreboard objectives add trapped_inside_tree dummy
scoreboard players set witch_arc trapped_inside_tree 0
scoreboard objectives add finish_tree dummy
scoreboard players set witch_arc finish_tree 0


#############
#Sully fight
#############

scoreboard objectives add sully_fight_start dummy
scoreboard players set witch_arc sully_fight_start 0
scoreboard objectives add sully_fight_end dummy
scoreboard players set witch_arc sully_fight_end 0

######################################################
######################################################
                    #CABANE 2
######################################################
######################################################

function main_fct:witcharc/cabane2/load

######################################################
######################################################

#End
scoreboard objectives add witch_house_doors_locked dummy
scoreboard players set main_fct witch_house_doors_locked 0