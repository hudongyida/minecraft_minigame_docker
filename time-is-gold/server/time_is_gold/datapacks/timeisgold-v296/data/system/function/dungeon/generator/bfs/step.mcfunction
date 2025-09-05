# 현재 그래프에서 더 이상 방문 가능한 정점이 없을 때까지 재귀를 통해 bfs_tag 함수 반복 실행

### 실행 인자: 그래프 변환 데이터가 저장된 마커 (20241010 수정)

# bfs.start 태그가 부여된 모든 정점에서 bfs_tag 함수 실행
$execute as @e[type=armor_stand, tag=bfs.start, tag=!$(visited_tag)] run function system:dungeon/generator/bfs/bfs_tag {uuid:"$(uuid)", distance:$(distance), visited_tag:"$(visited_tag)"}
scoreboard players add @s dungeon.generator.bfs.depth 1

# bfs_countstart 함수 실행 후 bfsCountStart 값이 0이 아니라면 재귀 실행
$function system:dungeon/generator/bfs/bfs_countstart {uuid:"$(uuid)"}
$execute unless score @s dungeon.generator.bfs.count_start matches 0 run function system:dungeon/generator/bfs/step {uuid:"$(uuid)", distance:$(distance), visited_tag:"$(visited_tag)"}