tellraw @a {"text": "Your soul is freed from this place"}
#Reset spawnpoint
execute if score witch_arc pot_room_start matches 0 run spawnpoint @a 967 110 99
execute if score witch_arc pot_room_start matches 1 run spawnpoint @a 930 112 97
execute if score witch_arc pot_room_end matches 1 run spawnpoint @a 946 100 76
scoreboard players set witch_arc trapped_inside_tree 0
scoreboard players set witch_arc finish_tree 1