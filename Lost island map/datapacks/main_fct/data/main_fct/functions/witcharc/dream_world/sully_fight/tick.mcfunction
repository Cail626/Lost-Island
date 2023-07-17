execute if score witch_arc sully_fight_start matches 0 run function main_fct:witcharc/dream_world/sully_fight/preparation

#Check if the fight has started
execute if score witch_arc sully_fight_start matches 1 if entity @e[type=iron_golem,tag=sully,scores={waken_up=1}] run function main_fct:witcharc/dream_world/sully_fight/fight_start

#Check if the fight is finished
execute if score witch_arc sully_fight_start matches 2 if score witch_arc sully_fight_end matches 0 unless entity @e[type=iron_golem,tag=sully] run function main_fct:witcharc/dream_world/sully_fight/fight_won