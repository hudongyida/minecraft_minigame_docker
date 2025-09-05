tag @s remove item.chiseled_comet.active

execute at @s as @a[distance=..15,gamemode=!spectator] run scoreboard players set @s item.chiseled_comet.active 20
execute at @s as @a[distance=..15,gamemode=!spectator] at @s if predicate system:periodic_tick_5 run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.05 1 force

execute at @s run particle minecraft:glow ~ ~1 ~ 0 0 0 0.05 1 force