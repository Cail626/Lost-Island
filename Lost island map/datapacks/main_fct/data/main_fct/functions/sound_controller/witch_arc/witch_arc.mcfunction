execute as @a at @s if score witch_arc subarc matches 0 unless score witch_arc witch_house_entering matches 0 run function main_fct:sound_controller/witch_arc/cabane
execute if score witch_arc subarc matches 1 run function main_fct:sound_controller/witch_arc/dream_world
execute as @a at @s if score witch_arc subarc matches 2 run function main_fct:sound_controller/witch_arc/cabane