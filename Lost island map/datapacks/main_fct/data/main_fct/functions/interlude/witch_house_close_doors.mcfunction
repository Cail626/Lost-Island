setblock 145 67 275 air replace
setblock 145 67 275 minecraft:warped_door[half=lower,facing=south,hinge=left] replace
setblock 145 68 275 minecraft:warped_door[half=upper,facing=south,hinge=left] replace
setblock 144 67 275 air replace
setblock 144 67 275 minecraft:warped_door[half=lower,facing=south,hinge=right] replace
setblock 144 68 275 minecraft:warped_door[half=upper,facing=south,hinge=right] replace
execute positioned 145 67 275 run kill @e[type=item,nbt={Item:{id:"minecraft:warped_door",Count:1b}},sort=nearest]