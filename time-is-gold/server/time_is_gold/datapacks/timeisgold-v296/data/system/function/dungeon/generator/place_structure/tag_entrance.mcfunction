# 던전의 입구(와 보스 포탈) 정점을 지정하는 함수
# 실행 인자: @e[type=marker,tag=dungeon.generator.marker.manager]

execute as @e[type=armor_stand,tag=bfs.vertex.leaf,sort=random,limit=1] run tag @s add dungeon.generator.vertex.entrance

$execute at @e[type=armor_stand,tag=dungeon.generator.vertex.entrance,limit=1] run function system:dungeon/generator/bfs/init {uuid:"$(uuid)", distance:$(distance), visited_tag:"bfs.visited"}

# 리프 정점 중 최소/최대 거리 조건을 만족하는 정점 태그
execute as @e[type=armor_stand,tag=bfs.vertex.leaf,tag=!dungeon.generator.vertex.entrance] if score @s dungeon.generator.bfs.depth >= #MIN_VALUE dungeon.generator.entrance_distance if score @s dungeon.generator.bfs.depth <= #MAX_VALUE dungeon.generator.entrance_distance run tag @s add dungeon.generator.vertex.boss_target

# 범위에 맞는 정점이 없을 경우 -> 가장 먼 정점 전부 태그
execute unless entity @e[type=armor_stand,tag=dungeon.generator.vertex.boss_target] run scoreboard players set #GraphManager dungeon.generator.entrance_distance 0
execute unless entity @e[type=armor_stand,tag=dungeon.generator.vertex.boss_target] as @e[type=armor_stand,tag=bfs.vertex.leaf,tag=!dungeon.generator.vertex.entrance] run scoreboard players operation #GraphManager dungeon.generator.entrance_distance > @s dungeon.generator.bfs.depth
execute unless entity @e[type=armor_stand,tag=dungeon.generator.vertex.boss_target] as @e[type=armor_stand,tag=bfs.vertex.leaf,tag=!dungeon.generator.vertex.entrance] if score @s dungeon.generator.bfs.depth >= #GraphManager dungeon.generator.entrance_distance run tag @s add dungeon.generator.vertex.boss_target

# 태그된 정점 중 하나를 보스 포탈 정점으로 지정
tag @e[type=armor_stand,tag=dungeon.generator.vertex.boss_target,sort=random,limit=1] add dungeon.generator.vertex.boss_portal
tag @e[type=armor_stand,tag=dungeon.generator.vertex.boss_target] remove dungeon.generator.vertex.boss_target