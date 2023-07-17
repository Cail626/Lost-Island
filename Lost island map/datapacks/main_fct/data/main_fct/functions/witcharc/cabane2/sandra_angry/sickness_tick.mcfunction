scoreboard players add witch_arc sickness_tick 1
execute if score witch_arc sickness_tick matches 50 run tellraw @a {"text": "(Jean) I am not fell..ing...well","color": "green"}
execute if score witch_arc sickness_tick matches 50 run tellraw @a {"text": "(You) Jean don't fucking die... Damn it!", "color": "gold"}
execute if score witch_arc sickness_tick matches 100 run tellraw @a {"text": "(You) It can't end like this!", "color": "gold"}
execute if score witch_arc sickness_tick matches 150 run function main_fct:witcharc/cabane2/sandra_angry/killing_blow