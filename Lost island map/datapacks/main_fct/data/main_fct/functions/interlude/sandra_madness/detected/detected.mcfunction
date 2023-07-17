scoreboard players set interlude sandra_madness_detected 1
weather thunder
#Pause animation
execute as @e[tag=aj.sandra.root] run function animated_java:sandra/animations/pause_all
execute as @e[tag=aj.sandra.root] run function animated_java:sandra/animations/crying_looking/play
#Setup music
stopsound @a
execute at @a run playsound custom:mellohi_stereo record @a ~ ~ ~ 0.8 0
function main_fct:sound_controller/manual_switch