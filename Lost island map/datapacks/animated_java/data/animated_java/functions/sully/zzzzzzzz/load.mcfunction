scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.sully.export_version dummy
scoreboard objectives add aj.sully.rig_loaded dummy
scoreboard objectives add aj.sully.animation.idle.local_anim_time dummy
scoreboard objectives add aj.sully.animation.death.local_anim_time dummy
scoreboard objectives add aj.sully.animation.attack.local_anim_time dummy
scoreboard objectives add aj.sully.animation.ground_stomp.local_anim_time dummy
scoreboard objectives add aj.sully.animation.roar.local_anim_time dummy
scoreboard objectives add aj.sully.animation.sleep.local_anim_time dummy
scoreboard objectives add aj.sully.animation.wake.local_anim_time dummy
scoreboard objectives add aj.sully.animation.call_of_the_zombies.local_anim_time dummy
scoreboard objectives add aj.sully.animation.walk.local_anim_time dummy
scoreboard objectives add aj.sully.animation.idle.loop_mode dummy
scoreboard objectives add aj.sully.animation.death.loop_mode dummy
scoreboard objectives add aj.sully.animation.attack.loop_mode dummy
scoreboard objectives add aj.sully.animation.ground_stomp.loop_mode dummy
scoreboard objectives add aj.sully.animation.roar.loop_mode dummy
scoreboard objectives add aj.sully.animation.sleep.loop_mode dummy
scoreboard objectives add aj.sully.animation.wake.loop_mode dummy
scoreboard objectives add aj.sully.animation.call_of_the_zombies.loop_mode dummy
scoreboard objectives add aj.sully.animation.walk.loop_mode dummy
scoreboard players set $aj.sully.animation.idle aj.id 0
scoreboard players set $aj.sully.animation.death aj.id 1
scoreboard players set $aj.sully.animation.attack aj.id 2
scoreboard players set $aj.sully.animation.ground_stomp aj.id 3
scoreboard players set $aj.sully.animation.roar aj.id 4
scoreboard players set $aj.sully.animation.sleep aj.id 5
scoreboard players set $aj.sully.animation.wake aj.id 6
scoreboard players set $aj.sully.animation.call_of_the_zombies aj.id 7
scoreboard players set $aj.sully.animation.walk aj.id 8
scoreboard players set $aj.sully.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.sully.export_version aj.i 463100527
scoreboard players reset * aj.sully.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.sully.root] run function animated_java:sully/zzzzzzzz/on_load