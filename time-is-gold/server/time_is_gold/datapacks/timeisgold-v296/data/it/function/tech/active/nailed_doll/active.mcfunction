scoreboard players remove @s item.nailed_doll.tick 1
execute if score @s item.nailed_doll.tick matches 0 run function it:tech/active/nailed_doll/reset_ability

# SFX
execute at @s run playsound minecraft:entity.drowned.ambient_water master @a[distance=..5] ~ ~ ~ 0.1 0.6 0

# VFX
execute at @s run particle witch ~ ~1 ~ 0 0 0 1 2 force
execute at @s run particle minecraft:entity_effect{color:[0.700,0.000,0.500,1.00]} ~ ~.5 ~ .2 .1 .2 1 1 force
execute at @s run particle minecraft:sculk_charge_pop ~ ~.5 ~ .2 .3 .2 0.05 3 force
tag @s add item.nailed_doll.active