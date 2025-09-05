# 일반 방 구조물을 배치하는 함수.
# 실행 인자: @e[type=armor_stand,tag=dungeon.generator.structure_place_target]

tag @s remove dungeon.generator.structure_place_target

# 구조물 ID 계산 및 회전 설정
scoreboard players operation @s dungeon.structure_id.temp = #10000 scoreboardConstant
scoreboard players operation @s dungeon.structure_id.temp *= #SYSTEM dungeon.floor
execute if score #SYSTEM dungeon.floor matches 0 run scoreboard players set @s dungeon.structure_id.temp 1000
scoreboard players operation @s dungeon.structure_id += @s dungeon.structure_id.temp
execute unless score @s dungeon.generator.rotation_value matches 0..3 store result score @s dungeon.generator.rotation_value run random value 0..3

execute if score #SYSTEM dungeon.floor matches 0 at @s run function system:dungeon/generator/place_structure/place_rooms/floor0
execute if score #SYSTEM dungeon.floor matches 1 at @s run function system:dungeon/generator/place_structure/place_rooms/floor1
execute if score #SYSTEM dungeon.floor matches 2 at @s run function system:dungeon/generator/place_structure/place_rooms/floor2
#execute if score #SYSTEM dungeon.floor matches 3 at @s run function system:dungeon/generator/place_structure/place_rooms/floor3
#execute if score #SYSTEM dungeon.floor matches 4 at @s run function system:dungeon/generator/place_structure/place_rooms/floor4
#execute if score #SYSTEM dungeon.floor matches 5 at @s run function system:dungeon/generator/place_structure/place_rooms/floor5