#Lantern
setblock 143 68 274 air destroy
setblock 146 68 274 air destroy
setblock 134 74 286 air destroy
setblock 134 74 276 air destroy
setblock 141 82 283 air destroy
setblock 136 70 280 air destroy
#Torch
setblock 142 68 284 air destroy
setblock 147 68 284 air destroy

setblock 144 69 276 air destroy
setblock 145 69 276 air destroy

setblock 142 68 280 air destroy

setblock 143 73 280 air destroy
setblock 143 79 281 air destroy

#Remove destroyed items
execute positioned 145 69 276 run kill @e[type=item,distance=..20]
