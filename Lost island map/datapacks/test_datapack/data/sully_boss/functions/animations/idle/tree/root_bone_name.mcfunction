#Project generated by Animated Java (https://animated-java.dev/)

execute if entity @s[tag=aj.sully_boss.bone.h_head] run function sully_boss:animations/idle/tree/h_head_root_top
execute if entity @s[tag=aj.sully_boss.bone.jaw] run function sully_boss:animations/idle/tree/jaw_root_top
execute if entity @s[tag=aj.sully_boss.bone.left_leg] run function sully_boss:animations/idle/tree/left_leg_root_top
execute if entity @s[tag=aj.sully_boss.bone.right_leg] run function sully_boss:animations/idle/tree/right_leg_root_top
execute if entity @s[tag=aj.sully_boss.bone.right_leg_down] run function sully_boss:animations/idle/tree/right_leg_down_root_top
execute if entity @s[tag=aj.sully_boss.bone.left_arm] run function sully_boss:animations/idle/tree/left_arm_root_top
execute if entity @s[tag=aj.sully_boss.bone.right_arm] run function sully_boss:animations/idle/tree/right_arm_root_top
execute if entity @s[tag=aj.sully_boss.bone.torso] run function sully_boss:animations/idle/tree/torso_root_top
execute if entity @s[tag=aj.sully_boss.bone.left_leg_down] run function sully_boss:animations/idle/tree/left_leg_down_root_top
execute store result entity @s Air short 1 run scoreboard players get .this aj.frame