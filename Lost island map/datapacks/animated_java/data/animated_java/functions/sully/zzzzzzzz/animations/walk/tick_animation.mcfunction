scoreboard players add @s aj.sully.animation.walk.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.sully.animation.walk.local_anim_time
function animated_java:sully/zzzzzzzz/animations/walk/apply_frame_as_root
execute if score @s aj.sully.animation.walk.local_anim_time matches 30.. run function animated_java:sully/zzzzzzzz/animations/walk/end