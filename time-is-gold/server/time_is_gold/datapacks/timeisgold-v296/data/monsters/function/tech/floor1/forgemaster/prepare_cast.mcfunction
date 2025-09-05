effect give @s minecraft:slowness 1 20 true

# SFX
execute as @s if predicate system:periodic_tick_4 at @s run function system:sfx/dynamic_pitch/init {value:monsters.floor2.apprentice_pyromancer.attack_tick, max:monsters.floor2.apprentice_pyromancer.attack_tick_max, function:"monsters:tech/floor1/forgemaster/sfx/charge"}

# VFX
execute as @s at @s positioned ~ ~1 ~ run function system:vfx/dynamic_area/init {value:monsters.floor2.apprentice_pyromancer.attack_tick, max:monsters.floor2.apprentice_pyromancer.attack_tick_max, function:"monsters:tech/floor1/forgemaster/vfx/charge", x:0.5, y:1, z:0.5}