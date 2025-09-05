# 실행 인자: @e[type=marker,tag=dungeon.generator.marker.manager]

scoreboard players set @s dungeon.generator.place_check 0

execute as @e[type=armor_stand,tag=bfs.vertex] run tag @s add dungeon.generator.structure_place_target
function system:dungeon/generator/place_structure/tag_entrance with entity @s data

# 통로 배치
execute as @e[type=armor_stand,tag=bfs.edge.z] at @s run function system:dungeon/generator/place_structure/general/edge_z
execute as @e[type=armor_stand,tag=bfs.edge.x] at @s run function system:dungeon/generator/place_structure/general/edge_x

# 시작 방 정점 설정
execute as @e[type=armor_stand,tag=bfs.vertex.leaf,tag=dungeon.generator.vertex.entrance,limit=1] run function system:dungeon/generator/place_structure/priortized_rooms/entrance

# 보스 포탈 방 정점 설정
execute as @e[type=armor_stand,tag=bfs.vertex.leaf,tag=dungeon.generator.vertex.boss_portal,limit=1] run function system:dungeon/generator/place_structure/priortized_rooms/boss_portal

# 상자 방 정점 설정
execute as @e[type=armor_stand,tag=bfs.vertex.leaf,tag=!dungeon.generator.special_room,sort=random,limit=1] run function system:dungeon/generator/place_structure/priortized_rooms/chest

# 상점 방 정점 설정
execute as @e[type=armor_stand,tag=bfs.vertex.leaf,tag=!dungeon.generator.special_room,sort=random,limit=1] run function system:dungeon/generator/place_structure/priortized_rooms/shop

# 기타 특수 방 정점 설정
execute if score #SYSTEM dungeon.floor matches 1 run function system:dungeon/generator/place_structure/priortized_rooms/supply/init

# 특수 방 ID 할당
function system:dungeon/generator/place_structure/allocate_special_room_id/init

# 일반 방 ID 할당
function system:dungeon/generator/place_structure/allocate_room_id/init with entity @s data

# 생성된 특수 방 수 카운트
#execute as @s run function system:dungeon/generator/place_structure/count_special_rooms with entity @s data