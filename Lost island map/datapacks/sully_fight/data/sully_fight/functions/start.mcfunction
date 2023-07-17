tellraw @a {"text": "Sully fight started", "color": "#0000FF"}

scoreboard objectives add sully_state dummy
scoreboard objectives add see_player dummy
#Indicate if the animation of the personnage can be changed
scoreboard objectives add animation_lock dummy
scoreboard objectives add move_model dummy
scoreboard objectives add can_die dummy
#Waken up can takes 3 values: 0-> is sleeping 1->start waking-up animation 2->Animation finished
scoreboard objectives add waken_up dummy
scoreboard objectives add wake_anim dummy

####################################
#Sleeping phase
####################################

scoreboard objectives add sleeping_tick dummy

#####################################
#Sully DEATH
#####################################

scoreboard objectives add sully_death dummy
scoreboard objectives add no_death_animation dummy

#####################################
#ATTACK#
#####################################
scoreboard objectives add ground_atk_cool dummy
#Compute time after the launching of the attack
scoreboard objectives add ground_atk_launch dummy
scoreboard objectives add atk_cool dummy
scoreboard objectives add atk_cool_launch dummy
scoreboard objectives add cry_cool dummy
scoreboard objectives add cry_cool_launch dummy
scoreboard objectives add call_cool dummy
scoreboard objectives add call_cool_launch dummy

#Choose which attack to launch
scoreboard objectives add attack_selector dummy
scoreboard objectives add attack_set dummy
