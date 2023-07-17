execute if score witch_arc start_upstrairs matches 0 run function main_fct:witcharc/cabane/quitting_upstairs_v2/start

#Check if players enter the balcony
execute if entity @a[x=139,y=73,z=277,dx=0] run scoreboard players set witch_arc finding_witch_upstairs 1
execute if score witch_arc finding_witch_upstairs matches 1 run function main_fct:witcharc/cabane/quitting_upstairs_v2/entering_balcony_tick