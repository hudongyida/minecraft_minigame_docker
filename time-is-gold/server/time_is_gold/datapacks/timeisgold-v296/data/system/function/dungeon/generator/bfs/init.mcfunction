# 함수가 실행된 좌표에서 가장 가까운 bfs.vertex를 시작 정점으로 설정하고, BFS 실행
# $(distance)       - 정점 아머스탠드 사이 거리(단위: 블록)
# $(visited_tag)    - 방문한 정점에 부여할 태그
# $(uuid)           - 실행 인자 마커의 UUID Token

### 실행 인자: @e[type=marker,tag=dungeon.generator.graphtotree.manager] (20241010 수정)

execute positioned ~ ~ ~ run tag @n[type=armor_stand,tag=bfs.vertex] add bfs.start
scoreboard players set @s dungeon.generator.bfs.depth 0

# 현재 위치에서 step 함수 실행
$execute positioned ~ ~ ~ run function system:dungeon/generator/bfs/step {uuid:"$(uuid)", distance:$(distance), visited_tag:"$(visited_tag)"}