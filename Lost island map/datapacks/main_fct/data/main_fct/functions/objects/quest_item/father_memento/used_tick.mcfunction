execute if score main_fct memento_used_tick matches 0 run function main_fct:objects/quest_item/father_memento/used_first_tick

execute if score main_fct memento_used_tick matches 10 run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ 1 2.0 1
execute if score main_fct memento_used_tick matches 10 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 1 1.0 1
execute if score main_fct memento_used_tick matches 10 run playsound minecraft:block.note_block.flute block @a ~ ~ ~ 1 1.0 1

execute if score main_fct memento_used_tick matches 20 run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ 1 1.8 1
execute if score main_fct memento_used_tick matches 20 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 1 0.9 1
execute if score main_fct memento_used_tick matches 20 run playsound minecraft:block.note_block.flute block @a ~ ~ ~ 1 0.9 1

execute if score main_fct memento_used_tick matches 30 run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ 1 1.6 1
execute if score main_fct memento_used_tick matches 30 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 1 0.8 1
execute if score main_fct memento_used_tick matches 30 run playsound minecraft:block.note_block.flute block @a ~ ~ ~ 1 0.8 1

execute if score main_fct memento_used_tick matches 40 run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ 1 1.4 1
execute if score main_fct memento_used_tick matches 40 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 1 0.7 1
execute if score main_fct memento_used_tick matches 40 run playsound minecraft:block.note_block.flute block @a ~ ~ ~ 1 0.7 1

execute if score main_fct memento_used_tick matches 50 run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ 1 1.2 1
execute if score main_fct memento_used_tick matches 50 run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ 1 1.8 1
execute if score main_fct memento_used_tick matches 50 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 1 0.6 1
execute if score main_fct memento_used_tick matches 50 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 1 0.9 1
execute if score main_fct memento_used_tick matches 50 run playsound minecraft:block.note_block.flute block @a ~ ~ ~ 1 0.6 1
execute if score main_fct memento_used_tick matches 50 run playsound minecraft:block.note_block.flute block @a ~ ~ ~ 1 0.9 1
execute if score main_fct memento_used_tick matches 50 run playsound minecraft:block.note_block.bell block @a ~ ~ ~ 1 2.0 1

execute if score main_fct memento_used_tick matches 50 run kill @a

scoreboard players add main_fct memento_used_tick 1