#Project generated by Animated Java (https://animated-java.dev/)

tag @s add aj.sully_boss.anim.idle
execute if score .aj.sully_boss.framerate aj.i matches ..-1 run scoreboard players set @s aj.frame 30
execute if score .aj.sully_boss.framerate aj.i matches 1.. run scoreboard players set @s aj.frame 0
scoreboard players add .noScripts aj.i 0
execute if score .aj.anim_loop aj.sully_boss.animating matches 0 run function sully_boss:animation_loop
scoreboard players set #execute aj.i 1