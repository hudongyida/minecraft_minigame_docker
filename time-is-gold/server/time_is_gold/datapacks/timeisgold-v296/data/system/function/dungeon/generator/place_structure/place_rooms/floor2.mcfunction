# 2층 방 구조물을 배치하는 함수
# 실행 인자: bfs.vertex

execute at @s if score @s dungeon.structure_id matches 20002 run function system:dungeon/generator/place_structure/place {structure:"system:floor2/lounge", y_offset:-55}

execute at @s if score @s dungeon.structure_id matches 20003 run function system:dungeon/generator/place_structure/place {structure:"system:floor2/oldschool", y_offset:-69}

execute at @s if score @s dungeon.structure_id matches 20004 run function system:dungeon/generator/place_structure/place {structure:"system:floor2/temple_library", y_offset:-79}

execute at @s if score @s dungeon.structure_id matches 20005 run function system:dungeon/generator/place_structure/place {structure:"system:floor2/alchemy", y_offset:-52}

execute at @s if score @s dungeon.structure_id matches 20006 run function system:dungeon/generator/place_structure/place {structure:"system:floor2/chess", y_offset:-52}

execute at @s if score @s dungeon.structure_id matches 20007 run function system:dungeon/generator/place_structure/place {structure:"system:floor2/stronghold", y_offset:-52}

execute at @s if score @s dungeon.structure_id matches 20008 run function system:dungeon/generator/place_structure/place {structure:"system:floor2/library", y_offset:-80}

execute at @s if score @s dungeon.structure_id matches 20009 run function system:dungeon/generator/place_structure/place {structure:"system:floor2/spiral_stairs", y_offset:-54}