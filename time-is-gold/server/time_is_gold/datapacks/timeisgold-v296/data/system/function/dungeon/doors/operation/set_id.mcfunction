# 소환된 마커에 방 ID 할당 및 operation_pos 갑옷 거치대에 전달
# 실행 인자: @e[type=marker,tag=dungeon.marker.check.pre]

execute at @s run function system:dungeon/rooms/assign_id
execute at @s run function system:dungeon/doors/propagate_id with entity @s data
execute at @s positioned ~-15 ~ ~-15 run tag @e[type=interaction,dx=31,dy=-1024,dz=31,tag=dungeon.door,tag=!dungeon.door.open.opposite,sort=nearest,limit=4] add dungeon.door.locked
tag @s remove dungeon.marker.check.pre