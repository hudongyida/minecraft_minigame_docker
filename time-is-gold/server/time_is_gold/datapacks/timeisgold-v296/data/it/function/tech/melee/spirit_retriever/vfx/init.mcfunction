$execute as @s on vehicle at @s positioned ~ ~ ~ facing entity @a[scores={playerid=$(playerid)},limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @s on vehicle at @s positioned ~ ~ ~ run particle minecraft:enchanted_hit ~ ~0.3 ~ 0.15 0.15 0.15 0 2 force

execute as @s if predicate it:10pc run function it:tech/melee/spirit_retriever/vfx/connection_ray with entity @s data