execute as @e[type=marker,tag=dungeon.generator.graphtotree.manager] run function system:dungeon/generator/graphtotree/step

# 변환 완료 후 구조물 배치 시작
execute as @e[type=marker,tag=dungeon.generator.marker.manager] if score @s dungeon.generator.convert_check matches 1 unless score @s dungeon.generator.place_check matches 0.. if entity @s at @s run function system:dungeon/generator/place_structure/init with entity @s data

# 구조물 배치 중
execute as @e[type=marker,tag=dungeon.generator.marker.manager] if score @s dungeon.generator.convert_check matches 1 if score @s dungeon.generator.place_check matches 0 run function system:dungeon/generator/place_structure/step with entity @s data

# 던전 생성 완료
execute as @e[type=marker,tag=dungeon.generator.marker.manager] if score @s dungeon.generator.convert_check matches 1 if score @s dungeon.generator.place_check matches 1 if entity @s at @s run function system:dungeon/generator/terminate with entity @s data