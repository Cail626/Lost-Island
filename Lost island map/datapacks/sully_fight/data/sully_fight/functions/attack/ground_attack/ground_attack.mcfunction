
###########################################
#Start of the atttack
###########################################

#Launch ground hitting animation 
execute as @e[tag=aj.sully.root] if entity @e[tag=sully,type=iron_golem,scores={ground_atk_launch=0}] run function animated_java:sully/animations/pause_all
execute as @e[tag=aj.sully.root] if entity @e[tag=sully,type=iron_golem,scores={ground_atk_launch=0}] run function animated_java:sully/animations/ground_stomp/play
scoreboard players set @e[tag=sully,type=iron_golem,scores={ground_atk_launch=0}] animation_lock 1
scoreboard players set @e[tag=sully,type=iron_golem,scores={ground_atk_launch=0}] move_model 0

#Remove IA
#execute as @e[tag=sully_feet, type=silverfish] if entity @e[tag=sully,type=iron_golem,scores={ground_atk_launch=0}] run data merge entity @s {NoAI:1b}

#Create explosion after 22 ticks
execute as @e[scores={ground_atk_launch = 20}, type=iron_golem, tag=sully] run data merge entity @s {Invulnerable:1b}
execute as @e[scores={ground_atk_launch = 20}, type=iron_golem, tag=sully] run scoreboard players set @e[tag=aj.sully.root] can_die 0
execute as @e[scores={ground_atk_launch = 20}, type=iron_golem, tag=sully] run tp ~ ~10 ~
execute as @e[type=silverfish, tag=sully_feet] if entity @e[scores={ground_atk_launch = 20}, type=iron_golem, tag=sully] run tp ~ ~10 ~
execute if entity @e[scores={ground_atk_launch = 22}, type=iron_golem, tag=sully] as @e[tag=aj.sully.root] at @s run summon creeper ~ ~ ~ {Silent:1,ExplosionRadius:4b,Fuse:0}
execute if entity @e[scores={ground_atk_launch = 22}, type=iron_golem, tag=sully] as @e[tag=aj.sully.root] at @s run particle minecraft:block dark_oak_planks ~ ~1 ~ 2 0.125 2 1 100
execute if entity @e[scores={ground_atk_launch = 22}, type=iron_golem, tag=sully] as @e[tag=aj.sully.root] at @s run particle minecraft:block warped_planks ~ ~1 ~ 2 0.125 2 1 100
execute if entity @e[scores={ground_atk_launch = 22}, type=iron_golem, tag=sully] as @e[tag=aj.sully.root] at @s run particle minecraft:block warped_stem ~ ~1 ~ 2 0.125 2 1 50
execute as @e[scores={ground_atk_launch = 24}, type=iron_golem, tag=sully] run data merge entity @s {Invulnerable:0b}
execute as @e[scores={ground_atk_launch = 24}, type=iron_golem, tag=sully] run tp ~ ~-10 ~
execute as @e[type=silverfish, tag=sully_feet] if entity @e[scores={ground_atk_launch = 24}, type=iron_golem, tag=sully] run tp ~ ~-10 ~
execute as @e[scores={ground_atk_launch = 24}, type=iron_golem, tag=sully] run scoreboard players set @e[tag=aj.sully.root] can_die 1

###########################################
#Loop
###########################################


#Add 1 to the score
scoreboard players add @e[tag=sully,type=iron_golem] ground_atk_launch 1

###########################################
#End of the atttack
###########################################


#70 ticks after the launch: 
execute if entity @e[tag=sully,type=iron_golem,scores={ground_atk_launch=70}] run function sully_fight:attack/ground_attack/ground_attack_end
