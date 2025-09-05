tag @s remove dungeon.generator.allocate_room_id.target
tag @s remove dungeon.generator.allocate_room_id.next

# ID가 할당되지 않은(일반) 방에만 ID 부여
execute unless score @s dungeon.structure_id matches 0.. run function system:dungeon/generator/place_structure/allocate_room_id/get_id

# 인접한 모든 정점에 태그 부여
$execute at @s as @e[type=armor_stand,tag=bfs.vertex,tag=dungeon.generator.allocate_room_id.target,dx=$(distance),dy=0,dz=0] unless entity @e[type=armor_stand,tag=bfs.edge.removed,dx=$(distance),dy=0,dz=0] run tag @s add dungeon.generator.allocate_room_id.next
$execute at @s as @e[type=armor_stand,tag=bfs.vertex,tag=dungeon.generator.allocate_room_id.target,dx=-$(distance),dy=0,dz=0] unless entity @e[type=armor_stand,tag=bfs.edge.removed,dx=-$(distance),dy=0,dz=0] run tag @s add dungeon.generator.allocate_room_id.next
$execute at @s as @e[type=armor_stand,tag=bfs.vertex,tag=dungeon.generator.allocate_room_id.target,dx=0,dy=0,dz=$(distance)] unless entity @e[type=armor_stand,tag=bfs.edge.removed,dx=0,dy=0,dz=$(distance)] run tag @s add dungeon.generator.allocate_room_id.next
$execute at @s as @e[type=armor_stand,tag=bfs.vertex,tag=dungeon.generator.allocate_room_id.target,dx=0,dy=0,dz=-$(distance)] unless entity @e[type=armor_stand,tag=bfs.edge.removed,dx=0,dy=0,dz=-$(distance)] run tag @s add dungeon.generator.allocate_room_id.next

$execute as @e[type=armor_stand,tag=dungeon.generator.allocate_room_id.next] if entity @s run function system:dungeon/generator/place_structure/allocate_room_id/dfs {distance:$(distance)}