scoreboard players set @s aj.sandra.animation.magic_playing.local_anim_time 0
tag @s remove aj.sandra.animation.magic_playing
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.sandra.disable_command_keyframes
function animated_java:sandra/zzzzzzzz/animations/magic_playing/tree/leaf_0
tag @s remove aj.sandra.disable_command_keyframes