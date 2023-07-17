setblock 961 108 67 air replace
setblock 961 107 67 minecraft:dark_oak_door[half=lower,facing=north,hinge=left] replace
setblock 961 108 67 minecraft:dark_oak_door[half=upper,facing=south,hinge=left] replace
setblock 962 108 68 air replace
setblock 962 107 68 minecraft:dark_oak_door[half=lower,facing=east,hinge=right] replace
setblock 962 108 68 minecraft:dark_oak_door[half=upper,facing=east,hinge=right] replace
execute positioned 961 108 67 run kill @e[type=item,nbt={Item:{id:"minecraft:dark_oak_door",Count:1b}},sort=nearest]