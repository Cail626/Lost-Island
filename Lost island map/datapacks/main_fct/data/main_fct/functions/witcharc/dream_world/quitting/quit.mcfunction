#End of the dream-world sub-arc

#Add teleportation sickness
function main_fct:witcharc/other/witcharc_sickness

schedule function main_fct:witcharc/dream_world/dialog/end/end_1 2s
schedule function main_fct:witcharc/dream_world/dialog/end/end_2 5s
schedule function main_fct:witcharc/dream_world/dialog/end/end_3 8s

#Teleport the player
schedule function main_fct:witcharc/dream_world/quitting/teleportation 11s

#Start the next arc
schedule function main_fct:witcharc/cabane2/imprisoned/begin 11s