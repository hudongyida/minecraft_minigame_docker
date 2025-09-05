# 실행 인자: @e[type=marker,tag=dungeon.marker.check]
# $(room_id)    - 방 ID

$execute as @e[tag=monster,scores={dungeon.room_id=$(room_id)}] run data modify entity @s Glowing set value true
scoreboard players reset @s dungeon.rooms.glow_mobs.tick