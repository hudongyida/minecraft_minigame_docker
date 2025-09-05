# 구조물 ID에 따라 특수 방을 배치하는 함수.
# 실행 인자: @e[type=armor_stand,tag=dungeon.generator.special_room,tag=dungeon.generator.structure_place_target]

tag @s remove dungeon.generator.structure_place_target

execute if score @s dungeon.structure_id matches 0 at @s run function system:dungeon/generator/place_structure/place {structure:"system:special_rooms/shop", y_offset:-55}
execute if score @s dungeon.structure_id matches 1 at @s run function system:dungeon/generator/place_structure/place {structure:"system:special_rooms/chest_cave", y_offset:-55}
execute if score @s dungeon.structure_id matches 2 at @s run function system:dungeon/generator/place_structure/place {structure:"system:special_rooms/supply", y_offset:-55}

execute if score @s dungeon.structure_id matches 3 at @s run function system:dungeon/generator/place_structure/place {structure:"system:special_rooms/minesweeper", y_offset:-56}
execute if score @s dungeon.structure_id matches 4 at @s run function system:dungeon/generator/place_structure/place {structure:"system:special_rooms/black_market", y_offset:-61}
execute if score @s dungeon.structure_id matches 5 at @s run function system:dungeon/generator/place_structure/place {structure:"system:special_rooms/quiet_forest", y_offset:-55}

execute if score @s dungeon.structure_id matches 1000 at @s run function system:dungeon/generator/place_structure/place {structure:"system:floor0/entrance", y_offset:-55}
execute if score @s dungeon.structure_id matches 1001 at @s run function system:dungeon/generator/place_structure/place {structure:"system:floor0/boss_portal", y_offset:-51}

execute if score @s dungeon.structure_id matches 10000 at @s run function system:dungeon/generator/place_structure/place {structure:"system:floor1/entrance", y_offset:-55}
execute if score @s dungeon.structure_id matches 10001 at @s run function system:dungeon/generator/place_structure/place {structure:"system:floor1/boss_portal", y_offset:-55}

execute if score @s dungeon.structure_id matches 20000 at @s run function system:dungeon/generator/place_structure/place {structure:"system:floor2/entrance", y_offset:-55}
execute if score @s dungeon.structure_id matches 20001 at @s run function system:dungeon/generator/place_structure/place {structure:"system:floor2/boss_portal", y_offset:-55}

#execute if score @s dungeon.structure_id matches 30000 at @s run function system:dungeon/generator/place_structure/place {structure:"system:floor3/entrance", y_offset:-55}
#execute if score @s dungeon.structure_id matches 30001 at @s run function system:dungeon/generator/place_structure/place {structure:"system:floor3/boss_portal", y_offset:-55}