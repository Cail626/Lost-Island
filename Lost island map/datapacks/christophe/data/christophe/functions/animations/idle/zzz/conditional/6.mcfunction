#Project generated by Animated Java (https://animated-java.dev/)

tag @s add aj.christophe.anim.idle
execute if score .aj.christophe.framerate aj.i matches ..-1 run scoreboard players set @s aj.frame 40
execute if score .aj.christophe.framerate aj.i matches 1.. run scoreboard players set @s aj.frame 0
scoreboard players add .noScripts aj.i 0
execute if score .aj.anim_loop aj.christophe.animating matches 0 run function christophe:animation_loop
scoreboard players set #execute aj.i 1