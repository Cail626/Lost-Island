scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.sandra.animation.angry_ice_idle.local_anim_time 0
scoreboard players set @s aj.sandra.animation.angry_ice_idle.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:sandra/zzzzzzzz/animations/angry_ice_idle/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.sandra.animation.angry_ice_idle