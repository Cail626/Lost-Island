execute as @a at @s if score witch_arc sully_fight_start matches 0 run playsound custom:witch_arc_dream_world record @s ~ ~ ~ 0.2
#Execute sully boss fight sound
execute as @a at @s if score witch_arc sully_fight_start matches 2 if score witch_arc sully_fight_end matches 0 run playsound custom:montogoronto record @s ~ ~ ~ 0.2

scoreboard players set main_fct music_control_wait_time 4400