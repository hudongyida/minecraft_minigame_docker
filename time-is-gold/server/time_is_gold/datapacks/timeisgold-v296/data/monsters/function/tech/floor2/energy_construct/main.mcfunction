# 소환 직후 초기화
execute as @s[tag=energy_construct.uninitialized] if score @s entityid matches 0.. run function monsters:tech/floor2/energy_construct/set_data
execute as @s on passengers as @s[type=marker,tag=energy_construct.marker.creeper_check] run function monsters:tech/floor2/energy_construct/operation with entity @s data