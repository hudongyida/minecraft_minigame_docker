# 실행 인자: @e[type=marker,tag=dungeon.marker.check]

function system:dungeon/rooms/clear_check/mob_count with entity @s data

execute if score @s dungeon.rooms.mob_count matches ..0 run function system:dungeon/rooms/clear_check/terminate with entity @s data
execute if score @s dungeon.rooms.mob_count matches ..0 run kill @s