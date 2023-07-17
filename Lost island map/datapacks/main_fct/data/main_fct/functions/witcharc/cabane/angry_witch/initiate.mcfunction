#Add zombies heads on the balcony
execute positioned 135 72 281 run function mob_controller:summon_moving_head
execute positioned 135 72 285 run function mob_controller:summon_moving_head
summon minecraft:witch 145 69 298 {Rotation:[180f,0f],Invulnerable:1,NoAI:1,CustomName:'"Nathalie"'}
scoreboard players set witch_arc cabane_angry_witch 2