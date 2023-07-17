scoreboard players add @e[tag=sully,type=iron_golem] atk_cool_launch 1

execute as @e[tag=aj.sully.root] at @s if entity @e[tag=sully,type=iron_golem,scores={atk_cool_launch=1}] run function animated_java:sully/animations/pause_all
execute as @e[tag=aj.sully.root] at @s if entity @e[tag=sully,type=iron_golem,scores={atk_cool_launch=1}] run function animated_java:sully/animations/attack/play

execute as @e[tag=aj.sully.root] at @s if entity @e[tag=sully,type=iron_golem,scores={atk_cool_launch=30}] run function animated_java:sully/animations/pause_all
execute as @e[tag=aj.sully.root] at @s if entity @e[tag=sully,type=iron_golem,scores={atk_cool_launch=30}] run function animated_java:sully/animations/walk/play
scoreboard players set @e[tag=sully,type=iron_golem,scores={atk_cool_launch=30}] atk_cool 40
scoreboard players set @e[tag=sully,type=iron_golem,scores={atk_cool_launch=30}] atk_cool_launch 0
