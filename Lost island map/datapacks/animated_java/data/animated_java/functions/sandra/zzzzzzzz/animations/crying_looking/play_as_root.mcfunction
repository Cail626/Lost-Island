scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.sandra.animation.crying_looking.local_anim_time 0
scoreboard players set @s aj.sandra.animation.crying_looking.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:sandra/zzzzzzzz/animations/crying_looking/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.sandra.animation.crying_looking