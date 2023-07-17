execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.sully.rig_loaded 1
scoreboard players operation @s aj.sully.export_version = aj.sully.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:sully/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.sully.variant.default aj.id run function animated_java:sully/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.sully.animation.idle aj.id run function animated_java:sully/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.sully.animation.idle aj.id run scoreboard players operation @s aj.sully.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.sully.animation.death aj.id run function animated_java:sully/zzzzzzzz/animations/death/apply_frame_as_root
execute if score #animation aj.i = $aj.sully.animation.death aj.id run scoreboard players operation @s aj.sully.animation.death.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.sully.animation.attack aj.id run function animated_java:sully/zzzzzzzz/animations/attack/apply_frame_as_root
execute if score #animation aj.i = $aj.sully.animation.attack aj.id run scoreboard players operation @s aj.sully.animation.attack.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.sully.animation.ground_stomp aj.id run function animated_java:sully/zzzzzzzz/animations/ground_stomp/apply_frame_as_root
execute if score #animation aj.i = $aj.sully.animation.ground_stomp aj.id run scoreboard players operation @s aj.sully.animation.ground_stomp.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.sully.animation.roar aj.id run function animated_java:sully/zzzzzzzz/animations/roar/apply_frame_as_root
execute if score #animation aj.i = $aj.sully.animation.roar aj.id run scoreboard players operation @s aj.sully.animation.roar.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.sully.animation.sleep aj.id run function animated_java:sully/zzzzzzzz/animations/sleep/apply_frame_as_root
execute if score #animation aj.i = $aj.sully.animation.sleep aj.id run scoreboard players operation @s aj.sully.animation.sleep.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.sully.animation.wake aj.id run function animated_java:sully/zzzzzzzz/animations/wake/apply_frame_as_root
execute if score #animation aj.i = $aj.sully.animation.wake aj.id run scoreboard players operation @s aj.sully.animation.wake.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.sully.animation.call_of_the_zombies aj.id run function animated_java:sully/zzzzzzzz/animations/call_of_the_zombies/apply_frame_as_root
execute if score #animation aj.i = $aj.sully.animation.call_of_the_zombies aj.id run scoreboard players operation @s aj.sully.animation.call_of_the_zombies.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.sully.animation.walk aj.id run function animated_java:sully/zzzzzzzz/animations/walk/apply_frame_as_root
execute if score #animation aj.i = $aj.sully.animation.walk aj.id run scoreboard players operation @s aj.sully.animation.walk.local_anim_time = #frame aj.i
execute at @s run function #animated_java:sully/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i