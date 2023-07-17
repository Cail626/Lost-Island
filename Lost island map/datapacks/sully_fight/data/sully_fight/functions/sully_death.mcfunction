
#Sound
execute as @e[tag=aj.sully.root] at @s run playsound minecraft:entity.zombie.death hostile @p
#Dialog
execute if score sully no_death_animation matches 0 run tellraw @a [{"text":"(Sully) I feel sleepy","color":"dark_green"}]
#Stop all animations and start death
execute as @e[tag=aj.sully.root] at @s run function animated_java:sully/animations/pause_all
execute as @e[tag=aj.sully.root] at @s if score sully no_death_animation matches 0 run function animated_java:sully/animations/death/play
# Remove entity after 5 seconds if death animation
execute as @e[tag=aj.sully.root] at @s if score sully no_death_animation matches 0 run schedule function sully_fight:remove_entity 5s
# Remove entity immediately if no death animation
execute as @e[tag=aj.sully.root] at @s if score sully no_death_animation matches 1 run function sully_fight:remove_entity

# Remove silverfish
kill @e[type=minecraft:silverfish, tag=sully_feet]
# Remove bossbar
bossbar remove minecraft:boss_zombie

#==========
#SOUNDS
#==========

#Stop snoring
stopsound @a hostile custom:sully_snoring
#Stop music
execute as @a at @s run stopsound @s record custom:montogoronto
execute as @e[tag=aj.sully.root] at @s run playsound custom:sully_sleepy hostile @a ~ ~ ~ 6
