#Remove Sandra
scoreboard players set witch_arc sandra_leaves 1
scoreboard players set witch_arc sandra_leaves_tick 0

tellraw @a {"text": "(Jean) Woah! It seems like we're lucky, Marco. And Nathalie, thank you for agreeing to free us.", "color": "green"}
tellraw @a {"text": "(You) I don't know why you made this decision, but I won't allow you to continue doing as you please on this island!", "color": "gold"}
tellraw @a {"text": "(Nathalie) HAHAHA, try using your powers. You won't even be able to graze me...", "color": "dark_purple"}
tellraw @a {"text": "(Jean) I appreciate your courage, but please, don't taunt her when we're stuck in this confined space without any means to protect ourselves. I don't want to die just because you choose to act recklessly.", "color": "green"}
tellraw @a {"text": "(You) ... I don't like admitting when you're right... Miss Nathalie, would you kindly free us?", "color": "gold"}
tellraw @a {"text": "(Nathalie) You're really lucky, you know that... Here you go, I'll remove your restraints.", "color": "dark_purple"}

tellraw @a {"text": "Click here to continue the dialog", "bold": true, "clickEvent": {"action": "run_command", "value": "/function main_fct:witcharc/cabane2/imprisoned/dialog/first_5"}}
