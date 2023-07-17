#After 70 ticks we said that sully has woken up
scoreboard players set @e[tag=sully,type=iron_golem] waken_up 2
#Talking
tellraw @a [{"text":"(Sully) WHO DISTURBS MY SLUMBER?","color":"dark_green"}]
schedule function sully_fight:dialog/jean 1s 
#Can be killed and moved
execute as @e[type=iron_golem, tag=sully] run data merge entity @s {Invulnerable:0b}
#End animation
execute as @e[tag=aj.sully.root] run function animated_java:sully/animations/wake/stop
execute as @e[tag=aj.sully.root] run function animated_java:sully/animations/walk/play

#Add IA: 
execute as @e[tag=sully_feet, type=silverfish] run data merge entity @s {NoAI:0b}
#Add bossbar
bossbar set boss_zombie players @a

#-------------
#SETUP SOUNDS:
#------------- 
execute as @e[type=minecraft:iron_golem,tag=sully] at @s run playsound custom:sully_slumber hostile @a ~ ~ ~ 6
#Start epic Music
execute as @a at @s run stopsound @s record
execute as @a at @s run playsound custom:montogoronto record @s ~ ~ ~ 0.3
function main_fct:sound_controller/manual_switch
