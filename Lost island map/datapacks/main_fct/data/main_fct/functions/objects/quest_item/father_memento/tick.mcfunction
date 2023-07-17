#Detect if the player has the father's doll and is using it
execute if score main_fct memento_used matches 0 as @a[scores={is_using=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{father_memento:1b}}}] at @s run scoreboard players set main_fct memento_used 1

execute if score main_fct memento_used matches 1 run function main_fct:objects/quest_item/father_memento/used_tick