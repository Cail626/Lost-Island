scoreboard players set @s aj.sully.animation.call_of_the_zombies.local_anim_time 0
tag @s remove aj.sully.animation.call_of_the_zombies
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.sully.disable_command_keyframes
function animated_java:sully/zzzzzzzz/animations/call_of_the_zombies/tree/leaf_0
tag @s remove aj.sully.disable_command_keyframes