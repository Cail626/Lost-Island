execute if entity @s[tag=aj.sandra.root] run function animated_java:sandra/zzzzzzzz/animations/crying_looking/pause_as_root
execute if entity @s[tag=!aj.sandra.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:sandra/animations/crying_looking/pause ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]