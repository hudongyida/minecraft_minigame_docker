effect give @s minecraft:slowness 3 1 false
effect give @s minecraft:weakness 3 1 false
scoreboard players set @s item.stasis_field.fragility 60

execute at @s run particle dust{color:[0.200,0.800,0.800],scale:2} ~ ~1 ~ 0.3 0.3 0.3 0.1 5 force