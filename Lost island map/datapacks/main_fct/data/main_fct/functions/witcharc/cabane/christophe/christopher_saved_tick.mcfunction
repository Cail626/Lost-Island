#Summon book 
execute if score witch_arc christopher_book_summoned matches 0 run function main_fct:witcharc/cabane/christophe/book

#Summon witch desease
execute positioned 149 67 280 if entity @a[distance=..2] run function main_fct:witcharc/cabane/christophe/into_dream_world
