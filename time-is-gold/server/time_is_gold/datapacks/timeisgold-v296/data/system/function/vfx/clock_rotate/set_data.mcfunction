$scoreboard players set @s system.vfx.clock_rotate.max_tick $(duration)
scoreboard players set @s system.vfx.clock_rotate.angle_calc 1000000
scoreboard players operation @s system.vfx.clock_rotate.angle_calc /= @s system.vfx.clock_rotate.max_tick
execute store result entity @s data.angle double 0.00036 run scoreboard players get @s system.vfx.clock_rotate.angle_calc

tag @s remove system.vfx.clock_rotate.marker.uninitialized