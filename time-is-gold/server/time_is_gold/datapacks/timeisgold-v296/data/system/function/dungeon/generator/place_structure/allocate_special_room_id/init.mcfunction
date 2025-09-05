# 실행 인자: @e[type=marker,tag=dungeon.generator.marker.manager]

scoreboard players set @s dungeon.generator.special_rooms_count 0
function system:dungeon/generator/place_structure/allocate_special_room_id/reset_shuffle

execute if score @s dungeon.generator.special_rooms_count < #SYSTEM dungeon.max_special_rooms run function system:dungeon/generator/place_structure/allocate_special_room_id/tag_targets

execute as @e[type=armor_stand,tag=bfs.vertex.leaf,tag=dungeon.generator.allocate_special_room_id_target] run function system:dungeon/generator/place_structure/allocate_special_room_id/get_id

execute as @e[type=armor_stand,tag=dungeon.generator.allocate_special_room_id_target] run tag @s remove dungeon.generator.allocate_special_room_id_target