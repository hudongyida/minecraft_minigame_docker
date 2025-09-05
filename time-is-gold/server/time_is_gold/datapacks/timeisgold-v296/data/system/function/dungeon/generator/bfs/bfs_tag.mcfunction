# BFS 알고리즘에서 현재 정점과 연결된 정점에 Tag 및 스코어보드에서 방문 순서 부여
# $(distance)       - 정점 아머스탠드 사이 거리(단위: 블록)
# $(visited_tag)    - 방문한 정점에 부여할 태그

# 함수 실행 인자:
# type = armor_stand
# tag=bfs.vertex, tag=!$(visited_tag), tag=bfs.start

# 현재 정점(bfs.start 태그가 붙은 갑옷 거치대)에 방문 처리
tag @s remove bfs.start
$tag @s add $(visited_tag)

# bfsDepth 스코어보드에 시작 정점으로부터의 거리 저장
$scoreboard players operation @s dungeon.generator.bfs.depth = $(uuid) dungeon.generator.bfs.depth

# 디버그
#execute at @s run particle minecraft:explosion_emitter ~ ~2 ~ 0.1 0.1 0.1 3 3 force

# 현재 정점으로부터 X축 + 방향으로 $(distance) 거리 안에 있는 아직 방문하지 않은 정점에 대해, 연결 여부를 확인한 후 연결되어 있다면 bfs.start 태그 부여
$execute at @s if entity @e[type=armor_stand, tag=bfs.edge, dx=$(distance), dy=0, dz=0] unless entity @e[type=armor_stand, tag=bfs.edge.removed, dx=$(distance), dy=0, dz=0] as @e[type=armor_stand, tag=bfs.vertex, tag=!$(visited_tag), dx=$(distance), dy=0, dz=0] run tag @s add bfs.start

# 현재 정점으로부터 X축 - 방향으로 $(distance) 거리 안에 있는 아직 방문하지 않은 정점에 대해, 연결 여부를 확인한 후 연결되어 있다면 bfs.start 태그 부여
$execute at @s if entity @e[type=armor_stand, tag=bfs.edge, dx=-$(distance), dy=0, dz=0] unless entity @e[type=armor_stand, tag=bfs.edge.removed, dx=-$(distance), dy=0, dz=0] as @e[type=armor_stand, tag=bfs.vertex, tag=!$(visited_tag), dx=-$(distance), dy=0, dz=0] run tag @s add bfs.start

# 현재 정점으로부터 Z축 + 방향으로 $(distance) 거리 안에 있는 아직 방문하지 않은 정점에 대해, 연결 여부를 확인한 후 연결되어 있다면 bfs.start 태그 부여
$execute at @s if entity @e[type=armor_stand, tag=bfs.edge, dx=0, dy=0, dz=$(distance)] unless entity @e[type=armor_stand, tag=bfs.edge.removed, dx=0, dy=0, dz=$(distance)] as @e[type=armor_stand, tag=bfs.vertex, tag=!$(visited_tag), dx=0, dy=0, dz=$(distance)] run tag @s add bfs.start

# 현재 정점으로부터 Z축 - 방향으로 $(distance) 거리 안에 있는 아직 방문하지 않은 정점에 대해, 연결 여부를 확인한 후 연결되어 있다면 bfs.start 태그 부여
$execute at @s if entity @e[type=armor_stand, tag=bfs.edge, dx=0, dy=0, dz=-$(distance)] unless entity @e[type=armor_stand, tag=bfs.edge.removed, dx=0, dy=0, dz=-$(distance)] as @e[type=armor_stand, tag=bfs.vertex, tag=!$(visited_tag), dx=0, dy=0, dz=-$(distance)] run tag @s add bfs.start