#Replace the world like before
function main_fct:witcharc/dream_world/parkour_room/return_normal

tellraw @a [{"text": "(Sandra) Game over!","color": "dark_purple"}]

scoreboard players set witch_arc pk_room_start_countdown 0