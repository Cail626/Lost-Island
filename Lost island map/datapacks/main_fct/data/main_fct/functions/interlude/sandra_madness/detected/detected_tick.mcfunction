execute if score interlude sandra_madness_detected_tick matches 40 run function main_fct:interlude/sandra_madness/detected/first_phase
execute if score interlude sandra_madness_detected_tick matches 80 run function main_fct:interlude/sandra_madness/detected/second_phase
execute if score interlude sandra_madness_detected_tick matches 160 run function main_fct:interlude/sandra_madness/detected/third_phase
execute if score interlude sandra_madness_detected_tick matches 400 run function main_fct:interlude/sandra_madness/end

#Look at the player
execute as @e[tag=aj.sandra.root] at @s facing entity @p eyes rotated ~ 0 run tp ~ ~ ~

scoreboard players add interlude sandra_madness_detected_tick 1 
