# VFX
execute as @s at @s run tp @s ~ ~ ~ ~10 ~
execute as @s at @s positioned ^ ^ ^3 run particle small_flame ~ ~ ~ 0 0 0 0 1 force
execute as @s at @s positioned ^ ^ ^-3 run particle small_flame ~ ~ ~ 0 0 0 0 1 force
execute as @s at @s positioned ~ ~ ~ run particle dust{color:[0.950,0.200,0.000],scale:1} ~ ~ ~ 1.5 0.1 1.5 0 3 force
execute as @s at @s positioned ~ ~ ~ run particle falling_lava ~ ~ ~ 1.5 0.1 1.5 0 1 force

# Step
execute as @s at @s if entity @e[tag=monster,distance=..3] run function it:tech/active/pyrogel/functions/step_on