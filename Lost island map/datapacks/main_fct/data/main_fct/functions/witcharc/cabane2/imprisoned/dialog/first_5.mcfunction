#Free player
scoreboard players set witch_arc immobilized 0

tellraw @a {"text": "(Nathalie) You'll find your equipment inside the hallway.", "color": "red"}
tellraw @a {"text": "(You) ...", "color": "gold"}
tellraw @a {"text": "(Nathalie) Wait before you go... Let me give you something.", "color": "red"}
tellraw @a {"text": "(You) What is your goal here?", "color": "gold"}
tellraw @a {"text": "(Nathalie) ... I would like you to end this whole thing. Seeing you has helped me regain a little sanity...", "color": "red"}
tellraw @a {"text": "(Jean) So, monsters like you can regain sanity?", "color": "green"}
tellraw @a {"text": "(Nathalie) I was human before... But this island... it destroyed me. This state won't last long. The air on this island is infected and it brings out the worst in everyone...", "color": "green"}
tellraw @a {"text": "(Nathalie) I have added some equipment to help you in your journey through the hallway...", "color": "green"}
tellraw @a {"text": "(Nathalie) If you continue further, you'll reach a small village. Inside, there is a person who has survived this infection and is somewhat sane.", "color": "green"}
tellraw @a {"text": "(Nathalie) He has gathered many items. You'll need the best he can offer. You did well against Sully, but there are even stronger monsters lurking in the depths of the island.", "color": "green"}
tellraw @a {"text": "(Nathalie) So, leave, never... come back... and if you can bring an end to this misery...", "color": "green"}
tellraw @a {"text": "(You) Should I say thanks for helping us? I have no desire to help you, but I stop this madness!", "color": "gold"}

tellraw @a {"text": "Click here to continue the dialog", "bold": true, "clickEvent": {"action": "run_command", "value": "/function main_fct:witcharc/cabane2/imprisoned/dialog/first_6"}}
