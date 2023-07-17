execute as @e[tag=statue,tag=main,tag=live] run data modify entity @s Pose.Head set value [0.001f,0.001f,0.001f]
execute as @e[tag=statue,tag=main,tag=live] run data modify entity @s Pose.LeftArm set value [0.001f,0.001f,0.001f]
execute as @e[tag=statue,tag=main,tag=live] run data modify entity @s Pose.RightArm set value [0.001f,0.001f,0.001f]
execute as @e[tag=statue,tag=main,tag=live] run data modify entity @s Pose.LeftLeg set value [0.001f,0.001f,0.001f]
execute as @e[tag=statue,tag=main,tag=live] run data modify entity @s Pose.RightLeg set value [0.001f,0.001f,0.001f]

execute as @e[tag=statue,tag=!main] run data modify entity @s Pose.RightArm set value [315.0f,315.0f]
execute as @e[tag=statue,tag=!main] run data modify entity @s Pose.LeftArm set value [315.0f,45.0f]

execute as @e[tag=statue,tag=main,tag=live] store result entity @s Pose.Head[0] float 0.01 run scoreboard players get @s statue_x_head
execute as @e[tag=statue,tag=main,tag=live] store result entity @s Pose.Head[1] float 0.01 run scoreboard players get @s statue_y_head
execute as @e[tag=statue,tag=main,tag=live] store result entity @s Pose.Head[2] float 0.01 run scoreboard players get @s statue_z_head

execute as @e[tag=statue,tag=main,tag=live] store result entity @s Pose.LeftArm[0] float 0.01 run scoreboard players get @s statue_x_la
execute as @e[tag=statue,tag=main,tag=live] store result entity @s Pose.LeftArm[1] float 0.01 run scoreboard players get @s statue_y_la
execute as @e[tag=statue,tag=main,tag=live] store result entity @s Pose.LeftArm[2] float 0.01 run scoreboard players get @s statue_z_la

execute as @e[tag=statue,tag=main,tag=live] store result entity @s Pose.RightArm[0] float 0.01 run scoreboard players get @s statue_x_ra
execute as @e[tag=statue,tag=main,tag=live] store result entity @s Pose.RightArm[1] float 0.01 run scoreboard players get @s statue_y_ra
execute as @e[tag=statue,tag=main,tag=live] store result entity @s Pose.RightArm[2] float 0.01 run scoreboard players get @s statue_z_ra

execute as @e[tag=statue,tag=main,tag=live] store result entity @s Pose.LeftLeg[0] float 0.01 run scoreboard players get @s statue_x_ll
execute as @e[tag=statue,tag=main,tag=live] store result entity @s Pose.LeftLeg[1] float 0.01 run scoreboard players get @s statue_y_ll
execute as @e[tag=statue,tag=main,tag=live] store result entity @s Pose.LeftLeg[2] float 0.01 run scoreboard players get @s statue_z_ll

execute as @e[tag=statue,tag=main,tag=live] store result entity @s Pose.RightLeg[0] float 0.01 run scoreboard players get @s statue_x_rl
execute as @e[tag=statue,tag=main,tag=live] store result entity @s Pose.RightLeg[1] float 0.01 run scoreboard players get @s statue_y_rl
execute as @e[tag=statue,tag=main,tag=live] store result entity @s Pose.RightLeg[2] float 0.01 run scoreboard players get @s statue_z_rl

execute as @e[tag=statue,tag=main,tag=live] store result entity @s Rotation[0] float 0.01 run scoreboard players get @s statue_x
execute as @e[tag=statue,tag=main,tag=live] store result entity @s Rotation[1] float 0.01 run scoreboard players get @s statue_y

execute as @e[tag=statue] store result score @s statue_tmp at @s run data get entity @e[tag=main,tag=statue,sort=nearest,limit=1] Rotation[0] 100

#head
execute as @e[tag=main,tag=statue] at @s positioned ^ ^0.03125 ^ run tp @e[tag=neck,tag=statue,sort=nearest,limit=1] ~ ~ ~

execute as @e[tag=neck,tag=statue] store result score @s statue_ro at @s run data get entity @e[tag=main,tag=statue,sort=nearest,limit=1] Pose.Head[1] 100

execute as @e[tag=neck,tag=statue] run scoreboard players operation @s statue_ro += @s statue_tmp

execute as @e[tag=neck,tag=statue] store result entity @s Rotation[0] float 0.01 run scoreboard players get @s statue_ro

execute as @e[tag=neck,tag=statue] store result entity @s Rotation[1] float 1 at @s run data get entity @e[tag=main,tag=statue,sort=nearest,limit=1] Pose.Head[0] 1

execute as @e[tag=head-left,tag=statue] store result entity @s Pose.RightArm[2] float 1 at @s run data get entity @e[tag=neck,tag=statue,sort=nearest,limit=1] Rotation[1] -1
execute as @e[tag=head-right,tag=statue] store result entity @s Pose.LeftArm[2] float 1 at @s run data get entity @e[tag=neck,tag=statue,sort=nearest,limit=1] Rotation[1] 1

execute as @e[tag=neck,tag=statue] at @s positioned ^-0.1225 ^0.1875 ^-0.125 rotated as @s positioned ^ ^ ^ as @s rotated ~ 0 positioned ^0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=head-bottom-right-back,sort=nearest] ~ ~ ~ ~90 ~
execute as @e[tag=neck,tag=statue] at @s positioned ^0.1225 ^0.1875 ^-0.125 rotated as @s positioned ^ ^ ^ as @s rotated ~ 0 positioned ^-0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=head-bottom-left-back,sort=nearest] ~ ~ ~ ~-90 ~
execute as @e[tag=neck,tag=statue] at @s positioned ^-0.1225 ^0.1875 ^0.125 rotated as @s positioned ^ ^ ^ as @s rotated ~ 0 positioned ^0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=head-bottom-right-front,sort=nearest] ~ ~ ~ ~90 ~
execute as @e[tag=neck,tag=statue] at @s positioned ^0.1225 ^0.1875 ^0.125 rotated as @s positioned ^ ^ ^ as @s rotated ~ 0 positioned ^-0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=head-bottom-left-front,sort=nearest] ~ ~ ~ ~-90 ~

execute as @e[tag=neck,tag=statue] at @s positioned ^-0.1225 ^0.4375 ^-0.125 rotated as @s positioned ^ ^ ^ as @s rotated ~ 0 positioned ^0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=head-top-right-back,sort=nearest] ~ ~ ~ ~90 ~
execute as @e[tag=neck,tag=statue] at @s positioned ^0.1225 ^0.4375 ^-0.125 rotated as @s positioned ^ ^ ^ as @s rotated ~ 0 positioned ^-0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=head-top-left-back,sort=nearest] ~ ~ ~ ~-90 ~
execute as @e[tag=neck,tag=statue] at @s positioned ^-0.1225 ^0.4375 ^0.125 rotated as @s positioned ^ ^ ^ as @s rotated ~ 0 positioned ^0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=head-top-right-front,sort=nearest] ~ ~ ~ ~90 ~
execute as @e[tag=neck,tag=statue] at @s positioned ^0.1225 ^0.4375 ^0.125 rotated as @s positioned ^ ^ ^ as @s rotated ~ 0 positioned ^-0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=head-top-left-front,sort=nearest] ~ ~ ~ ~-90 ~

#chest
execute as @e[tag=main,tag=statue] at @s rotated ~ 0 run tp @e[limit=1,tag=statue,tag=chest-top-left,sort=nearest] ^-0.388 ^0.3125 ^0.1095 ~-90 ~
execute as @e[tag=main,tag=statue] at @s rotated ~ 0 run tp @e[limit=1,tag=statue,tag=chest-middle-left,sort=nearest] ^-0.388 ^0.0625 ^0.1095 ~-90 ~
execute as @e[tag=main,tag=statue] at @s rotated ~ 0 run tp @e[limit=1,tag=statue,tag=chest-bottom-left,sort=nearest] ^-0.388 ^-0.1875 ^0.1095 ~-90 ~
execute as @e[tag=main,tag=statue] at @s rotated ~ 0 run tp @e[limit=1,tag=statue,tag=chest-top-right,sort=nearest] ^0.388 ^0.3125 ^0.1095 ~90 ~
execute as @e[tag=main,tag=statue] at @s rotated ~ 0 run tp @e[limit=1,tag=statue,tag=chest-middle-right,sort=nearest] ^0.388 ^0.0625 ^0.1095 ~90 ~
execute as @e[tag=main,tag=statue] at @s rotated ~ 0 run tp @e[limit=1,tag=statue,tag=chest-bottom-right,sort=nearest] ^0.388 ^-0.1875 ^0.1095 ~90 ~

#arms
execute as @e[tag=main,tag=statue] at @s positioned ^0.3725 ^-0.03125 ^ run tp @e[tag=shoulder-left,tag=statue,sort=nearest,limit=1] ~ ~ ~
execute as @e[tag=main,tag=statue] at @s positioned ^-0.3725 ^-0.03125 ^ run tp @e[tag=shoulder-right,tag=statue,sort=nearest,limit=1] ~ ~ ~

execute as @e[tag=shoulder-left,tag=statue] store result score @s statue_ro at @s run data get entity @e[tag=main,tag=statue,sort=nearest,limit=1] Pose.LeftArm[1] 100
execute as @e[tag=shoulder-right,tag=statue] store result score @s statue_ro at @s run data get entity @e[tag=main,tag=statue,sort=nearest,limit=1] Pose.RightArm[1] 100

execute as @e[tag=shoulder-left,tag=statue] run scoreboard players operation @s statue_ro += @s statue_tmp
execute as @e[tag=shoulder-right,tag=statue] run scoreboard players operation @s statue_ro += @s statue_tmp

execute as @e[tag=shoulder-left,tag=statue] store result entity @s Rotation[0] float 0.01 run scoreboard players get @s statue_ro
execute as @e[tag=shoulder-right,tag=statue] store result entity @s Rotation[0] float 0.01 run scoreboard players get @s statue_ro

execute as @e[tag=shoulder-left,tag=statue] store result entity @s Rotation[1] float -1 at @s run data get entity @e[tag=main,tag=statue,sort=nearest,limit=1] Pose.LeftArm[0] -1
execute as @e[tag=shoulder-right,tag=statue] store result entity @s Rotation[1] float -1 at @s run data get entity @e[tag=main,tag=statue,sort=nearest,limit=1] Pose.RightArm[0] -1

execute as @e[tag=arm-left,tag=statue] at @s store result entity @s Pose.RightArm[2] float 1 at @s run data get entity @e[tag=shoulder-left,tag=statue,sort=nearest,limit=1] Rotation[1] -1
execute as @e[tag=arm-right,tag=statue] at @s store result entity @s Pose.LeftArm[2] float 1 at @s run data get entity @e[tag=shoulder-right,tag=statue,sort=nearest,limit=1] Rotation[1] 1

#right arm
execute as @e[tag=shoulder-right,tag=statue] at @s positioned ^ ^ ^ rotated as @s positioned ^ ^ ^ as @s rotated ~ 0 positioned ^0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=statue,tag=arm-right-1,sort=nearest] ~ ~ ~ ~90 ~
execute as @e[tag=shoulder-right,tag=statue] at @s positioned ^ ^ ^ rotated as @s positioned ^ ^-.25 ^ as @s rotated ~ 0 positioned ^0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=statue,tag=arm-right-2,sort=nearest] ~ ~ ~ ~90 ~
execute as @e[tag=shoulder-right,tag=statue] at @s positioned ^ ^ ^ rotated as @s positioned ^ ^-.5 ^ as @s rotated ~ 0 positioned ^0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=statue,tag=arm-right-3,sort=nearest] ~ ~ ~ ~90 ~
#left arm
execute as @e[tag=shoulder-left,tag=statue] at @s positioned ^ ^ ^ rotated as @s positioned ^ ^ ^ as @s rotated ~ 0 positioned ^-0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=statue,tag=arm-left-1,sort=nearest] ~ ~ ~ ~-90 ~
execute as @e[tag=shoulder-left,tag=statue] at @s positioned ^ ^ ^ rotated as @s positioned ^ ^-.25 ^ as @s rotated ~ 0 positioned ^-0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=statue,tag=arm-left-2,sort=nearest] ~ ~ ~ ~-90 ~
execute as @e[tag=shoulder-left,tag=statue] at @s positioned ^ ^ ^ rotated as @s positioned ^ ^-.5 ^ as @s rotated ~ 0 positioned ^-0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=statue,tag=arm-left-3,sort=nearest] ~ ~ ~ ~-90 ~

#legs
execute as @e[tag=main,tag=statue] at @s positioned ^0.1225 ^-0.65625 ^ run tp @e[tag=hip-left,tag=statue,sort=nearest,limit=1] ~ ~ ~
execute as @e[tag=main,tag=statue] at @s positioned ^-0.1225 ^-0.65625 ^ run tp @e[tag=hip-right,tag=statue,sort=nearest,limit=1] ~ ~ ~

execute as @e[tag=hip-left,tag=statue] store result score @s statue_ro at @s run data get entity @e[tag=main,tag=statue,sort=nearest,limit=1] Pose.LeftLeg[1] 100
execute as @e[tag=hip-right,tag=statue] store result score @s statue_ro at @s run data get entity @e[tag=main,tag=statue,sort=nearest,limit=1] Pose.RightLeg[1] 100

execute as @e[tag=hip-left,tag=statue] run scoreboard players operation @s statue_ro += @s statue_tmp
execute as @e[tag=hip-right,tag=statue] run scoreboard players operation @s statue_ro += @s statue_tmp

execute as @e[tag=hip-left,tag=statue] store result entity @s Rotation[0] float 0.01 run scoreboard players get @s statue_ro
execute as @e[tag=hip-right,tag=statue] store result entity @s Rotation[0] float 0.01 run scoreboard players get @s statue_ro

execute as @e[tag=hip-left,tag=statue] store result entity @s Rotation[1] float 1 at @s run data get entity @e[tag=main,tag=statue,sort=nearest,limit=1] Pose.LeftLeg[0] 1
execute as @e[tag=hip-right,tag=statue] store result entity @s Rotation[1] float 1 at @s run data get entity @e[tag=main,tag=statue,sort=nearest,limit=1] Pose.RightLeg[0] 1

execute as @e[tag=leg-left,tag=statue] at @s store result entity @s Pose.RightArm[2] float 1 at @s run data get entity @e[tag=hip-left,tag=statue,sort=nearest,limit=1] Rotation[1] -1
execute as @e[tag=leg-right,tag=statue] at @s store result entity @s Pose.LeftArm[2] float 1 at @s run data get entity @e[tag=hip-right,tag=statue,sort=nearest,limit=1] Rotation[1] 1

#left leg
execute as @e[tag=hip-right,tag=statue] at @s positioned ^ ^-0.125 ^ rotated as @s positioned ^ ^ ^ as @s rotated ~ 0 positioned ^0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=statue,tag=leg-right-1,sort=nearest] ~ ~ ~ ~90 ~
execute as @e[tag=hip-right,tag=statue] at @s positioned ^ ^-0.125 ^ rotated as @s positioned ^ ^-.25 ^ as @s rotated ~ 0 positioned ^0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=statue,tag=leg-right-2,sort=nearest] ~ ~ ~ ~90 ~
execute as @e[tag=hip-right,tag=statue] at @s positioned ^ ^-0.125 ^ rotated as @s positioned ^ ^-.5 ^ as @s rotated ~ 0 positioned ^0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=statue,tag=leg-right-3,sort=nearest] ~ ~ ~ ~90 ~
#left right
execute as @e[tag=hip-left,tag=statue] at @s positioned ^ ^-0.125 ^ rotated as @s positioned ^ ^ ^ as @s rotated ~ 0 positioned ^-0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=statue,tag=leg-left-1,sort=nearest] ~ ~ ~ ~-90 ~
execute as @e[tag=hip-left,tag=statue] at @s positioned ^ ^-0.125 ^ rotated as @s positioned ^ ^-.25 ^ as @s rotated ~ 0 positioned ^-0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=statue,tag=leg-left-2,sort=nearest] ~ ~ ~ ~-90 ~
execute as @e[tag=hip-left,tag=statue] at @s positioned ^ ^-0.125 ^ rotated as @s positioned ^ ^-.5 ^ as @s rotated ~ 0 positioned ^-0.511 ^ ^-0.3125 rotated as @s positioned ^ ^0.34375 ^0.421875 run tp @e[limit=1,tag=statue,tag=leg-left-3,sort=nearest] ~ ~ ~ ~-90 ~