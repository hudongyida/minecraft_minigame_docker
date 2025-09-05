scoreboard players reset @s monsters.floor1.water_supervisor.attack_tick
scoreboard players set @s monsters.floor1.water_supervisor.cooldown 20
execute at @s anchored eyes rotated as @s run rotate @s facing entity @p[predicate=system:player] eyes
execute at @s anchored eyes rotated as @s run function monsters:tech/floor1/water_supervisor/tracking_object_call