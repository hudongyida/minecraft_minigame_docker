# 실행 위치에서 X축, Z축 + 방향으로 그래프 마커 배치.
# $(x)          - X축 방향으로 배치할 정점 수, 간선 수는 $(x)-1이 됨
# $(z)          - Z축 방향으로 배치할 정점 수, 간선 수는 $(z)-1이 됨
# $(vertex_len) - 정사각형 방(정점)의 한 변 길이
# $(edge_len)   - 통로(간선)의 길이

$scoreboard players set #GraphManager dungeon.generator.graph_size.x $(x)
$scoreboard players set #GraphManager dungeon.generator.graph_size.z $(z)
scoreboard players remove #GraphManager dungeon.generator.graph_size.x 1
scoreboard players remove #GraphManager dungeon.generator.graph_size.z 1
scoreboard players set #GraphManager dungeon.generator.graph_iterator.x 0
scoreboard players set #GraphManager dungeon.generator.graph_iterator.z 0

$execute align xyz positioned ~0.5 ~ ~0.5 run function system:dungeon/generator/place_marker/loop_z {vertex_len:$(vertex_len),edge_len:$(edge_len)}