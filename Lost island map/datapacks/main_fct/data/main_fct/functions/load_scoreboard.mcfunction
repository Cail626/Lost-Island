tellraw @a {"text": "Main fct: load all variables", "color": "#0000FF"}

#Current_arc: 
#1 = HUB
#2 = Witch Arc
scoreboard objectives add current_arc dummy
scoreboard players set main_fct current_arc 0 

#others

scoreboard objectives add var_3 dummy
scoreboard players set main_fct var_3 3

#Restricted access
scoreboard objectives add restricted_access dummy
scoreboard players set main_fct restricted_access 1
scoreboard objectives add edit_mode dummy
scoreboard players set main_fct edit_mode 1

scoreboard objectives add is_using minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add chest_opened minecraft.custom:minecraft.open_chest

########################
#Music controller
########################

scoreboard objectives add music_control_tick dummy
scoreboard players set main_fct music_control_tick 0
scoreboard objectives add music_control_wait_time dummy
scoreboard players set main_fct music_control_wait_time 7200

########################
#Hub
########################

function main_fct:hub/load

########################
#Witch Arc
########################
function main_fct:witcharc/load_witcharc

###########################
#Interlude
###########################

#1. start tick
#2. stop
scoreboard objectives add witch_house_dying dummy
scoreboard players set interlude witch_house_dying 0
scoreboard objectives add witch_house_dying_tick dummy
scoreboard players set interlude witch_house_dying_tick 0
#1. start tick
#2. stop
scoreboard objectives add sandra_madness_state dummy
scoreboard players set interlude sandra_madness_state 0
scoreboard objectives add sandra_madness_tick dummy
scoreboard players set interlude sandra_madness_tick 0
scoreboard objectives add sandra_madness_detected_tick dummy
scoreboard players set interlude sandra_madness_detected_tick 0
scoreboard objectives add sandra_madness_playsound dummy
scoreboard players set interlude sandra_madness_playsound 0
scoreboard objectives add sandra_madness_detected dummy
scoreboard players set interlude sandra_madness_detected 0


########################
#Load main objectives
########################
scoreboard objectives add deaths deathCount
scoreboard players set @a deaths 0
scoreboard objectives add death_begin dummy
scoreboard players set main_fct death_begin 0

########################
#Load objects objectives 
########################
scoreboard objectives add has_been_used dummy
scoreboard players set main_fct has_been_used 0
scoreboard objectives add memento_used dummy
scoreboard players set main_fct memento_used 0
scoreboard objectives add memento_used_tick dummy
scoreboard players set main_fct memento_used_tick 0

###########################
#Load corruption objectives
###########################

function main_fct:corruption/start

###########################
#Bosses
###########################
function sully_fight:start
