#Check when the player use the helping doll
function main_fct:objects/quest_item/helping_doll/tick
execute if score main_fct has_been_used matches 1 run function main_fct:witcharc/dream_world/invisible_room/end

#Check if the player is opening the chest
execute positioned 965 106 157 as @a[scores={chest_opened=1..},distance=..5] at @s run function main_fct:witcharc/dream_world/invisible_room/chest_opened

