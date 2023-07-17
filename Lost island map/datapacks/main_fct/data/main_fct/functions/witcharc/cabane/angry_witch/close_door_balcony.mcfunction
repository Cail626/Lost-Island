setblock 139 73 277 air replace
setblock 139 73 277 minecraft:dark_oak_door[half=lower,facing=east,hinge=left] replace
setblock 139 74 277 minecraft:dark_oak_door[half=upper,facing=east,hinge=left] replace
execute positioned 139 73 277 run kill @e[type=item,nbt={Item:{id:"minecraft:dark_oak_door",Count:1b}},sort=nearest]