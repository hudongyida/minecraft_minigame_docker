# 만들어진 직사각 형태 트리에서 특수 정점에 bfs.vertex.leaf 태그 부여 및 입구 위치 저장
# 실행 인자: @e[type=armor_stand,tag=$(vertex_tag)]
# $(distance)   - 정점 아머스탠드 사이 거리(단위: 블록)

### 리프 정점의 dungeon.generator.rotation_value는 방 내부에서 봤을 때 입구의 방향을 나타냅니다.
# 0: Z+ 방향
# 1: X- 방향
# 2: Z- 방향
# 3: X+ 방향

scoreboard players set @s dungeon.generator.graphtotree.count_neighbor 0

# 정점 기준 Z+ 방향
$execute at @s unless entity @e[type=armor_stand, tag=bfs.edge.removed, dx=0, dy=0, dz=$(distance)] if entity @e[type=armor_stand, tag=$(edge_tag), dx=0, dy=0, dz=$(distance)] if entity @e[type=armor_stand, tag=$(vertex_tag), dx=0, dy=0, dz=$(distance)] run scoreboard players add @s dungeon.generator.graphtotree.count_neighbor 1
$execute at @s unless entity @e[type=armor_stand, tag=bfs.edge.removed, dx=0, dy=0, dz=$(distance)] if entity @e[type=armor_stand, tag=$(edge_tag), dx=0, dy=0, dz=$(distance)] if entity @e[type=armor_stand, tag=$(vertex_tag), dx=0, dy=0, dz=$(distance)] run scoreboard players set @s dungeon.generator.rotation_value 0

# 정점 기준 X- 방향
$execute at @s unless entity @e[type=armor_stand, tag=bfs.edge.removed, dx=-$(distance), dy=0, dz=0] if entity @e[type=armor_stand, tag=$(edge_tag), dx=-$(distance), dy=0, dz=0] if entity @e[type=armor_stand, tag=$(vertex_tag), dx=-$(distance), dy=0, dz=0] run scoreboard players add @s dungeon.generator.graphtotree.count_neighbor 1
$execute at @s unless entity @e[type=armor_stand, tag=bfs.edge.removed, dx=-$(distance), dy=0, dz=0] if entity @e[type=armor_stand, tag=$(edge_tag), dx=-$(distance), dy=0, dz=0] if entity @e[type=armor_stand, tag=$(vertex_tag), dx=-$(distance), dy=0, dz=0] run scoreboard players set @s dungeon.generator.rotation_value 1

# 정점 기준 Z- 방향
$execute at @s unless entity @e[type=armor_stand, tag=bfs.edge.removed, dx=0, dy=0, dz=-$(distance)] if entity @e[type=armor_stand, tag=$(edge_tag), dx=0, dy=0, dz=-$(distance)] if entity @e[type=armor_stand, tag=$(vertex_tag), dx=0, dy=0, dz=-$(distance)] run scoreboard players add @s dungeon.generator.graphtotree.count_neighbor 1
$execute at @s unless entity @e[type=armor_stand, tag=bfs.edge.removed, dx=0, dy=0, dz=-$(distance)] if entity @e[type=armor_stand, tag=$(edge_tag), dx=0, dy=0, dz=-$(distance)] if entity @e[type=armor_stand, tag=$(vertex_tag), dx=0, dy=0, dz=-$(distance)] run scoreboard players set @s dungeon.generator.rotation_value 2

# 정점 기준 X+ 방향
$execute at @s unless entity @e[type=armor_stand, tag=bfs.edge.removed, dx=$(distance), dy=0, dz=0] if entity @e[type=armor_stand, tag=$(edge_tag), dx=$(distance), dy=0, dz=0] if entity @e[type=armor_stand, tag=$(vertex_tag), dx=$(distance), dy=0, dz=0] run scoreboard players add @s dungeon.generator.graphtotree.count_neighbor 1
$execute at @s unless entity @e[type=armor_stand, tag=bfs.edge.removed, dx=$(distance), dy=0, dz=0] if entity @e[type=armor_stand, tag=$(edge_tag), dx=$(distance), dy=0, dz=0] if entity @e[type=armor_stand, tag=$(vertex_tag), dx=$(distance), dy=0, dz=0] run scoreboard players set @s dungeon.generator.rotation_value 3

execute if score @s dungeon.generator.graphtotree.count_neighbor matches 2.. run scoreboard players reset @s dungeon.generator.rotation_value

# 연결된 정점이 1개일 경우 -> leaf
execute if score @s dungeon.generator.graphtotree.count_neighbor matches 1 run tag @s add bfs.vertex.leaf

# 연결된 정점이 3개 이상일 경우 -> branch
execute if score @s dungeon.generator.graphtotree.count_neighbor matches 3.. run tag @s add dungeon.generator.vertex.branch