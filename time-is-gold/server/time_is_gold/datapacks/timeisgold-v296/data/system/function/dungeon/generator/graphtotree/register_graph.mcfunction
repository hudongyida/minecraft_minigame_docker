# 마커 위치에서 BFS를 실행해 시작 지점이 포함된 그래프 내 모든 정점에 태그 부여
# 실행 인자: 실행 데이터가 저장된 마커

# 그래프 내 정점에 부여할 visited_tag를 만들고, 인자로 넘겨서 BFS 실행 후 register_tag에 저장
$data modify entity @s data.visited_tag set value "dungeon.generator.graphtotree.vertex.$(uuid)"
execute at @s run function system:dungeon/generator/bfs/init with entity @s data
execute at @s run function system:dungeon/generator/graphtotree/count_components with entity @s data

data modify entity @s data.vertex_tag set from entity @s data.visited_tag
$data modify entity @s data.visited_tag set value "dungeon.generator.graphtotree.visited.$(uuid)"
$data modify entity @s data.edge_tag set value "dungeon.generator.graphtotree.edge.$(uuid)"
$data modify entity @s data.available_tag set value "dungeon.generator.graphtotree.available.$(uuid)"