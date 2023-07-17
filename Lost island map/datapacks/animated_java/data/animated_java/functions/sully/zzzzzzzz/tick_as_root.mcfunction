execute unless score @s aj.sully.rig_loaded = @s aj.sully.rig_loaded run function animated_java:sully/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:sully/zzzzzzzz/animations/tick
function #animated_java:sully/on_tick/as_root