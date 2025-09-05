execute as @s at @s run particle sonic_boom ~ ~ ~ 0 0 0 0 1 force
execute as @s at @s run playsound minecraft:entity.warden.sonic_boom hostile @a ~ ~ ~ 0.1 1 0
execute at @s as @e[tag=monster,distance=..3] run function system:combat/modified_damage/laser/init with entity @n[type=marker,tag=item.energy_blaster.marker] data

kill @s