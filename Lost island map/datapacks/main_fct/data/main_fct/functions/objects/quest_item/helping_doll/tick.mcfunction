#Detect if the player has the helping doll and is using it
execute if score main_fct has_been_used matches 0 as @a[scores={is_using=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{help_doll:1b}}}] at @s run function main_fct:objects/quest_item/helping_doll/helping_doll_used
