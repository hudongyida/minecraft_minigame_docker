execute as @s run tag @s remove item.gliding.check_fall_distance
execute as @s run tag @s remove item.gliding.fall_check

execute as @s at @s anchored feet positioned ~ ~.3 ~ run particle minecraft:gust ~ ~ ~ 1 .5 1 0.05 10 force

execute as @s at @s if entity @e[tag=monster,distance=..5] run tag @s add item.gliding.monster

execute at @s[tag=item.gliding.monster] as @e[tag=monster,distance=..5] run scoreboard players set @s item.gliding.fragile 400

# SFX
execute as @s[tag=item.gliding.monster] at @s run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 0.5 0.5 0
execute as @s[tag=item.gliding.monster] at @s run playsound minecraft:block.glass.break block @a ~ ~ ~ 1 2 0
execute as @s at @s run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 0.5 1.5 0
stopsound @s * minecraft:item.elytra.flying
tag @s remove item.gliding.flying_sound

execute as @s[tag=item.gliding.monster] run tag @s remove item.gliding.monster