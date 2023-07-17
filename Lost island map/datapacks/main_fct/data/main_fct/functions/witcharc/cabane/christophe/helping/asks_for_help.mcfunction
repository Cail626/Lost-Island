tellraw @a {"text": "(You) Yeah, I guess I have nothing to lose by asking for your help.", "color": "gold"}
tellraw @a {"text": "(Jean) Could you try to be a little nicer?", "color": "green"}
tellraw @a {"text": "(You) No.", "color": "gold"}


#Check if the player lacks the book of explainations
execute if score witch_arc potion_chest_opened matches 1 run function main_fct:witcharc/cabane/christophe/helping/has_book
execute if score witch_arc potion_chest_opened matches 0 run function main_fct:witcharc/cabane/christophe/helping/lacks_book

