# 실행 인자: system.dungeon.marker.check 마커

execute store result entity @s data.room_id int 1 run scoreboard players add #SYSTEM dungeon.room_id 1
execute at @s run scoreboard players operation @n[type=armor_stand,tag=dungeon.room.center,distance=..0.5] dungeon.room_id = #SYSTEM dungeon.room_id