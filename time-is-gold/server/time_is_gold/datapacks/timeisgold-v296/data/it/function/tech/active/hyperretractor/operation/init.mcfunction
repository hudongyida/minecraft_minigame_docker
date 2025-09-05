execute at @s run function it:tech/active/hyperretractor/operation/pull

# SFX
execute at @s run playsound minecraft:block.trial_spawner.about_to_spawn_item block @a ~ ~ ~ 1 2

# VFX
execute at @s run function system:vfx/expand_circle/init {range:8, step:5, R:0.15, G:0.66, B:0.77}