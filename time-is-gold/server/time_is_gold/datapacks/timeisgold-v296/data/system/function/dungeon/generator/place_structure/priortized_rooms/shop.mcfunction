# 상점 방으로 설정된 정점의 데이터 설정
# 실행 인자: 상점 방으로 선택할 정점

execute if score #SYSTEM dungeon.floor matches 0 run return fail
tag @s add dungeon.generator.vertex.shop
scoreboard players set @s dungeon.structure_id 0
tag @s add dungeon.generator.special_room