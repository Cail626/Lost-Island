#Project generated by Animated Java (https://animated-java.dev/)

tp @s[tag=aj.christophe.bone.head] ^0 ^-0.313 ^0
tp @s[tag=aj.christophe.bone.body] ^0 ^-0.313 ^0
tp @s[tag=aj.christophe.bone.left_arm] ^0.313 ^-0.438 ^0
tp @s[tag=aj.christophe.bone.right_arm] ^-0.312 ^-0.438 ^0
tp @s[tag=aj.christophe.bone.left_leg] ^0.125 ^-1.063 ^-0.006
tp @s[tag=aj.christophe.bone.right_leg] ^-0.125 ^-1.063 ^-0.006
execute store result score .calc aj.i run data get entity @s Air
execute store result entity @s Air short 1 run scoreboard players add .calc aj.i 2