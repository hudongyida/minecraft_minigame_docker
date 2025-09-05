# 던전 층을 생성하는 함수.

execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["dungeon.generator.marker.manager"], data:{x:0, z:0, vertex_len:27, edge_len:5, distance:32, floor:0, uuid:0}}

execute positioned ~ ~ ~ as @n[type=marker,tag=dungeon.generator.marker.manager,distance=..0.5] run function system:utils/uuid_tokenizer/init
execute positioned ~ ~ ~ as @n[type=marker,tag=dungeon.generator.marker.manager,distance=..0.5] run data modify entity @s data.uuid set from storage timeisgold:uuid_tokenizer output
execute positioned ~ ~ ~ as @n[type=marker,tag=dungeon.generator.marker.manager,distance=..0.5] store result entity @s data.floor int 1 run scoreboard players get #SYSTEM dungeon.floor

execute positioned ~ ~ ~ as @n[type=marker,tag=dungeon.generator.marker.manager,distance=..0.5] store result entity @s data.x int 1 run scoreboard players get #SYSTEM dungeon.size_x
execute positioned ~ ~ ~ as @n[type=marker,tag=dungeon.generator.marker.manager,distance=..0.5] store result entity @s data.z int 1 run scoreboard players get #SYSTEM dungeon.size_z

execute positioned ~ ~ ~ as @n[type=marker,tag=dungeon.generator.marker.manager,distance=..0.5] run function system:dungeon/generator/place_marker/init with entity @s data
#execute positioned ~ ~ ~ as @e[type=marker,tag=dungeon.generator.marker.manager,sort=nearest,distance=..0.5,limit=1] as @e[type=armor_stand,tag=bfs.vertex,sort=random,limit=1] run tag @s add bfs.vertex.root
execute positioned ~ ~ ~ as @n[type=marker,tag=dungeon.generator.marker.manager,distance=..0.5] at @n[type=armor_stand,tag=bfs.vertex] run function system:dungeon/generator/graphtotree/init with entity @s data