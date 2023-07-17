execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.sandra.rig_loaded 1
scoreboard players operation @s aj.sandra.export_version = aj.sandra.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:sandra/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.sandra.variant.default aj.id run function animated_java:sandra/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.sandra.variant.angry aj.id run function animated_java:sandra/zzzzzzzz/apply_variant/angry/as_root
execute if score #variant aj.i = $aj.sandra.variant.very_sad aj.id run function animated_java:sandra/zzzzzzzz/apply_variant/very_sad/as_root
execute if score #variant aj.i = $aj.sandra.variant.angry_magic aj.id run function animated_java:sandra/zzzzzzzz/apply_variant/angry_magic/as_root
execute if score #variant aj.i = $aj.sandra.variant.happy aj.id run function animated_java:sandra/zzzzzzzz/apply_variant/happy/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.sandra.animation.angry_ice_idle aj.id run function animated_java:sandra/zzzzzzzz/animations/angry_ice_idle/apply_frame_as_root
execute if score #animation aj.i = $aj.sandra.animation.angry_ice_idle aj.id run scoreboard players operation @s aj.sandra.animation.angry_ice_idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.sandra.animation.magic_playing aj.id run function animated_java:sandra/zzzzzzzz/animations/magic_playing/apply_frame_as_root
execute if score #animation aj.i = $aj.sandra.animation.magic_playing aj.id run scoreboard players operation @s aj.sandra.animation.magic_playing.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.sandra.animation.crying aj.id run function animated_java:sandra/zzzzzzzz/animations/crying/apply_frame_as_root
execute if score #animation aj.i = $aj.sandra.animation.crying aj.id run scoreboard players operation @s aj.sandra.animation.crying.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.sandra.animation.crying_looking aj.id run function animated_java:sandra/zzzzzzzz/animations/crying_looking/apply_frame_as_root
execute if score #animation aj.i = $aj.sandra.animation.crying_looking aj.id run scoreboard players operation @s aj.sandra.animation.crying_looking.local_anim_time = #frame aj.i
execute at @s run function #animated_java:sandra/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i