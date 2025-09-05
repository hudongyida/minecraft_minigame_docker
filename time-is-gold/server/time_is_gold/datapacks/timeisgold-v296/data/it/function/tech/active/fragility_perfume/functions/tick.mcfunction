execute as @s run particle white_ash ~ ~1 ~ .4 .6 .4 0.2 2 force
execute as @s at @s run particle dust{color:[1.000,0.639,1.000],scale:0.3} ~ ~1 ~ .4 .6 .4 0 1 force
execute as @s if score @s combat.fragility matches ..0 run tag @s remove item.fragility_perfume.doubled