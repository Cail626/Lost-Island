
#Start animation
execute as @e[tag=aj.sully.root] if entity @e[tag=sully,type=iron_golem,scores={wake_anim=0}] run function animated_java:sully/animations/sleep/stop
execute as @e[tag=aj.sully.root] if entity @e[tag=sully,type=iron_golem,scores={wake_anim=0}] run function animated_java:sully/animations/wake/play

#Stop snoring
execute if entity @e[tag=sully,type=iron_golem,scores={wake_anim=0}] run stopsound @a hostile custom:sully_snoring

#add 1 to counter
scoreboard players add @e[type=iron_golem,tag=sully] wake_anim 1

#####################
#END OF THE ANIMATION
#####################

execute if entity @e[tag=sully,type=iron_golem,scores={wake_anim=70}] run function sully_fight:begin_fight