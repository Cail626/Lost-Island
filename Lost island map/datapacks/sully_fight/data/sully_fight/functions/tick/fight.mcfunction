#Move the model toward the player
#execute as @e[tag=sully,type=iron_golem,scores={move_model=1}] at @s if entity @a[distance=..30] run teleport @s ~ ~ ~ facing entity @p
#execute as @e[tag=sully,type=iron_golem,scores={move_model=1}] at @s rotated ~ 0 if entity @a[distance=..30] run teleport @s ^ ^ ^0.15

#Move the iron golem at the position of the silverfish
execute as @e[type=minecraft:iron_golem,tag=sully] at @e[type=minecraft:silverfish,tag=sully_feet] run tp ~ ~ ~
execute as @e[tag=sully_feet,type=silverfish] at @s if entity @a[distance=30..] run data merge entity @s {NoAI:1b}
execute as @e[tag=sully_feet,type=silverfish] at @s if entity @a[distance=..30] if entity @e[tag=sully,type=iron_golem,scores={move_model=0}] run data merge entity @s {NoAI:1b}
execute as @e[tag=sully_feet,type=silverfish] at @s if entity @a[distance=..30] if entity @e[tag=sully,type=iron_golem,scores={move_model=1}] run data merge entity @s {NoAI:0b}

#Move the model at the position of the iron_golem
execute as @e[tag=aj.sully.root] if entity @e[type=minecraft:iron_golem,tag=sully,scores={move_model=1}] run tp @e[type=minecraft:iron_golem,tag=sully,limit=1,sort=nearest]
execute as @e[tag=aj.sully.root] at @s facing entity @p eyes rotated ~ 0 run tp ~ ~ ~

#Enraged at the nearest player
execute as @e[tag=sully, type=minecraft:iron_golem] at @s run data modify entity @s AngryAt set from entity @e[type=player, limit=1, sort=nearest]

#If animation isn't locked: we load animations
execute if entity @e[tag=sully,type=iron_golem, scores={animation_lock=0}] run function sully_fight:animation_tick

#If the player is nearby activate the IA to deal damage to the player
execute as @e[tag=sully,type=iron_golem] at @s if entity @a[distance=0..3] run effect give @a[distance=0..2] instant_damage 1

##################
#ATTACK CONTROLLER
##################

#We execute the normal attack if the ground attack isn't launched
execute as @e[tag=sully,type=iron_golem, scores={atk_cool=40,ground_atk_cool=..99,cry_cool=..49}] at @s run function sully_fight:attack/basic_attack
execute as @e[tag=sully,type=iron_golem, scores={atk_cool=..39,ground_atk_cool=..99,cry_cool=..49}] at @s if entity @a[distance=0..4] run scoreboard players add @e[tag=sully,type=iron_golem, scores={atk_cool=1..}] atk_cool 1

#Cri
execute as @e[tag=sully,type=iron_golem, scores={cry_cool=50}] at @s run function sully_fight:attack/cry_attack
execute as @e[tag=sully,type=iron_golem, scores={cry_cool=..49,attack_selector=0..2}] at @s if entity @a[distance=0..4] run scoreboard players add @e[tag=sully,type=iron_golem] cry_cool 1

#Appel
#Invoquer des zombies si le joueur reste trop loin de sully
execute as @e[tag=sully,type=iron_golem, scores={call_cool=160}] at @s run function sully_fight:attack/call_attack
execute as @e[tag=sully,type=iron_golem, scores={call_cool=..159}] at @s if entity @a[distance=5..30] run scoreboard players add @e[tag=sully,type=iron_golem] call_cool 1


#Ground attack
#FONCTIONNEMENT: ground_atk_cool charge entre 0 et 120 si le joueur est à proximité, une fois chargé, le monstre lance l'attaque 
#et ground_atk_launch charge pendant 70 secondes le temps que l'attaque s'execute
execute as @e[tag=sully,type=iron_golem, scores={ground_atk_cool=100} ] at @s run function sully_fight:attack/ground_attack/ground_attack
#Si il y a un joueur proche on charge l'attaque au sol jusqu'à 120
execute as @e[tag=sully,type=iron_golem, scores={ground_atk_cool=..99,attack_selector=3..}] at @s if entity @a[distance=0..4] run scoreboard players add @e[tag=sully,type=iron_golem] ground_atk_cool 1

##################
#Life bar
#################

execute store result bossbar boss_zombie value run data get entity @e[type=minecraft:iron_golem,tag=sully,limit=1] Health

##################
#DAMAGE CONTROLLER
##################

#hurt
execute as @e[tag=aj.sully.root] at @s if entity @e[type=minecraft:iron_golem,tag=sully,nbt={HurtTime:10s}, distance=0..1] run playsound minecraft:entity.zombie.hurt hostile @p

#BUG to solve: when two entity are too close together the silverfish takes knockback
#The solution is to kill the silverfish and spawn a new one
execute if entity @e[type=minecraft:iron_golem,tag=sully,nbt={HurtTime:10s}] as @e[tag=sully_feet,type=silverfish] run kill @e[type=silverfish,tag=sully_feet]
execute as @e[type=minecraft:iron_golem,tag=sully,nbt={HurtTime:10s}] at @s run summon silverfish ~ ~ ~ {HasVisualFire:0b,Silent:1b,Tags:["sully_feet"],Attributes:[{Name:"generic.follow_range",Base:30}],Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:1999980,ShowParticles:0b}]}
execute as @e[type=minecraft:silverfish,tag=sully_feet] at @s if entity @e[type=minecraft:iron_golem,tag=sully,nbt={HurtTime:10s}] run teleport @s ~ ~ ~ facing entity @p

