function main_fct:interlude/sandra_madness/dialog/angried_3
function main_fct:interlude/sandra_madness/invocation
#Set curse
execute at @a run playsound entity.elder_guardian.curse block @s ~ ~ ~
playsound minecraft:item.trident.thunder block @a 144 64 282 10 0
effect give @a blindness 100
effect give @a slowness 100
effect give @a poison 100 2