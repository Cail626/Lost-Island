execute if score interlude sandra_madness_detected matches 0 run function main_fct:interlude/sandra_madness/sound_tick
execute if score interlude sandra_madness_detected matches 1 run function main_fct:interlude/sandra_madness/detected/detected_tick

execute positioned 142 67 287.5 if entity @a[dx=4,dy=2,dz=4] if score interlude sandra_madness_detected matches 0 run function main_fct:interlude/sandra_madness/detected/detected