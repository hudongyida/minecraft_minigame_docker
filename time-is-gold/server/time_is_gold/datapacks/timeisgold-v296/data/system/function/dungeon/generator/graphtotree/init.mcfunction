# 주어진 그래프를 트리로 변환
# 실행 인자: @e[type=marker,tag=dungeon.generator.marker.manager]
# $(distance)       - 정점 아머스탠드 사이 거리(단위: 블록)
# $(uuid)           - 던전 생성 매니저 마커 UUID Token
### 주의! - 함수 실행 위치에서 가장 가까운 정점이 트리의 루트가 됨.

scoreboard players set @s dungeon.generator.convert_check 0

# 데이터 관리용 마커 소환
$execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["dungeon.generator.graphtotree.manager"],data:{distance:$(distance), manageruuid:"$(uuid)", uuid:"", visited_tag:"", vertex_tag:"", edge_tag:"", available_tag:""}}
execute positioned ~ ~ ~ as @n[type=marker,tag=dungeon.generator.graphtotree.manager,distance=..0.5] run function system:utils/uuid_tokenizer/init
execute positioned ~ ~ ~ as @n[type=marker,tag=dungeon.generator.graphtotree.manager,distance=..0.5] run data modify entity @s data.uuid set from storage timeisgold:uuid_tokenizer output

execute positioned ~ ~ ~ as @n[type=marker,tag=dungeon.generator.graphtotree.manager,distance=..0.5] at @s run function system:dungeon/generator/graphtotree/register_graph with entity @s data
execute positioned ~ ~ ~ as @n[type=marker,tag=dungeon.generator.graphtotree.manager,distance=..0.5] at @s run function system:dungeon/generator/graphtotree/set_tags with entity @s data

# 그래프의 간선 수가 정점 수보다 작다면 실행 취소
execute positioned ~ ~ ~ as @n[type=marker,tag=dungeon.generator.graphtotree.manager,distance=..0.5] at @s if score @s dungeon.generator.graphtotree.count_vertex > @s dungeon.generator.graphtotree.count_edge run tag @s add dungeon.generator.graphtotree.sans

execute as @e[type=marker,tag=dungeon.generator.graphtotree.sans] run tellraw @a {"text":"这个图的边数已经少于顶点数了，请修复，谢谢","color":"red"}
execute as @e[type=marker,tag=dungeon.generator.graphtotree.sans] run kill @s