tellraw @a {"text": "(Jean) Looks like you are lacking something important here!", "color":"green"}
tellraw @a {"text": "(You) Like what?", "color":"gold"}
tellraw @a {"text": "(Jean) Like these! ", "color":"green"}

execute if score witch_arc christophe_helping_mode matches 2 positioned 148 70 276 run kill @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}},distance=..20]
execute if score witch_arc christophe_helping_mode matches 2 run give @a minecraft:golden_apple

execute if score witch_arc christophe_helping_mode matches 3 positioned 148 70 276 run kill @e[type=item,nbt={Item:{id:"minecraft:splash_potion",tag:{Potion:"minecraft:weakness"}}},distance=..20]
execute if score witch_arc christophe_helping_mode matches 3 run give @a minecraft:splash_potion{Potion:"minecraft:weakness"}

execute if score witch_arc christophe_helping_mode matches 4 positioned 148 70 276 run kill @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}},distance=..20]
execute if score witch_arc christophe_helping_mode matches 4 positioned 148 70 276 run kill @e[type=item,nbt={Item:{id:"minecraft:splash_potion",tag:{Potion:"minecraft:weakness"}}},distance=..20]
execute if score witch_arc christophe_helping_mode matches 4 run give @a minecraft:golden_apple
execute if score witch_arc christophe_helping_mode matches 4 run give @a minecraft:splash_potion{Potion:"minecraft:weakness"}
