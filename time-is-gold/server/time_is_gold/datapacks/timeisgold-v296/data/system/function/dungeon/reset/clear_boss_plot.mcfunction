# 현재 위치에 배치된 보스 방 구조물을 삭제하는 함수.

execute positioned ~ ~ ~ run fill ~ ~ ~ ~48 -64 ~48 air strict
execute positioned ~ ~ ~ run fillbiome ~ ~ ~ ~48 -64 ~48 minecraft:plains

execute positioned ~ ~ ~ run kill @e[type=#system:room_component,dx=48,dy=-256,dz=48]
execute positioned ~ ~ ~ run kill @e[tag=dungeon.npc,dx=48,dy=-256,dz=48]