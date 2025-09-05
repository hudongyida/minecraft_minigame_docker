# 실행 인자: @e[type=marker,tag=dungeon.generator.marker.manager]

scoreboard players reset @s dungeon.generator.special_room_vertex_check
scoreboard players reset @s dungeon.generator.normal_room_vertex_check

execute if entity @e[type=armor_stand,tag=dungeon.generator.special_room,tag=dungeon.generator.structure_place_target,limit=1] run scoreboard players set @s dungeon.generator.special_room_vertex_check 1
execute if entity @e[type=armor_stand,tag=dungeon.generator.structure_place_target,limit=1] run scoreboard players set @s dungeon.generator.normal_room_vertex_check 1

# 특수 방 배치
execute if score @s dungeon.generator.special_room_vertex_check matches 1 as @e[type=armor_stand,tag=dungeon.generator.special_room,tag=dungeon.generator.structure_place_target,sort=random,limit=1] at @s run function system:dungeon/generator/place_structure/place_rooms/special_rooms

# 일반 방 배치
execute unless score @s dungeon.generator.special_room_vertex_check matches 1 if score @s dungeon.generator.normal_room_vertex_check matches 1 as @e[type=armor_stand,tag=dungeon.generator.structure_place_target,sort=random,limit=1] at @s run function system:dungeon/generator/place_structure/place_rooms/normal_rooms

# 방 배치 완료 체크
execute unless score @s dungeon.generator.normal_room_vertex_check matches 1 run scoreboard players set @s dungeon.generator.place_check 1