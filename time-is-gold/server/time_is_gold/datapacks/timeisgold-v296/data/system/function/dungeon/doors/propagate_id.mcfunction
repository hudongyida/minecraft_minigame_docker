# 방 안에 있는 모든 몬스터 소환 마커에 방 ID 전파 및 태그 부여

$execute at @s positioned ~-14 ~ ~-14 as @e[tag=dungeon.operation_pos,dx=27,dz=27,y=-64,dy=500] run scoreboard players set @s dungeon.room_id $(room_id)
execute at @s positioned ~-14 ~ ~-14 as @e[tag=dungeon.operation_pos,dx=27,dz=27,y=-64,dy=500] run tag @s add dungeon.operation_check