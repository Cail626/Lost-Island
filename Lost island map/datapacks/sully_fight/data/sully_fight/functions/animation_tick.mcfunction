
#Walking animation when the player is near
execute as @e[tag=aj.sully.root] at @s if entity @a[distance=0..30] if entity @e[tag=sully,type=iron_golem, distance=0..1,scores={see_player=0}] run function animated_java:sully/animations/idle/stop
execute as @e[tag=aj.sully.root] at @s if entity @a[distance=0..30] if entity @e[tag=sully,type=iron_golem, distance=0..1,scores={see_player=0}] run function animated_java:sully/animations/walk/play
execute as @e[tag=aj.sully.root] at @s if entity @a[distance=0..30] if entity @e[tag=sully,type=iron_golem, distance=0..1,scores={see_player=0}] run scoreboard players set @e[tag=sully,type=iron_golem] see_player 1

#Make idle animation when the player is far
execute as @e[tag=aj.sully.root] at @s unless entity @a[distance=0..30] if entity @e[tag=sully,type=iron_golem, distance=0..1,scores={see_player=1}] run function animated_java:sully/animations/walk/stop
execute as @e[tag=aj.sully.root] at @s unless entity @a[distance=0..30] if entity @e[tag=sully,type=iron_golem, distance=0..1,scores={see_player=1}] run function animated_java:sully/animations/idle/play
execute as @e[tag=aj.sully.root] at @s unless entity @a[distance=0..30] if entity @e[tag=sully,type=iron_golem, distance=0..1,scores={see_player=1}] run scoreboard players set @e[tag=sully,type=iron_golem] see_player 0

