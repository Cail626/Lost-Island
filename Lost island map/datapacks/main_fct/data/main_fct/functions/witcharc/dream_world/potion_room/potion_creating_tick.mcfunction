#Create a cloud
particle minecraft:cloud 932 121 95 0.125 0.375 0.125 0.05 2 normal

#When the potion is created we add the potion
execute if score witch_arc pot_room_potion_creating matches 20 run summon item 932 121 95 {Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Super potion of leaping"}'},CustomPotionEffects:[{Id:8,Amplifier:4b,Duration:120}]}}}
execute if score witch_arc pot_room_potion_creating matches 20 run scoreboard players set witch_arc pot_room_potion_created 0


#Add 1 to the potion creating counter
scoreboard players add witch_arc pot_room_potion_creating 1