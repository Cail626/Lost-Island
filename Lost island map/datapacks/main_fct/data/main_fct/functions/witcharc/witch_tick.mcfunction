
#jean tick
execute if score witch_arc witch_arc_jean_end matches 0 run function main_fct:witcharc/before_entering/jean/tick

#Cabane tick
#Before we enervate the witch
execute if score witch_arc subarc matches 0 run function main_fct:witcharc/cabane/cabane_tick

#Entering the dream world
execute if score witch_arc subarc matches 1 run function main_fct:witcharc/dream_world/dream_world_tick

#Cabane 2
execute if score witch_arc subarc matches 2 run function main_fct:witcharc/cabane2/tick