# connection_ray 기능 실행
execute as @e[type=marker,tag=system.vfx.connection_ray.marker] at @s run function system:vfx/connection_ray/step with entity @s data

# clock_rotate 기능 실행
execute as @e[type=marker,tag=system.vfx.clock_rotate.marker] at @s run function system:vfx/clock_rotate/step with entity @s data
execute as @e[type=marker,tag=system.vfx.clock_rotate.marker] at @s run scoreboard players add @s system.vfx.clock_rotate.tick 1
execute as @e[type=marker,tag=system.vfx.clock_rotate.marker] at @s if score @s system.vfx.clock_rotate.tick >= @s system.vfx.clock_rotate.max_tick run kill @s

# expand_circle 기능 실행
execute as @e[type=marker,tag=system.vfx.expand_circle.marker] at @s run function system:vfx/expand_circle/step with entity @s data

# item_display 기능 실행
execute as @e[type=item,tag=!system.vfx.item_display.initialized] unless entity @s[tag=system.shop.item.showcase] run function system:vfx/item_display/tick

# block_wave 기능 실행
execute as @e[type=marker,tag=system.vfx.block_wave.marker] at @s run function system:vfx/block_wave/operation/step