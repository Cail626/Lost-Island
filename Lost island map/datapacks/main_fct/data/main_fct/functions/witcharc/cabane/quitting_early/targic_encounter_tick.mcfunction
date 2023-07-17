#Always look at the player
execute as @e[tag=aj.sandra.root] at @s facing entity @p eyes rotated ~ 0 run tp ~ ~ ~


#Slow down the player 
execute if score witch_arc targic_encounter_tick matches 10 run effect give @a slowness 60 4
execute if score witch_arc targic_encounter_tick matches 20 run tellraw @a {"text": "(???) Hello! May I ask what you are doing here?", "color": "dark_purple"}
execute if score witch_arc targic_encounter_tick matches 40 run tellraw @a {"text": "(You) Damn, I can't move.", "color": "gold"}
execute if score witch_arc targic_encounter_tick matches 60 run tellraw @a {"text": "(Jean) Damn it! Release us! Otherwise, I will...", "color": "green"}
execute if score witch_arc targic_encounter_tick matches 100 run tellraw @a {"text": "(???) Actually, I don't care. I'm quite happy. :) I wanted new toys to play with Sully.", "color": "dark_purple"}
execute if score witch_arc targic_encounter_tick matches 140 run tellraw @a {"text": "(???) Please don't try to resist. I don't want to break you. I have limited control over my powers.", "color": "dark_purple"}


execute if score witch_arc targic_encounter_tick matches 200 run kill @a

scoreboard players add witch_arc targic_encounter_tick 1