execute if score @s aj.sully.animation.roar.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:sully/zzzzzzzz/animations/roar/end_loop
execute if score @s aj.sully.animation.roar.loop_mode = $aj.loop_mode.once aj.i run function animated_java:sully/animations/roar/stop
execute if score @s aj.sully.animation.roar.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:sully/animations/roar/pause