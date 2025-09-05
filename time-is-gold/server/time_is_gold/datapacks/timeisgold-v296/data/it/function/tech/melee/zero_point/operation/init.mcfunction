scoreboard players reset @s item.zero_point.charge
execute at @s as @e[tag=monster,distance=..4] at @s run function it:tech/melee/zero_point/operation/apply

# SFX
execute at @s run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 0.66 0.5

# VFX
execute at @s run function system:vfx/expand_circle/init {R:0.141, G:0.541, B:1.000, range:4, step:5}