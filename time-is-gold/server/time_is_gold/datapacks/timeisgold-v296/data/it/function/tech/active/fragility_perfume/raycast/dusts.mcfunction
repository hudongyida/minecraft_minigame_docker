particle minecraft:white_ash ~ ~ ~ .3 .3 .3 0.7 3 force
particle minecraft:dust{color:[1.000,0.639,1.000],scale:0.3} ~ ~ ~ .5 .5 .5 0 1 force

execute as @e[tag=monster,tag=!item.fragility_perfume.doubled,distance=..3] if entity @s[scores={combat.fragility=1..}] run tag @s add item.fragility_perfume.doubles