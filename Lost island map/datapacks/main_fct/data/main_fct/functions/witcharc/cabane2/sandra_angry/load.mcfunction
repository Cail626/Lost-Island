#0 = before
#1 = playing_ice
#2 = angry
#3 = start sickness
#4 = killing blow
scoreboard objectives add witch_arc_sandra_angry_state dummy
scoreboard players set witch_arc witch_arc_sandra_angry_state 0
scoreboard objectives add magic_playing_tick dummy
scoreboard players set witch_arc magic_playing_tick 0
scoreboard objectives add sandra_angried_tick dummy
scoreboard players set witch_arc sandra_angried_tick 0
scoreboard objectives add sickness_tick dummy
scoreboard players set witch_arc sickness_tick 0