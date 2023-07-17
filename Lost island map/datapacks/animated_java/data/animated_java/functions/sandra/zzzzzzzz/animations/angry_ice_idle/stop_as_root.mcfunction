scoreboard players set @s aj.sandra.animation.angry_ice_idle.local_anim_time 0
tag @s remove aj.sandra.animation.angry_ice_idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.sandra.disable_command_keyframes
function animated_java:sandra/zzzzzzzz/animations/angry_ice_idle/tree/leaf_0
tag @s remove aj.sandra.disable_command_keyframes