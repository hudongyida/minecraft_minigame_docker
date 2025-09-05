# 소환 직후 초기화
execute as @s[tag=automated_bomb.uninitialized] if score @s entityid matches 0.. run function monsters:tech/floor1/automated_bomb/set_data
execute as @s on passengers as @s[type=marker,tag=automated_bomb.marker.creeper_check] run function monsters:tech/floor1/automated_bomb/operation with entity @s data

execute as @s[tag=automated_bomb.air_strike] if predicate system:on_ground run function monsters:tech/floor1/drone_carrier/bomb_operation

# SFX
execute as @s if predicate system:periodic_tick_10 at @s run playsound minecraft:item.spyglass.use player @a ~ ~ ~ 0.5 0.33 0

# VFX
execute as @s on passengers as @s[type=item_display,tag=automated_bomb.windup] at @s run rotate @s ~10 ~