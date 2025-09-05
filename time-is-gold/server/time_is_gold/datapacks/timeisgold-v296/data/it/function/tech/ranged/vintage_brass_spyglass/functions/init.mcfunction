execute if score @s item.vintage_brass_spyglass.time matches ..19 run return run function it:tech/ranged/vintage_brass_spyglass/functions/reset_scoreboard
execute unless items entity @s container.* *[custom_data~{item:gunpowder}] run return run function it:tech/ranged/vintage_brass_spyglass/functions/reset_scoreboard
execute as @s at @s run function it:tech/ranged/vintage_brass_spyglass/functions/raycast_call
function it:tech/ranged/vintage_brass_spyglass/functions/reset_scoreboard

clear @s *[custom_data~{item:gunpowder}] 1
execute as @s at @s run playsound minecraft:item.totem.use player @a ~ ~ ~ 0.5 1.5
execute as @s at @s run playsound minecraft:block.trial_spawner.about_to_spawn_item block @s ~ ~ ~ 1 1.5