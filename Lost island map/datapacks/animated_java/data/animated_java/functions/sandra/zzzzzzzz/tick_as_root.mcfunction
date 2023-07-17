execute unless score @s aj.sandra.rig_loaded = @s aj.sandra.rig_loaded run function animated_java:sandra/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:sandra/zzzzzzzz/animations/tick
function #animated_java:sandra/on_tick/as_root