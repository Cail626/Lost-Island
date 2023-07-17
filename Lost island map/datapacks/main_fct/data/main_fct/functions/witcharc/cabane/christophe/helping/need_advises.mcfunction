#Ask the player if he want some helps
tellraw @a {"text": "(Jean) That's what I was thinking... Look at his zombie's face. He's a special kind of zombie. That means he used to be human...", "color": "green"}
tellraw @a {"text": "(Jean) I don't want to leave him here!", "color": "green"}
tellraw @a {"text": "(You) (Damn, why is this witch keeping him locked up... I don't want to understand...)", "color": "gold"}
tellraw @a [{"text": "(Jean) I think I have an idea...", "color": "green"}, {"text": " [(You) Tell me more about it]", "clickEvent": {"action": "run_command", "value": "/function main_fct:witcharc/cabane/christophe/helping/asks_for_help"}, "color": "gold", "bold": true}]
