#Summon sandra
execute positioned 136.3 67 277.5 rotated 0 0 run function animated_java:sandra/summon/angry_magic
execute as @e[tag=aj.sandra.root] run function animated_java:sandra/animations/magic_playing/play

#Add score to say that we need to simulate sandra
scoreboard players set witch_arc witch_arc_sandra_angry_state 1