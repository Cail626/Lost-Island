scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.sandra.export_version dummy
scoreboard objectives add aj.sandra.rig_loaded dummy
scoreboard objectives add aj.sandra.animation.angry_ice_idle.local_anim_time dummy
scoreboard objectives add aj.sandra.animation.magic_playing.local_anim_time dummy
scoreboard objectives add aj.sandra.animation.crying.local_anim_time dummy
scoreboard objectives add aj.sandra.animation.crying_looking.local_anim_time dummy
scoreboard objectives add aj.sandra.animation.angry_ice_idle.loop_mode dummy
scoreboard objectives add aj.sandra.animation.magic_playing.loop_mode dummy
scoreboard objectives add aj.sandra.animation.crying.loop_mode dummy
scoreboard objectives add aj.sandra.animation.crying_looking.loop_mode dummy
scoreboard players set $aj.sandra.animation.angry_ice_idle aj.id 0
scoreboard players set $aj.sandra.animation.magic_playing aj.id 1
scoreboard players set $aj.sandra.animation.crying aj.id 2
scoreboard players set $aj.sandra.animation.crying_looking aj.id 3
scoreboard players set $aj.sandra.variant.default aj.id 0
scoreboard players set $aj.sandra.variant.angry aj.id 1
scoreboard players set $aj.sandra.variant.very_sad aj.id 2
scoreboard players set $aj.sandra.variant.angry_magic aj.id 3
scoreboard players set $aj.sandra.variant.happy aj.id 4
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.sandra.export_version aj.i 459354647
scoreboard players reset * aj.sandra.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.sandra.root] run function animated_java:sandra/zzzzzzzz/on_load