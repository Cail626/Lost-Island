#Chest if chest lacks the items
scoreboard players set witch_arc christophe_helping_mode 1
scoreboard players set witch_arc help_for_christophe 1
execute unless entity @p[nbt={Inventory:[{id:"minecraft:golden_apple"}]}] unless block 143 78 281 minecraft:chest{Items:[{id:"minecraft:golden_apple"}]} if score witch_arc potion_chest_opened matches 1 run scoreboard players set witch_arc christophe_helping_mode 2
execute unless entity @p[nbt={Inventory:[{id:"minecraft:splash_potion",tag:{Potion:"minecraft:weakness"}}]}] unless block 143 78 281 minecraft:chest{Items:[{id:"minecraft:splash_potion",tag:{Potion:"minecraft:weakness"}}]} if score witch_arc potion_chest_opened matches 1 run scoreboard players set witch_arc christophe_helping_mode 3
execute unless entity @p[nbt={Inventory:[{id:"minecraft:golden_apple"},{id:"minecraft:splash_potion",tag:{Potion:"minecraft:weakness"}}]}] unless block 143 78 281 minecraft:chest{Items:[{id:"minecraft:splash_potion",tag:{Potion:"minecraft:weakness"}},{id:"minecraft:golden_apple"}]} if score witch_arc potion_chest_opened matches 1 run scoreboard players set witch_arc christophe_helping_mode 4

execute if score witch_arc christophe_helping_mode matches 1 run function main_fct:witcharc/cabane/christophe/helping/need_advises
#Give players lacking items only
execute unless score witch_arc christophe_helping_mode matches 1 run function main_fct:witcharc/cabane/christophe/helping/lacks_items