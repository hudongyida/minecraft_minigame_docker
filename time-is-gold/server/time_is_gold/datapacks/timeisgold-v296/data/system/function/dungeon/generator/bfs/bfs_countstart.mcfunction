# 현재 그래프 상의 bfs.start 태그가 부여된 모든 정점의 수를 구해 마커의 dungeon.generator.bfs.count_start 변수에 저장

scoreboard players set @s dungeon.generator.bfs.count_start 0
$execute as @e[type=armor_stand, tag=bfs.start] run scoreboard players add $(uuid) dungeon.generator.bfs.count_start 1