#Check if the player is looking at sandra
execute as @a at @s if entity @s[x=140,y=68,z=275,dx=1,dz=1] anchored eyes facing 145 68.5 272 anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] run scoreboard players set witch_arc player_staring_sandra 1

#Look at the player
execute if score witch_arc player_staring_sandra matches 1 as @e[tag=aj.sandra.root] at @s facing entity @p eyes rotated ~ 0 run tp ~ ~ ~
