# 현재 위치에 배치된 던전 구조물을 삭제하는 함수.

execute positioned ~ ~ ~ run fill ~ ~ ~ ~31 -64 ~31 air strict
execute positioned ~ ~ ~ run fillbiome ~ ~ ~ ~31 -64 ~31 minecraft:plains

execute positioned ~ ~ ~ run kill @e[type=#system:room_component,dx=48,dy=-256,dz=48]
execute positioned ~ ~ ~ run kill @e[tag=dungeon.npc,dx=48,dy=-256,dz=48]