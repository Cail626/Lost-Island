#Animate thunder
execute if score interlude witch_house_dying_tick matches 2 run summon lightning_bolt 148 68 284
execute if score interlude witch_house_dying_tick matches 4 run summon lightning_bolt 149 68 284
execute if score interlude witch_house_dying_tick matches 6 run summon lightning_bolt 148 68 283
execute if score interlude witch_house_dying_tick matches 8 run summon lightning_bolt 149 68 283

scoreboard players add interlude witch_house_dying_tick 1
#Stop
execute if score interlude witch_house_dying_tick matches 10 run scoreboard players set interlude witch_house_dying 2
