#Animation to remove Sandra
particle minecraft:campfire_cosy_smoke 145 75 280 0.125 0.125 0.125 0 100 normal
particle minecraft:campfire_cosy_smoke 145 76 280 0.125 0.125 0.125 0 100 normal

scoreboard players add witch_arc sandra_leaves_tick 1
#End of the animation
execute if score witch_arc sandra_leaves_tick matches 30 positioned 145 75 280 as @e[tag=aj.sandra.root,distance=..2] run function animated_java:sandra/remove/this

#Sandra goes back to her room
execute if score witch_arc sandra_leaves_tick matches 30 run function main_fct:witcharc/cabane2/sandra_angry/start
execute if score witch_arc sandra_leaves_tick matches 30 run scoreboard players set witch_arc sandra_leaves 2
