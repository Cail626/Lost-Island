
#Indicate to the loop system that we want to wake up sully

scoreboard players set @e[type=iron_golem,tag=sully] wake_anim 0
scoreboard players set @e[type=iron_golem,tag=sully] waken_up 1

#Add title
title @a subtitle [{"text": "The angry child","color": "green"}]
title @a title [{"text": "Sully","color": "green","bold": true, "underlined": true}]