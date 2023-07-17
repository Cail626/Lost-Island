
# Set sounds

#hurt
execute as @e[tag=moving_head,type=minecraft:silverfish] at @s if entity @e[type=silverfish,tag=moving_head,nbt={HurtTime:10s}] run playsound minecraft:entity.zombie.hurt hostile @p

#die
execute as @e[tag=moving_head,type=minecraft:armor_stand] at @s unless entity @e[type=minecraft:silverfish,tag=moving_head,distance=0..1] run playsound minecraft:entity.zombie.death hostile @p

#Rotate armor stand
execute as @e[tag=moving_head,type=minecraft:silverfish] at @s store result entity @e[type=minecraft:armor_stand,tag=moving_head,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]

# Remove entity
execute as @e[tag=moving_head,type=minecraft:armor_stand] at @s unless entity @e[type=minecraft:silverfish,tag=moving_head,distance=0..1] run kill @s
