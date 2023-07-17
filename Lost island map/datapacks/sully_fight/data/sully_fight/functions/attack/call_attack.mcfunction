
###########################################
#Start of the atttack
###########################################

#Launch cry animation
execute as @e[tag=aj.sully.root] if entity @e[tag=sully,type=iron_golem,scores={call_cool_launch=0}] run function animated_java:sully/animations/pause_all
execute as @e[tag=aj.sully.root] if entity @e[tag=sully,type=iron_golem,scores={call_cool_launch=0}] run function animated_java:sully/animations/roar/play
#Set parameters
scoreboard players set @e[tag=sully,type=iron_golem,scores={call_cool_launch=0}] animation_lock 1
scoreboard players set @e[tag=sully,type=iron_golem,scores={call_cool_launch=0}] move_model 0
#Remove IA
#execute as @e[tag=sully_feet, type=silverfish] if entity @e[tag=sully,type=iron_golem,scores={call_cool_launch=0}] run data merge entity @s {NoAI:1b}

#sound
execute as @s[scores={call_cool_launch = 10}, type=iron_golem, tag=sully] run playsound entity.ravager.roar hostile @a



###########################################
#Invokation of the zombie's heads
###########################################

execute as @e[tag=sully,type=iron_golem,scores={call_cool_launch=20}] run tellraw @a [{"text":"Why are you running away?","color":"green"}]
#execute as @e[tag=sully,type=iron_golem,scores={call_cool_launch=20}] run summon zombie ^1 ^ ^
#execute as @e[tag=sully,type=iron_golem,scores={call_cool_launch=20}] run summon zombie ^-1 ^ ^
execute as @e[tag=sully,type=iron_golem,scores={call_cool_launch=20}] positioned ^-1 ^ ^ run function main_fct:mobs/zombie_head
execute as @e[tag=sully,type=iron_golem,scores={call_cool_launch=20}] positioned ^1 ^ ^ run function main_fct:mobs/zombie_head

###########################################
#Loop
###########################################


#Add 1 to the score
scoreboard players add @e[tag=sully,type=iron_golem] call_cool_launch 1

###########################################
#End of the atttack
###########################################

#add IA
#execute as @e[tag=sully_feet, type=silverfish] if entity @e[tag=sully,type=iron_golem,scores={call_cool_launch=45}] run data merge entity @s {NoAI:0b}

#setup next attack to be a ground_attack
function random:uniform
execute if entity @e[tag=sully,type=iron_golem,scores={call_cool_launch=45}] run scoreboard players operation @e[tag=sully,type=iron_golem] attack_selector = $out random
#Stop animation and start chasing animation
execute as @e[tag=aj.sully.root] if entity @e[tag=sully,type=iron_golem,scores={call_cool_launch=45}] run function animated_java:sully/animations/roar/stop
execute as @e[tag=aj.sully.root] if entity @e[tag=sully,type=iron_golem,scores={call_cool_launch=45}] run function animated_java:sully/animations/walk/play
#Set parameters
scoreboard players set @e[tag=sully,type=iron_golem,scores={call_cool_launch=45}] animation_lock 0
scoreboard players set @e[tag=sully,type=iron_golem,scores={call_cool_launch=45}] move_model 1
scoreboard players set @e[tag=sully,type=iron_golem,scores={call_cool_launch=45}] call_cool 0
scoreboard players set @e[tag=sully,type=iron_golem,scores={call_cool_launch=45}] call_cool_launch 0
