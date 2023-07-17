scoreboard players add witch_arc witch_house_illegal_entry_tick 1 

execute if score witch_arc witch_house_illegal_entry_tick matches 60 run tellraw @a {"text": "(You) I am felling unwell...", "color": "gold"}
execute if score witch_arc witch_house_illegal_entry_tick matches 160 run scoreboard players set witch_arc witch_house_entering 3
