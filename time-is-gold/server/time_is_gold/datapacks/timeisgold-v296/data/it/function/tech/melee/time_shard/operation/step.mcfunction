execute rotated as @s run rotate @s ~10 ~

execute if score @s item.time_shard.tick matches 1.. run scoreboard players remove @s item.time_shard.tick 1
execute unless score @s item.time_shard.tick matches 1.. run kill @s

execute at @s as @a[predicate=system:player,distance=..3] run scoreboard players set @s system.time.stasis 1

# VFX
execute at @s run particle dust{color:[0.475, 0.992, 0.235], scale:1} ^ ^ ^3 0 0 0 0 1 force
execute at @s run particle dust{color:[0.475, 0.992, 0.235], scale:1} ^ ^ ^-3 0 0 0 0 1 force
execute at @s run particle dust{color:[0.475, 0.992, 0.235], scale:1} ^3 ^ ^ 0 0 0 0 1 force
execute at @s run particle dust{color:[0.475, 0.992, 0.235], scale:1} ^-3 ^ ^ 0 0 0 0 1 force
execute at @s run particle dust{color:[0.475, 0.992, 0.235], scale:1} ~ ~ ~ 0.66 0.66 0.66 0.1 5 force