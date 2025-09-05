# 방 클리어 완료 시 실행
# 실행 인자: @e[type=marker,tag=dungeon.marker.check]
# $(room_id)    - 방 ID

# 방 클리어 후 문 잠금 해제
execute at @s positioned ~-15 ~ ~-15 run tag @e[type=interaction,tag=dungeon.door.locked,dx=31,dy=-1024,dz=31,sort=nearest,limit=4] remove dungeon.door.locked

# 방 내 모든 플레이어에게 notify
$execute as @a[scores={system.gamemanager.player_detection.room_id=$(room_id)}] at @s run function system:dungeon/rooms/clear_check/player_notify