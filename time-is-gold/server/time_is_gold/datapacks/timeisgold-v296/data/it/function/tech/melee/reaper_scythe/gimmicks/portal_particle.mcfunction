execute as @s at @s run tp @s ~ ~ ~ ~10 ~
execute as @s at @s positioned ~ ~1 ~ run particle minecraft:sculk_soul ~ ~ ~ 0.1 0.3 0.1 0.05 0 force
execute as @s at @s positioned ~ ~1 ~ run particle minecraft:soul_fire_flame ~ ~ ~ 0.25 0.5 0.25 0.0 1 force
execute as @s at @s positioned ^ ^ ^.5 run particle minecraft:dust{color:[0.0,0.0,0.0],scale:0.8} ~ ~ ~ 0 0 0 0 1 force
execute as @s at @s positioned ^ ^ ^-.5 run particle minecraft:dust{color:[0.0,0.0,0.0],scale:0.8} ~ ~ ~ 0 0 0 0 1 force