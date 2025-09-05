scoreboard players reset @s monsters.floor2.apprentice_cryomancer.attack_tick
scoreboard players set @s monsters.floor2.apprentice_cryomancer.cooldown 20
execute at @s anchored eyes rotated as @s run rotate @s facing entity @p[predicate=system:player] eyes
execute at @s anchored eyes rotated as @s run function monsters:tech/floor2/apprentice_cryomancer/tracking_object_call

# SFX
execute at @s run playsound minecraft:block.glass.break block @a ~ ~ ~ 2 0.5 0