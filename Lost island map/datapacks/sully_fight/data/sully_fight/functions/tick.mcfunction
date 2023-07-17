#If sleeps
execute if entity @e[type=iron_golem,tag=sully,scores={waken_up=0}] run function sully_fight:tick/sleep
#If waking up
execute if entity @e[type=iron_golem, tag=sully,scores={waken_up=1}] run function sully_fight:tick/waking_up
#If woken up
execute if entity @e[type=iron_golem, tag=sully,scores={waken_up=2}] run function sully_fight:tick/fight

####################
#DEATH CONTROLLER
###################

#Change score to 1 if sully is dead
execute as @e[tag=aj.sully.root, scores={can_die=1}] at @s unless entity @e[type=minecraft:iron_golem,tag=sully,distance=0..2] if score sully sully_death matches 0 run scoreboard players set sully sully_death 1
#launch dead procédure
execute if score sully sully_death matches 1 run function sully_fight:sully_death
execute if score sully sully_death matches 1 run scoreboard players set sully sully_death 2