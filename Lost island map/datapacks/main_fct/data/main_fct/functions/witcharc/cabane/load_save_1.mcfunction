scoreboard objectives add inside_main_room dummy
scoreboard players set witch_arc inside_main_room 0

scoreboard objectives add players_tries_to_go dummy
scoreboard players set witch_arc players_tries_to_go 0

scoreboard objectives add cabane_angry_witch dummy
scoreboard players set witch_arc cabane_angry_witch 0

scoreboard objectives add end_boss_fight dummy
scoreboard players set witch_arc end_boss_fight 0

#1: entry
#2: illegal entry => activate tick
#3: illegal entry end
scoreboard objectives add witch_house_entering dummy
scoreboard players set witch_arc witch_house_entering 0
scoreboard objectives add witch_house_illegal_entry_tick dummy
scoreboard players set witch_arc witch_house_illegal_entry_tick 0