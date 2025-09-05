# 간선을 임의로 하나 삭제한 후 BFS 알고리즘을 실행해 방문하지 못하는 정점이 발생한다면 삭제 취소

# 가능한 간선 하나를 임의로 선택해 edge.target 태그 부여
$execute as @e[type=armor_stand,tag=$(edge_tag),tag=$(available_tag),sort=random,limit=1] run tag @s add dungeon.generator.edge.target

# edge.target 태그가 부여된 간선에 삭제 태그 부여, 사용 가능 태그 제거
$execute as @e[type=armor_stand,tag=$(edge_tag),tag=dungeon.generator.edge.target,limit=1] run tag @s add bfs.edge.removed
$execute as @e[type=armor_stand,tag=$(edge_tag),tag=dungeon.generator.edge.target,limit=1] run tag @s remove $(available_tag)

# BFS 알고리즘 실행
execute at @s run function system:dungeon/generator/bfs/init with entity @s data

# 그래프의 정점 및 방문한 정점 수 계산
execute at @s run function system:dungeon/generator/graphtotree/count_components with entity @s data

# BFS 실행 후 정점 방문 정보 초기화
execute at @s run function system:dungeon/generator/bfs/bfs_resetvertex with entity @s data

execute as @e[type=armor_stand,tag=dungeon.generator.edge.target] at @s run particle sonic_boom ~ ~1 ~ 0 0 0 1 3

# 만약 전체 정점 수보다 방문한 정점 수가 작다면 삭제 취소
$execute as @s at @s if score @s dungeon.generator.graphtotree.count_vertex > @s dungeon.generator.graphtotree.count_visited run tag @e[type=armor_stand,tag=$(edge_tag),tag=dungeon.generator.edge.target,limit=1] remove bfs.edge.removed

# 간선 선택 해제
execute as @e[type=armor_stand,tag=dungeon.generator.edge.target] run tag @s remove dungeon.generator.edge.target