#Project generated by Animated Java (https://animated-java.dev/)

function sully_boss:animations/roar/tree/root_bone_name
execute store result score .calc aj.i run data get entity @s Air
execute store result entity @s Air short 1 run scoreboard players add .calc aj.i 2