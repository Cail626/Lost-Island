#Always look at the player
execute as @e[tag=aj.sandra.root] at @s facing entity @p eyes rotated ~ 0 run tp ~ ~ ~

scoreboard players add witch_arc sandra_angried_tick 1

execute if score witch_arc sandra_angried_tick matches 150 run function main_fct:witcharc/cabane2/sandra_angry/sandra_start_sickness