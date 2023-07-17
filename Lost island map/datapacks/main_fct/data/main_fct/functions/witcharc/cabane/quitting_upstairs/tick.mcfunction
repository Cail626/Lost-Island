#Verify if door not open
execute if block 149 73 282 dark_oak_door[open=true] run function main_fct:witcharc/cabane/quitting_upstairs/close_door_shower
execute if block 144 74 283 dark_oak_door[open=true] run function main_fct:witcharc/cabane/quitting_upstairs/close_door_torture
execute if score witch_arc opened_doors_counter_activated matches 1 run function main_fct:witcharc/cabane/quitting_upstairs/open_door_counter