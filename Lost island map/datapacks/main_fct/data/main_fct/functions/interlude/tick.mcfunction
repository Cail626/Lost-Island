#Keep door locked when witch_arc finished and player is far from the house
execute if score main_fct witch_house_doors_locked matches 1 run function main_fct:interlude/witch_house_close_doors_tick
#Dying inside witch_house
execute positioned 144 64 282 if entity @a[distance=75..100] if score main_fct current_arc >= main_fct var_3 if score interlude witch_house_dying matches 0 run function main_fct:interlude/witch_house_dying_start
execute if score interlude witch_house_dying matches 1 run function main_fct:interlude/witch_house_dying_tick

execute if score interlude witch_house_dying matches 2 run function main_fct:interlude/sandra_madness/start

execute if score interlude sandra_madness_state matches 1 run function main_fct:interlude/sandra_madness/tick