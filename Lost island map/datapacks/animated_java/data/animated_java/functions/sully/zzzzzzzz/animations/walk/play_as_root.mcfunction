scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.sully.animation.walk.local_anim_time 0
scoreboard players set @s aj.sully.animation.walk.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:sully/zzzzzzzz/animations/walk/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.sully.animation.walk