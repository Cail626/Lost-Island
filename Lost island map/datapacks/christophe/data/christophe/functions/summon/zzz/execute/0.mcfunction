#Code generated by Animated Java (https://animated-java.dev/)

execute store result score @s aj.id run scoreboard players add .aj.last_id aj.i 1
summon minecraft:armor_stand ^0 ^0.0635 ^0 {Invisible:true,Marker:true,NoGravity:true,DisabledSlots:4144959,Tags:["new","aj.christophe","aj.christophe.bone","aj.christophe.bone.head"],ArmorItems:[{},{},{},{id:"minecraft:red_dye",Count:1b,tag:{CustomModelData:1}}],Pose:{Head:[0f,0f,0f]}}
summon minecraft:armor_stand ^0 ^0.0635 ^0 {Invisible:true,Marker:true,NoGravity:true,DisabledSlots:4144959,Tags:["new","aj.christophe","aj.christophe.bone","aj.christophe.bone.body"],ArmorItems:[{},{},{},{id:"minecraft:red_dye",Count:1b,tag:{CustomModelData:2}}],Pose:{Head:[0f,0f,0f]}}
summon minecraft:armor_stand ^0.3125 ^-0.0615 ^0 {Invisible:true,Marker:true,NoGravity:true,DisabledSlots:4144959,Tags:["new","aj.christophe","aj.christophe.bone","aj.christophe.bone.left_arm"],ArmorItems:[{},{},{},{id:"minecraft:red_dye",Count:1b,tag:{CustomModelData:3}}],Pose:{Head:[0f,0f,0f]}}
summon minecraft:armor_stand ^-0.3125 ^-0.0615 ^0 {Invisible:true,Marker:true,NoGravity:true,DisabledSlots:4144959,Tags:["new","aj.christophe","aj.christophe.bone","aj.christophe.bone.right_arm"],ArmorItems:[{},{},{},{id:"minecraft:red_dye",Count:1b,tag:{CustomModelData:4}}],Pose:{Head:[0f,0f,0f]}}
summon minecraft:armor_stand ^0.125 ^-0.6865 ^-0.00625 {Invisible:true,Marker:true,NoGravity:true,DisabledSlots:4144959,Tags:["new","aj.christophe","aj.christophe.bone","aj.christophe.bone.left_leg"],ArmorItems:[{},{},{},{id:"minecraft:red_dye",Count:1b,tag:{CustomModelData:5}}],Pose:{Head:[0f,0f,0f]}}
summon minecraft:armor_stand ^-0.125 ^-0.6865 ^-0.00625 {Invisible:true,Marker:true,NoGravity:true,DisabledSlots:4144959,Tags:["new","aj.christophe","aj.christophe.bone","aj.christophe.bone.right_leg"],ArmorItems:[{},{},{},{id:"minecraft:red_dye",Count:1b,tag:{CustomModelData:6}}],Pose:{Head:[0f,0f,0f]}}
execute as @e[type=#christophe:bone_entities,tag=aj.christophe,tag=new,distance=..1.5] positioned as @s run function christophe:summon/zzz/execute/1
tag @s remove new