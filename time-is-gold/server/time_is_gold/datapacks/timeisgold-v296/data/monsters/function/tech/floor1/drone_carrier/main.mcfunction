execute unless score @s monsters.floor1.drone_carrier.max_drone matches 1.. run return fail
execute at @s unless entity @n[predicate=system:player,distance=..25] run return fail
execute at @s facing entity @n[predicate=system:player,distance=..25] feet run tp @s ~ ~ ~ ~ ~

execute if score @s monsters.floor1.drone_carrier.summonize_tick matches 1.. run scoreboard players remove @s monsters.floor1.drone_carrier.summonize_tick 1
execute unless score @s monsters.floor1.drone_carrier.summonize_tick matches 1.. at @s run function monsters:tech/floor1/drone_carrier/functions/assign