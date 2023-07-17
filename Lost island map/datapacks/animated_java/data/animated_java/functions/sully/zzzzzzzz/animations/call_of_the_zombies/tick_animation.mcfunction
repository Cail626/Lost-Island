scoreboard players add @s aj.sully.animation.call_of_the_zombies.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.sully.animation.call_of_the_zombies.local_anim_time
function animated_java:sully/zzzzzzzz/animations/call_of_the_zombies/apply_frame_as_root
execute if score @s aj.sully.animation.call_of_the_zombies.local_anim_time matches 1.. run function animated_java:sully/zzzzzzzz/animations/call_of_the_zombies/end