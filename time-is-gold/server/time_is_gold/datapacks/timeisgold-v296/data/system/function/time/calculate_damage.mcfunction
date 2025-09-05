# 실행 인자: @a[tag=system.time.calculate_damage]

scoreboard players operation @s system.time.damage_taken -= @s system.time.time_defense_additive
scoreboard players operation @s system.time.time_defense_multiplicative *= @s system.time.damage_taken
scoreboard players operation @s system.time.damage_taken *= #1000 scoreboardConstant
scoreboard players operation @s system.time.damage_taken -= @s system.time.time_defense_multiplicative
scoreboard players operation @s system.time.damage_taken /= #1000 scoreboardConstant
execute if score @s system.time.damage_taken matches ..1 run scoreboard players set @s system.time.damage_taken 1