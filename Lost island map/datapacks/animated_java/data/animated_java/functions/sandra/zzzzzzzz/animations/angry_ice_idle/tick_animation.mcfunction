scoreboard players add @s aj.sandra.animation.angry_ice_idle.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.sandra.animation.angry_ice_idle.local_anim_time
function animated_java:sandra/zzzzzzzz/animations/angry_ice_idle/apply_frame_as_root
execute if score @s aj.sandra.animation.angry_ice_idle.local_anim_time matches 48.. run function animated_java:sandra/zzzzzzzz/animations/angry_ice_idle/end