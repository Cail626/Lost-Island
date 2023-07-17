#Player enters the room -> make sandra angry -> sandra wait -> player sickness -> kill player

execute if score witch_arc sandra_leaves matches 1 run function main_fct:witcharc/cabane2/imprisoned/sandra_leaves_tick

#Immobilize player
execute if score witch_arc immobilized matches 1 run tp @a 143 74 281

#Sandra_angry plays witch ice
execute if score witch_arc witch_arc_sandra_angry_state matches 1 run function main_fct:witcharc/cabane2/sandra_angry/magic_playing_tick
#Player has entered into sandra's room
execute if score witch_arc witch_arc_sandra_angry_state matches 2 positioned 134 67 276 if entity @a[dx=2.5,dy=3.5,dz=3] run function main_fct:witcharc/cabane2/sandra_angry/angried_tick
execute if score witch_arc witch_arc_sandra_angry_state matches 3 run function main_fct:witcharc/cabane2/sandra_angry/sickness_tick

#END OF CABANE 2
execute positioned 144 64 282 if entity @a[distance=35..40] run function main_fct:witcharc/cabane2/end/finish_cabane_2