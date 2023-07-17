###########################################
#End of the atttack
###########################################


#70 ticks after the launch: 
scoreboard players set @e[tag=sully,type=iron_golem] animation_lock 0
scoreboard players set @e[tag=sully,type=iron_golem] move_model 1
#Stop animation and start chasing animation
execute as @e[tag=aj.sully.root] run function animated_java:sully/animations/pause_all
execute as @e[tag=aj.sully.root] run function animated_java:sully/animations/walk/play

#Setup of the next atttack
function random:uniform
scoreboard players operation @e[tag=sully,type=iron_golem] attack_selector = $out random
#Reset the 2 cooldowns
scoreboard players set @e[tag=sully,type=iron_golem] ground_atk_cool 0
scoreboard players set @e[tag=sully,type=iron_golem] ground_atk_launch 0

#Add AI 
#execute as @e[tag=sully_feet, type=silverfish] if entity @e[tag=sully,type=iron_golem,scores={ground_atk_launch=70}] run data merge entity @s {NoAI:0b}
