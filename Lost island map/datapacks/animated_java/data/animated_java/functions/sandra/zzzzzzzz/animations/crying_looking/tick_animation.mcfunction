scoreboard players add @s aj.sandra.animation.crying_looking.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.sandra.animation.crying_looking.local_anim_time
function animated_java:sandra/zzzzzzzz/animations/crying_looking/apply_frame_as_root
execute if score @s aj.sandra.animation.crying_looking.local_anim_time matches 40.. run function animated_java:sandra/zzzzzzzz/animations/crying_looking/end