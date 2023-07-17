setblock 149 73 282 air replace
setblock 149 73 282 minecraft:dark_oak_door[half=lower,facing=north,hinge=left] replace
setblock 149 74 282 minecraft:dark_oak_door[half=upper,facing=north,hinge=left] replace
execute positioned 149 74 282 run kill @e[type=item,nbt={Item:{id:"minecraft:dark_oak_door",Count:1b}},sort=nearest]
scoreboard players set witch_arc opened_doors_counter_activated 1