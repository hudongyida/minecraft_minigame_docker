# 보스 포탈 방으로 설정된 정점의 데이터 설정
# 실행 인자: 보스 포탈 방으로 선택할 정점

scoreboard players operation @s dungeon.structure_id = #SYSTEM dungeon.floor
scoreboard players operation @s dungeon.structure_id *= #10000 scoreboardConstant
execute if score #SYSTEM dungeon.floor matches 0 run scoreboard players set @s dungeon.structure_id 1000
scoreboard players add @s dungeon.structure_id 1
tag @s add dungeon.generator.special_room