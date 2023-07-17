scoreboard players add @s aj.sully.animation.wake.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.sully.animation.wake.local_anim_time
function animated_java:sully/zzzzzzzz/animations/wake/apply_frame_as_root
execute if score @s aj.sully.animation.wake.local_anim_time matches 70.. run function animated_java:sully/zzzzzzzz/animations/wake/end