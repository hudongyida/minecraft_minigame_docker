# 방 내에 있는 모든 플레이어들에게 방 번호 스코어보드 부여
### 주의 - 방 크기 27x27에 하드코딩 되어 있음.

# 방을 나가면 스코어보드 초기화
execute as @a[gamemode=!spectator] if score @s system.gamemanager.player_detection.room_id matches 0.. run scoreboard players reset @s system.gamemanager.player_detection.room_id
execute as @a[gamemode=!spectator] if score @s system.gamemanager.player_detection.structure_id matches 0.. run scoreboard players reset @s system.gamemanager.player_detection.structure_id

execute as @e[type=armor_stand,tag=dungeon.room.center] if score @s dungeon.room_id matches 0.. at @s positioned ~-13 ~ ~-13 run scoreboard players operation @a[dx=27,dy=-1024,dz=27] system.gamemanager.player_detection.room_id = @s dungeon.room_id
execute as @e[type=armor_stand,tag=dungeon.room.center] if score @s dungeon.structure_id matches 0.. at @s positioned ~-13 ~ ~-13 run scoreboard players operation @a[dx=27,dy=-1024,dz=27] system.gamemanager.player_detection.structure_id = @s dungeon.structure_id