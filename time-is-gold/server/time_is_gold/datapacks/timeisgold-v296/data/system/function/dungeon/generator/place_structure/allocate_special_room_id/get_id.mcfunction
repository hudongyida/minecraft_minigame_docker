execute unless score @s dungeon.structure_id matches 0.. store result score @s dungeon.structure_id run function system:math/random/shuffle_range/get
execute if score @s dungeon.structure_id matches 0.. run tag @s add dungeon.generator.special_room

# 랜덤 리스트에 남은 ID 값 수가 부족할 경우 초기화 후 재귀
execute as @s[scores={dungeon.structure_id=..-1}] if entity @s run function system:dungeon/generator/place_structure/allocate_special_room_id/reset_shuffle
execute as @s[scores={dungeon.structure_id=..-1}] if entity @s run function system:dungeon/generator/place_structure/allocate_special_room_id/get_id