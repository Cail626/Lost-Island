#Add particle effect raining
particle minecraft:rain 144.5 69 290 1 4 1 3 10

execute if score interlude sandra_madness_playsound matches 1 if score interlude sandra_madness_tick matches 0 run playsound custom:audio1 block @a 144.5 67 290 1.5

execute if score interlude sandra_madness_playsound matches 1 run scoreboard players add interlude sandra_madness_tick 1
execute if score interlude sandra_madness_tick matches 380 run function main_fct:interlude/sandra_madness/end_sound
execute positioned 144.5 67 290 if entity @a[distance=..16] run scoreboard players set interlude sandra_madness_playsound 1
