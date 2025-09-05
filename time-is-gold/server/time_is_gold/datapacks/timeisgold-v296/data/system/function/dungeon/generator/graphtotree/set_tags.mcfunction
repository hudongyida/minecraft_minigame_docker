# 그래프에 등록된 모든 정점에 연결된 간선에 태그 추가

$execute as @e[type=armor_stand,tag=$(vertex_tag)] at @s as @e[type=armor_stand, tag=bfs.edge, dx=$(distance), dy=0, dz=0] if entity @e[type=armor_stand, tag=$(vertex_tag), dx=$(distance), dy=0, dz=0] run tag @s add $(edge_tag)
$execute as @e[type=armor_stand,tag=$(vertex_tag)] at @s as @e[type=armor_stand, tag=bfs.edge, dx=-$(distance), dy=0, dz=0] if entity @e[type=armor_stand, tag=$(vertex_tag), dx=-$(distance), dy=0, dz=0] run tag @s add $(edge_tag)
$execute as @e[type=armor_stand,tag=$(vertex_tag)] at @s as @e[type=armor_stand, tag=bfs.edge, dx=0, dy=0, dz=$(distance)] if entity @e[type=armor_stand, tag=$(vertex_tag), dx=0, dy=0, dz=$(distance)] run tag @s add $(edge_tag)
$execute as @e[type=armor_stand,tag=$(vertex_tag)] at @s as @e[type=armor_stand, tag=bfs.edge, dx=0, dy=0, dz=-$(distance)] if entity @e[type=armor_stand, tag=$(vertex_tag), dx=0, dy=0, dz=-$(distance)] run tag @s add $(edge_tag)
$execute as @e[type=armor_stand,tag=$(edge_tag),tag=!bfs.edge.removed] run tag @s add $(available_tag)