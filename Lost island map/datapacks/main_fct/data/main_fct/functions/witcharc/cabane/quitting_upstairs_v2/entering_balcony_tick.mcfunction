#Witch looks at the player
execute as @e[type=witch,name="Nathalie"] at @s facing entity @p eyes rotated ~ 0 run tp ~ ~ ~

execute if score witch_arc finding_witch_upstairs_tick matches 20 run tellraw @a {"text": "(Nathalie) What... What are you doing here!?", "color": "red"}
execute if score witch_arc finding_witch_upstairs_tick matches 30 run effect give @a slowness 60 4
execute if score witch_arc finding_witch_upstairs_tick matches 50 run tellraw @a {"text": "(John) Uh... um... Nothing... We were just...", "color": "green"}
execute if score witch_arc finding_witch_upstairs_tick matches 70 run tellraw @a {"text": "(Nathalie) Actually, it doesn't matter! I gave you a chance and you didn't take it... Let's meet in the torture chamber...", "color": "red"}
execute if score witch_arc finding_witch_upstairs_tick matches 100 run scoreboard players set witch_arc finding_witch_upstairs 0
execute if score witch_arc finding_witch_upstairs_tick matches 100 run kill @a


scoreboard players add witch_arc finding_witch_upstairs_tick 1