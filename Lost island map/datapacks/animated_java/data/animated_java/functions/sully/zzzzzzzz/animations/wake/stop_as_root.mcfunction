scoreboard players set @s aj.sully.animation.wake.local_anim_time 0
tag @s remove aj.sully.animation.wake
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.sully.disable_command_keyframes
function animated_java:sully/zzzzzzzz/animations/wake/tree/leaf_0
tag @s remove aj.sully.disable_command_keyframes