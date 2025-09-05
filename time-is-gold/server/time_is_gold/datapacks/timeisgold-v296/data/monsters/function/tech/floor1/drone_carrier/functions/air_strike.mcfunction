execute at @s positioned ~ ~-1 ~ run function monsters:summon/floor1/automated_bomb
execute as @s run data modify entity @s Glowing set value false
execute at @s positioned ~ ~-1 ~ as @n[type=creeper,tag=automated_bomb,distance=..1] run tag @s add automated_bomb.air_strike
execute at @s positioned ~ ~-1 ~ as @n[type=creeper,tag=automated_bomb,distance=..1] run attribute @s gravity base set 0.04
execute at @s positioned ~ ~-1 ~ as @n[type=creeper,tag=automated_bomb,distance=..1] run attribute @s safe_fall_distance base set 10000