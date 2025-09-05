# 문이 열릴 때 클리어 체크 마커를 소환하는 함수.
# 실행 인자: @e[type=armor_stand,tag=dungeon.room.center]

summon marker ~ ~ ~ {Tags:[dungeon.marker.check, dungeon.marker.check.pre], data:{room_id:0}}
execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=marker,tag=dungeon.marker.check.pre,dx=0] run scoreboard players operation @s dungeon.rooms.glow_mobs.tick = #SYSTEM dungeon.rooms.glow_mobs.tick
execute positioned ~-0.5 ~-0.5 ~-0.5 store result entity @n[type=marker,tag=dungeon.marker.check.pre,dx=0] data.room_id int 1 run scoreboard players get @s dungeon.room_id