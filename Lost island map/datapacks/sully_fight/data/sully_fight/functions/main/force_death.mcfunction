#Use when you want to kill sully:

# Remove Sully
kill @e[type=iron_golem, tag=sully]
# We indicate that Sully is death and is death function has been launched
scoreboard players set sully sully_death 2
#We don't want a death animation
scoreboard players set sully no_death_animation 1

function sully_fight:sully_death