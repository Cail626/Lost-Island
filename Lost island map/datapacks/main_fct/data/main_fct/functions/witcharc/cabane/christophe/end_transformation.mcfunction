execute as @e[type=minecraft:zombie_villager,tag=christophe] at @s facing 148 70 276 run function christophe:summon/default
execute as @e[type=minecraft:zombie_villager,tag=christophe] at @s run tp ~ -100 ~
#Execute idle animation
execute as @e[tag=aj.christophe.root] run function christophe:animations/idle/play