# 구조물 ID가 할당되지 않은 모든 방에 일반 방 ID를 부여하는 함수.
# $(distance)   - 정점 사이 거리

function system:dungeon/generator/place_structure/allocate_room_id/reset_shuffle
execute as @e[type=armor_stand,tag=bfs.vertex] run tag @s add dungeon.generator.allocate_room_id.target

$execute as @e[type=armor_stand,tag=dungeon.generator.vertex.entrance] at @s run function system:dungeon/generator/place_structure/allocate_room_id/dfs {distance:$(distance)}