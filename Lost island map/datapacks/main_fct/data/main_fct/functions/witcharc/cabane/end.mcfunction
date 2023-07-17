#End for christophe
function main_fct:witcharc/cabane/christophe/end
function main_fct:witcharc/cabane/quitting_early/end
function main_fct:witcharc/cabane/quitting_upstairs_v2/end

#changement of subarc
scoreboard players set witch_arc subarc 1
#Desactivate the main system setup
setblock 151 56 276 oxidized_copper
#Descativate all redstone process
setblock 151 56 278 redstone_block
#Desactivate witch_fight_end
setblock 146 55 286 redstone_block