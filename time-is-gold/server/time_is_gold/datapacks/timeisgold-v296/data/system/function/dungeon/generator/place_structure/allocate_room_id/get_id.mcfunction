execute unless score @s dungeon.structure_id matches 0.. store result score @s dungeon.structure_id run function system:math/random/shuffle_range/get

# 랜덤 리스트에 남은 ID 값 수가 부족할 경우 초기화 후 재귀
execute unless score @s dungeon.structure_id matches 0.. run function system:dungeon/generator/place_structure/allocate_room_id/reset_shuffle
execute unless score @s dungeon.structure_id matches 0.. run function system:dungeon/generator/place_structure/allocate_room_id/get_id