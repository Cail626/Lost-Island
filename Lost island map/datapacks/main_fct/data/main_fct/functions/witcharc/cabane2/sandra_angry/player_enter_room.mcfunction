scoreboard players set witch_arc witch_arc_sandra_angry_state 2
execute as @e[tag=aj.sandra.root] run function animated_java:sandra/animations/magic_playing/stop
execute as @e[tag=aj.sandra.root] run function animated_java:sandra/animations/angry_ice_idle/play

tellraw @a {"text": "(sandra) Get out of my room!","color": "dark_purple"}

