function animated_java:sandra/zzzzzzzz/animations/magic_playing/resume_as_root
function animated_java:sandra/zzzzzzzz/animations/magic_playing/tween_as_root
function animated_java:sandra/zzzzzzzz/animations/magic_playing/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i