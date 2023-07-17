#If sully is hurt when he sleeps, we start the fight
#hurt
execute if entity @e[type=minecraft:iron_golem,tag=sully,nbt={HurtTime:10s}] run function sully_fight:wake_up

#Redo sleeping sound after its end
execute as @e[type=minecraft:iron_golem,tag=sully,scores={sleeping_tick=700}] at @s run stopsound @a hostile custom:sully_snoring
execute as @e[type=minecraft:iron_golem,tag=sully,scores={sleeping_tick=700}] at @s run playsound custom:sully_snoring hostile @a ~ ~ ~
execute as @e[type=minecraft:iron_golem,tag=sully,scores={sleeping_tick=700}] at @s run scoreboard players set @s sleeping_tick 0

scoreboard players add @e[type=minecraft:iron_golem,tag=sully] sleeping_tick 1