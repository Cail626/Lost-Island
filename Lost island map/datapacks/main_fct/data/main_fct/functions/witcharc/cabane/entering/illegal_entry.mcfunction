tellraw @a {"text": "(???) Who dares to enter without even knocking!", "color": "red"}
tellraw @a {"text": "(You) My apologies, I thought this house was unoccupied.", "color": "gold"}
tellraw @a {"text": "(???) Oh, is that so? Allow me to teach you some good manners", "color": "red"}

#We indicate that the player entered illegaly
scoreboard players set witch_arc witch_house_entering 2
#We make the player sick
#Sickness effect
effect give @a hunger
effect give @a wither
effect give @a poison
effect give @a nausea
effect give @a darkness
effect give @a slowness