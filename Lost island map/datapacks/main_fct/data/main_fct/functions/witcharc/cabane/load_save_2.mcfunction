#Create variable
scoreboard objectives add christopher_saved dummy
scoreboard players set witch_arc christopher_saved 0

scoreboard objectives add christopher_book_summoned dummy
scoreboard players set witch_arc christopher_book_summoned 0

#Help for christophe

scoreboard objectives add help_for_christophe dummy
scoreboard players set witch_arc help_for_christophe 0
#Helping mode: 
#1: ask for advice
#2: add lacking apple
#3: add lacking weakness potion
#4: add lacking both 
scoreboard objectives add christophe_helping_mode dummy
scoreboard players set witch_arc christophe_helping_mode 0

#Leaving early

scoreboard objectives add leaving_early_state dummy 
scoreboard players set witch_arc leaving_early_state 0

scoreboard objectives add targic_encounter_tick dummy
scoreboard players set witch_arc targic_encounter_tick 0

scoreboard objectives add player_staring_sandra dummy
scoreboard players set witch_arc player_staring_sandra 0

#Leaving upstrairs
# scoreboard objectives add opened_doors_counter dummy
# scoreboard players set witch_arc opened_doors_counter 0
# scoreboard objectives add opened_doors_counter_activated dummy
# scoreboard players set witch_arc opened_doors_counter_activated 0

scoreboard objectives add start_upstrairs dummy
scoreboard players set witch_arc start_upstrairs 0
scoreboard objectives add finding_witch_upstairs dummy
scoreboard players set witch_arc finding_witch_upstairs 0
scoreboard objectives add finding_witch_upstairs_tick dummy
scoreboard players set witch_arc finding_witch_upstairs_tick 0