scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.sully.animation.ground_stomp.local_anim_time 0
scoreboard players set @s aj.sully.animation.ground_stomp.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:sully/zzzzzzzz/animations/ground_stomp/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.sully.animation.ground_stomp