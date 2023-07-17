scoreboard players set interlude sandra_madness_state 1
scoreboard players set interlude witch_house_dying 3

#Destroy lights
function main_fct:interlude/sandra_madness/destroy_lights_1

#Let doors of balcony open
setblock 144 67 287 air replace
setblock 144 67 287 minecraft:warped_door[half=lower,facing=north,hinge=left,open=true] replace
setblock 144 68 287 minecraft:warped_door[half=upper,facing=north,hinge=left,open=true] replace
execute positioned 144 67 287 run kill @e[type=item,nbt={Item:{id:"minecraft:warped_door",Count:1b}},sort=nearest]

setblock 145 67 287 air replace
setblock 145 67 287 minecraft:warped_door[half=lower,facing=north,hinge=right,open=true] replace
setblock 145 68 287 minecraft:warped_door[half=upper,facing=north,hinge=right,open=true] replace
execute positioned 144 67 287 run kill @e[type=item,nbt={Item:{id:"minecraft:warped_door",Count:1b}},sort=nearest]

#Summon sandra
execute positioned 144.5 67 290 rotated 0 0 run function animated_java:sandra/summon/very_sad
#Summon crying animation
execute as @e[tag=aj.sandra.root] run function animated_java:sandra/animations/pause_all
execute as @e[tag=aj.sandra.root] run function animated_java:sandra/animations/crying/play
