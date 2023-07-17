summon iron_golem ~ ~ ~ {HasVisualFire:0b,Silent:1b,Tags:["sully"],ActiveEffects:[{Id:2,Amplifier:255,Duration:1999980,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.follow_range",Base:30}]}
summon silverfish ~ ~ ~ {HasVisualFire:0b,Silent:1b,Tags:["sully_feet"],Attributes:[{Name:"generic.follow_range",Base:30}],Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:1999980,ShowParticles:0b}]}

#summon iron_golem ~ ~ ~ {HasVisualFire:0b,Silent:1b,Tags:["sully"],ActiveEffects:[{Id:2,Amplifier:255,Duration:1999980,ShowParticles:0b}],Attributes:[{Name:"generic.follow_range",Base:30}]}
#summon silverfish ~ ~ ~ {HasVisualFire:0b,Silent:1b,Tags:["sully_feet"],Attributes:[{Name:"generic.follow_range",Base:30}],Invulnerable:1b}


execute rotated 0 0 run function animated_java:sully/summon

################################
#Initiate the variables
################################
scoreboard players set sully sully_death 0
scoreboard players set sully no_death_animation 0
scoreboard players set @e[tag=sully, type=iron_golem, distance=..1] see_player 0
scoreboard players set @e[tag=sully, type=iron_golem, distance=..1] animation_lock 0
scoreboard players set @e[tag=aj.sully.root, distance=..1] can_die 1
scoreboard players set @e[tag=sully, type=iron_golem, distance=..1] move_model 1
scoreboard players set @e[type=iron_golem,tag=sully, distance=..1] waken_up 0
scoreboard players set @e[type=iron_golem,tag=sully, distance=..1] wake_anim 0
scoreboard players set @e[type=iron_golem,tag=sully, distance=..1] sleeping_tick 0
#ATTACK
scoreboard players set @e[tag=sully, type=iron_golem, distance=..1] attack_selector 0
scoreboard players set @e[tag=sully, type=iron_golem, distance=..1] cry_cool 50
scoreboard players set @e[tag=sully, type=iron_golem, distance=..1] cry_cool_launch 0
scoreboard players set @e[tag=sully, type=iron_golem, distance=..1] ground_atk_cool 0
scoreboard players set @e[tag=sully, type=iron_golem, distance=..1] ground_atk_launch 0
scoreboard players set @e[tag=sully, type=iron_golem, distance=..1] atk_cool 40
scoreboard players set @e[tag=sully, type=iron_golem, distance=..1] atk_cool_launch 0
scoreboard players set @e[tag=sully, type=iron_golem, distance=..1] call_cool 0
scoreboard players set @e[tag=sully, type=iron_golem, distance=..1] call_cool_launch 0


scoreboard players set @e[tag=sully, type=iron_golem, distance=..1] attack_set 9

#INITIATE RANDOM NUMBER GENERATOR
scoreboard players operation $max random = @e[tag=sully, type=iron_golem] attack_set
scoreboard players set $min random 0

#Cannot moved
#execute as @e[tag=sully, type=iron_golem] run data merge entity @s {Invulnerable:1b}
execute as @e[tag=sully, type=iron_golem] run data merge entity @s {NoAI:1b}
execute as @e[tag=sully_feet, type=silverfish] run data merge entity @s {NoAI:1b}
#Launch sleeping animation
execute as @e[tag=aj.sully.root] run function animated_java:sully/animations/sleep/play
#Add snoring
execute as @e[tag=aj.sully.root] at @e run playsound custom:sully_snoring hostile @a ~ ~ ~

######################################
#Life point bar#
######################################

#add boss bar
bossbar add boss_zombie "Sully"
bossbar set boss_zombie color green
scoreboard objectives add health dummy
bossbar set boss_zombie name [{"text":"Sully(the angry child)","color":"green","bold":true}]
#Set max value of the bar
execute store result bossbar boss_zombie max run data get entity @e[tag=sully, type=iron_golem,limit=1] Health