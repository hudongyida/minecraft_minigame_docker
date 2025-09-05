# 1층에 한정해 보급상자 방 정점을 설정하는 함수.

# 생성 과정
# 1. 시작 방으로부터 config에 설정된 거리만큼 떨어져 있는 일반 방 중 가장 가까운 branch를 우선으로 설정
# 2. 1을 만족하는 거리가 같은 branch가 여러 개 있다면 아무거나 선택
# 3. 해당하는 범위 안에 branch가 없을 경우 config에 설정된 거리만큼 떨어져 있는 일반 방 중 아무거나 설정
# 4. (그럴 일은 없지만) 위 조건이 모두 실패할 경우 생성 실패

# 1번 조건
function system:dungeon/generator/place_structure/priortized_rooms/supply/tag_branch

# 2번 조건
execute unless entity @e[type=armor_stand,tag=dungeon.generator.vertex.supply_target] as @e[type=armor_stand,tag=bfs.vertex,tag=!bfs.vertex.leaf,tag=!dungeon.generator.special_room] if score @s dungeon.generator.bfs.depth >= #MIN_VALUE dungeon.special_rooms.supply.entrance_distance if score @s dungeon.generator.bfs.depth <= #MAX_VALUE dungeon.special_rooms.supply.entrance_distance run tag @s add dungeon.generator.vertex.supply_target

execute as @e[type=armor_stand,tag=dungeon.generator.vertex.supply_target,sort=random,limit=1] run function system:dungeon/generator/place_structure/priortized_rooms/supply/set_data
tag @e[type=armor_stand,tag=dungeon.generator.vertex.supply_target] remove dungeon.generator.vertex.supply_target