#Unlock doors
scoreboard players set main_fct witch_house_doors_locked 0

#Let one door open
setblock 145 67 275 air replace
setblock 145 67 275 minecraft:warped_door[half=lower,facing=south,hinge=left,open=true] replace
setblock 145 68 275 minecraft:warped_door[half=upper,facing=south,hinge=left,open=true] replace
execute positioned 145 68 275 run kill @e[type=item,nbt={Item:{id:"minecraft:warped_door",Count:1b}},sort=nearest]

#Launch tick event
scoreboard players set interlude witch_house_dying 1
#TO DO
#Destroy house
