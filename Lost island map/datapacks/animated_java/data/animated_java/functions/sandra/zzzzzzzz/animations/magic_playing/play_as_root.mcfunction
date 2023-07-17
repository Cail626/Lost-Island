scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.sandra.animation.magic_playing.local_anim_time 0
scoreboard players set @s aj.sandra.animation.magic_playing.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:sandra/zzzzzzzz/animations/magic_playing/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.sandra.animation.magic_playing