execute if score @s aj.sully.animation.attack.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:sully/zzzzzzzz/animations/attack/end_loop
execute if score @s aj.sully.animation.attack.loop_mode = $aj.loop_mode.once aj.i run function animated_java:sully/animations/attack/stop
execute if score @s aj.sully.animation.attack.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:sully/animations/attack/pause