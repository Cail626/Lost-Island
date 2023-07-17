scoreboard objectives add corruption_warning dummy
scoreboard players set main_fct corruption_warning 0

kill @e[type=armor_stand,tag=corruption_center_100]
kill @e[type=armor_stand,tag=corruption_center_15]
summon armor_stand 332 107 58 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["corruption_center_100"]}
summon armor_stand 192 67 337 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["corruption_center_15"]}