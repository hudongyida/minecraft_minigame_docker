# BFS 실행 후 정점 방문 정보 초기화

$execute as @e[type=armor_stand, tag=$(visited_tag)] run tag @s remove $(visited_tag)
execute as @e[type=armor_stand, tag=bfs.start] run tag @s remove bfs.start