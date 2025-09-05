# 1층 방 구조물을 배치하는 함수
# 실행 인자: bfs.vertex

execute at @s if score @s dungeon.structure_id matches 10002 run function system:dungeon/generator/place_structure/place {structure:"system:floor1/giantpress", y_offset:-55}

execute at @s if score @s dungeon.structure_id matches 10003 run function system:dungeon/generator/place_structure/place {structure:"system:floor1/cargo", y_offset:-53}

execute at @s if score @s dungeon.structure_id matches 10004 run function system:dungeon/generator/place_structure/place {structure:"system:floor1/coalmine_v2", y_offset:-75}

execute at @s if score @s dungeon.structure_id matches 10005 run function system:dungeon/generator/place_structure/place {structure:"system:floor1/sewer", y_offset:-73}
execute at @s if score @s dungeon.structure_id matches 10005 run fillbiome ~ ~ ~ ~26 ~-64 ~26 minecraft:swamp

execute at @s if score @s dungeon.structure_id matches 10006 run function system:dungeon/generator/place_structure/place {structure:"system:floor1/corridor_v2", y_offset:-51}

execute at @s if score @s dungeon.structure_id matches 10007 run function system:dungeon/generator/place_structure/place {structure:"system:floor1/amethystmine", y_offset:-60}

execute at @s if score @s dungeon.structure_id matches 10008 run function system:dungeon/generator/place_structure/place {structure:"system:floor1/2kea", y_offset:-69}

execute at @s if score @s dungeon.structure_id matches 10009 run function system:dungeon/generator/place_structure/place {structure:"system:floor1/woodwork", y_offset:-75}