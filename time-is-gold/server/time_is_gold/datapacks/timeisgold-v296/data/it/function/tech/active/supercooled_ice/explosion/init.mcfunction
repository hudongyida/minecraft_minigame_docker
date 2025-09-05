$execute as @s at @s run function it:tech/utils/explode/init {power:4,playerid:$(playerid)}
execute as @s at @s as @e[tag=monster,distance=..15] run effect give @s slowness 15 2 false

# SFX
execute as @s at @s run playsound block.glass.break block @a ~ ~ ~ 2 0.5
execute as @s at @s run playsound block.glass.break block @a ~ ~ ~ 2 0.5
execute as @s at @s run playsound block.glass.break block @a ~ ~ ~ 2 0.5
execute as @s at @s run playsound block.snow.break block @a ~ ~ ~ 2 0.5

# VFX
execute as @s at @s run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 1
execute as @s at @s run particle minecraft:gust_emitter_large ~ ~ ~ 1 1 1 1 2
execute as @s at @s run particle minecraft:snowflake ~ ~ ~ 2 2 2 0.1 10

kill @s