#Unsummon sully
function sully_fight:main/force_death
#Remove chest
setblock 944 105 83 air replace

#Restore escape routes
setblock 950 106 81 ladder[facing=east] replace
setblock 950 105 81 ladder[facing=east] replace
setblock 948 104 80 ladder[facing=west] replace
setblock 949 104 71 air replace
setblock 949 104 72 air replace
setblock 949 104 73 air replace
setblock 961 107 68 air replace
setblock 961 108 68 air replace