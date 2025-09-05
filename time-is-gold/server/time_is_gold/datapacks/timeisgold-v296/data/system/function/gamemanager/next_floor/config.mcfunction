# 층 생성 옵션을 설정하는 함수.

# 0층
execute if score #SYSTEM dungeon.floor matches 0 run scoreboard players set #SYSTEM dungeon.size_x 3
execute if score #SYSTEM dungeon.floor matches 0 run scoreboard players set #SYSTEM dungeon.size_z 3
execute if score #SYSTEM dungeon.floor matches 0 run scoreboard players set #SYSTEM dungeon.max_special_rooms 0
execute if score #SYSTEM dungeon.floor matches 0 run scoreboard players set #MIN_VALUE dungeon.generator.entrance_distance 5
execute if score #SYSTEM dungeon.floor matches 0 run scoreboard players set #MAX_VALUE dungeon.generator.entrance_distance 123456789

# 1층
execute if score #SYSTEM dungeon.floor matches 1 run scoreboard players set #SYSTEM dungeon.size_x 3
execute if score #SYSTEM dungeon.floor matches 1 run scoreboard players set #SYSTEM dungeon.size_z 4
execute if score #SYSTEM dungeon.floor matches 1 run scoreboard players set #SYSTEM dungeon.max_special_rooms 1
execute if score #SYSTEM dungeon.floor matches 1 run scoreboard players set #MIN_VALUE dungeon.generator.entrance_distance 10
execute if score #SYSTEM dungeon.floor matches 1 run scoreboard players set #MAX_VALUE dungeon.generator.entrance_distance 123456789

# 2층
execute if score #SYSTEM dungeon.floor matches 2 run scoreboard players set #SYSTEM dungeon.size_x 4
execute if score #SYSTEM dungeon.floor matches 2 run scoreboard players set #SYSTEM dungeon.size_z 4
execute if score #SYSTEM dungeon.floor matches 2 run scoreboard players set #SYSTEM dungeon.max_special_rooms 1
execute if score #SYSTEM dungeon.floor matches 2 run scoreboard players set #MIN_VALUE dungeon.generator.entrance_distance 10
execute if score #SYSTEM dungeon.floor matches 2 run scoreboard players set #MAX_VALUE dungeon.generator.entrance_distance 123456789