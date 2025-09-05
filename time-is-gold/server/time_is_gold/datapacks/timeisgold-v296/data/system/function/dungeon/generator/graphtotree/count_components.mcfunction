# 그래프의 정점 수, 삭제되지 않은 간선 수, 방문한 정점 수를 계산

# 변수 초기화
scoreboard players set @s dungeon.generator.graphtotree.count_vertex 0
scoreboard players set @s dungeon.generator.graphtotree.count_edge 0
scoreboard players set @s dungeon.generator.graphtotree.count_visited 0

$execute at @s run execute as @e[type=armor_stand, tag=$(vertex_tag)] run scoreboard players add $(uuid) dungeon.generator.graphtotree.count_vertex 1
$execute at @s run execute as @e[type=armor_stand, tag=$(edge_tag), tag=!bfs.edge.removed] run scoreboard players add $(uuid) dungeon.generator.graphtotree.count_edge 1
$execute at @s run execute as @e[type=armor_stand, tag=bfs.vertex, tag=$(visited_tag)] run scoreboard players add $(uuid) dungeon.generator.graphtotree.count_visited 1