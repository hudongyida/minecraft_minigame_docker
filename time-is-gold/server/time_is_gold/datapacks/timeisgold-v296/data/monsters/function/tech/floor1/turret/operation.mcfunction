# 실행 인자: @e[type=block_display,tag=turret_head]

# aiming
execute as @s at @s if entity @a[predicate=system:player,distance=..25] run tag @s add turret_aiming

# stun exception
execute as @s[tag=turret_aiming] at @s positioned ~ ~-1.5 ~ if score @n[type=slime,tag=turret_hitbox,distance=..0.5] combat.stun matches 1.. run tag @s remove turret_aiming

execute as @s[tag=turret_aiming] at @s facing entity @p[predicate=system:player,distance=..25] eyes unless score @s monsters.floor1.turret_shoot matches 3..5 run tp @s ~ ~ ~ ~ ~
execute as @s[tag=turret_aiming] at @s unless score @s monsters.floor1.turret_shoot matches 1.. run scoreboard players set @s monsters.floor1.turret_shoot 20

# raycast
execute as @s[tag=turret_aiming] at @s if score @s monsters.floor1.turret_shoot matches 4 run function monsters:tech/floor1/turret/raycast_call

# SFX
execute as @s[tag=turret_aiming] at @s if score @s monsters.floor1.turret_shoot matches 4 run playsound minecraft:entity.iron_golem.hurt neutral @a ~ ~ ~ 1.5 2

# VFX
execute as @s[tag=turret_aiming] at @s if score @s monsters.floor1.turret_shoot matches 4 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[-0.5f,-0.5f,-0.88f]}}
execute as @s[tag=turret_aiming] at @s if score @s monsters.floor1.turret_shoot matches 2 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[-0.5f,-0.5f,-0.55f]}}
execute as @s[tag=turret_aiming] at @s if score @s monsters.floor1.turret_shoot matches 2 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0.3 0 0.01 1 force

# tag remove
execute as @s if score @s monsters.floor1.turret_shoot matches 1.. run scoreboard players remove @s monsters.floor1.turret_shoot 1
execute as @s[tag=turret_aiming] at @s run tag @s remove turret_aiming