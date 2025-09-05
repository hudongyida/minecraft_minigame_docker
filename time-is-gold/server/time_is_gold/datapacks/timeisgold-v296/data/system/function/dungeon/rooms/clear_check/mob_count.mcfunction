#실행 인자: @e[type=marker,tag=dungeon.marker.check]
# $(room_id)

$scoreboard players set #ROOM_$(room_id)_TEMP dungeon.rooms.mob_count 0
$execute as @e[tag=monster,scores={dungeon.room_id=$(room_id)}] run scoreboard players add #ROOM_$(room_id)_TEMP dungeon.rooms.mob_count 1
$scoreboard players operation @s dungeon.rooms.mob_count = #ROOM_$(room_id)_TEMP dungeon.rooms.mob_count