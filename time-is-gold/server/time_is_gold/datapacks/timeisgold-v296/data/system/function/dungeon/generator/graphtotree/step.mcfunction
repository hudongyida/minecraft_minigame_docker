# 그래프에서 간선 하나를 선택해 삭제하는 함수
# 실행 인자: 실행 데이터가 저장된 마커

# 현재 남은 간선 중 테스트하지 않은 간선 삭제 시도
execute at @s run function system:dungeon/generator/graphtotree/remove_edge with entity @s data

# 그래프의 정점과 간선의 수 계산
execute at @s run function system:dungeon/generator/graphtotree/count_components with entity @s data

# 그래프의 간선 수가 정점 수보다 작다면 종료
execute at @s if score @s dungeon.generator.graphtotree.count_vertex > @s dungeon.generator.graphtotree.count_edge run function system:dungeon/generator/graphtotree/terminate with entity @s data
scoreboard players add @s dungeon.generator.graphtotree.elapsed_tick 1