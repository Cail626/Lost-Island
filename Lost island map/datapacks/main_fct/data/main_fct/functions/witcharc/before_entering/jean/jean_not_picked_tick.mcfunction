#Go near jean
execute positioned 226 63 247 if score witch_arc near_jean matches 0 if entity @a[distance=..5] run function main_fct:witcharc/before_entering/jean/near_jean

#Go far from jean
execute positioned 226 63 247 if score witch_arc near_jean matches 1 unless entity @a[distance=..10] run function main_fct:witcharc/before_entering/jean/quit_jean
