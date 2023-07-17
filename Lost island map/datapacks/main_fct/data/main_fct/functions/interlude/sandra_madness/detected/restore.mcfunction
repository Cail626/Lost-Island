setblock 148 68 293 lantern replace
setblock 141 68 293 lantern replace
function animated_java:sandra/remove/all
execute positioned 144.5 67 290 rotated 0 0 run function animated_java:sandra/summon/very_sad
#Summon crying animation
execute as @e[tag=aj.sandra.root] run function animated_java:sandra/animations/pause_all
execute as @e[tag=aj.sandra.root] run function animated_java:sandra/animations/crying/play
weather clear
stopsound @a