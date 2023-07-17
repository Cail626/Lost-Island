scoreboard players set @s aj.sandra.animation.crying_looking.local_anim_time 0
tag @s remove aj.sandra.animation.crying_looking
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.sandra.disable_command_keyframes
function animated_java:sandra/zzzzzzzz/animations/crying_looking/tree/leaf_0
tag @s remove aj.sandra.disable_command_keyframes