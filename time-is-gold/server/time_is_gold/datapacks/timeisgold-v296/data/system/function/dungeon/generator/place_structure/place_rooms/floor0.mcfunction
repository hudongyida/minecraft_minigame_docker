# 1층 방 구조물을 배치하는 함수
# 실행 인자: bfs.vertex

execute at @s if score @s dungeon.structure_id matches 1002 run function system:dungeon/generator/place_structure/place {structure:"system:floor0/corridor", y_offset:-51}

execute at @s if score @s dungeon.structure_id matches 1003 run function system:dungeon/generator/place_structure/place {structure:"system:floor0/arena", y_offset:-56}

execute at @s if score @s dungeon.structure_id matches 1004 run function system:dungeon/generator/place_structure/place {structure:"system:floor0/copper_labatory", y_offset:-76}

execute at @s if score @s dungeon.structure_id matches 1005 run function system:dungeon/generator/place_structure/place {structure:"system:floor0/sewer", y_offset:-61}

execute at @s if score @s dungeon.structure_id matches 1006 run function system:dungeon/generator/place_structure/place {structure:"system:floor0/storage", y_offset:-51}