#Add sounds
#First candidate snowball throw
execute positioned 136.3 67 277.5 if score witch_arc magic_playing_tick matches 23 run playsound minecraft:entity.snowball.throw hostile @a ~ ~ ~ 0.5 1

#Ball collision
execute positioned 136.3 67 277.5 if score witch_arc magic_playing_tick matches 39 run playsound minecraft:block.amethyst_block.break block @a ~ ~ ~ 1 0
#/playsound minecraft:item.trident.return block @a ~ ~ ~ 1 2
#Small of the collided doll
execute positioned 136.3 67 277.5 if score witch_arc magic_playing_tick matches 39 run playsound minecraft:item.shield.block block @a ~ ~ ~ 0.5 2

scoreboard players add witch_arc magic_playing_tick 1
execute if score witch_arc magic_playing_tick matches 50 run scoreboard players set witch_arc magic_playing_tick 0
execute positioned 134 67 276 if entity @a[dx=2.5,dy=3.5,dz=3] run function main_fct:witcharc/cabane2/sandra_angry/player_enter_room
