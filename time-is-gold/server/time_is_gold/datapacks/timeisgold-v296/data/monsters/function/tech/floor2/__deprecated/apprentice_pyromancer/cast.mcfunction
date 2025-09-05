scoreboard players reset @s monsters.floor2.apprentice_pyromancer.attack_tick
scoreboard players set @s monsters.floor2.apprentice_pyromancer.cooldown 20
execute at @s anchored eyes rotated as @s run rotate @s facing entity @p[predicate=system:player] eyes
execute at @s anchored eyes rotated as @s run function monsters:tech/floor2/apprentice_pyromancer/tracking_object_call