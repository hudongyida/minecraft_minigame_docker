# BFS 변수 초기화 함수

# 그래프의 정점(에 해당하는 갑옷 거치대) 초기화
execute as @e[type=armor_stand, tag=bfs.vertex] run tag @s remove bfs.visited
execute as @e[type=armor_stand, tag=bfs.vertex] run tag @s remove bfs.start
execute as @e[type=armor_stand, tag=bfs.vertex] run scoreboard players reset @s dungeon.generator.bfs.depth

# 그래프의 간선(에 해당하는 갑옷 거치대) 초기화
execute as @e[type=armor_stand, tag=bfs.edge] run tag @s remove bfs.edge.removed