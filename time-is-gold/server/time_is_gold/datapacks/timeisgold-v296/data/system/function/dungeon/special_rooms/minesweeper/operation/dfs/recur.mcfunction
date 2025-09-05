# 실행 위치: 마커 1칸 위(진흙 블록 위치)

execute positioned ~ ~ ~ run fill ~ ~ ~ ~ ~ ~ air destroy
execute positioned ~ ~-1 ~ as @n[type=marker,tag=dungeon.special_rooms.minesweeper.marker,distance=..0.1] run scoreboard players set @s dungeon.special_rooms.minesweeper.block.state 0

execute positioned ~ ~-1 ~ as @n[type=marker,tag=dungeon.special_rooms.minesweeper.marker,distance=..0.1] if score @s dungeon.special_rooms.minesweeper.nearby_mine matches 1.. at @s run function system:dungeon/special_rooms/minesweeper/operation/display_count/init

execute positioned ~ ~ ~ if block ~ ~-1 ~ white_concrete positioned ~1 ~ ~ if block ~ ~ ~ packed_mud positioned ~ ~-1 ~ if entity @n[type=marker,tag=dungeon.special_rooms.minesweeper.marker,distance=..0.1] positioned ~ ~1 ~ run function system:dungeon/special_rooms/minesweeper/operation/dfs/recur
execute positioned ~ ~ ~ if block ~ ~-1 ~ white_concrete positioned ~-1 ~ ~ if block ~ ~ ~ packed_mud positioned ~ ~-1 ~ if entity @n[type=marker,tag=dungeon.special_rooms.minesweeper.marker,distance=..0.1] positioned ~ ~1 ~ run function system:dungeon/special_rooms/minesweeper/operation/dfs/recur
execute positioned ~ ~ ~ if block ~ ~-1 ~ white_concrete positioned ~ ~ ~1 if block ~ ~ ~ packed_mud positioned ~ ~-1 ~ if entity @n[type=marker,tag=dungeon.special_rooms.minesweeper.marker,distance=..0.1] positioned ~ ~1 ~ run function system:dungeon/special_rooms/minesweeper/operation/dfs/recur
execute positioned ~ ~ ~ if block ~ ~-1 ~ white_concrete positioned ~ ~ ~-1 if block ~ ~ ~ packed_mud positioned ~ ~-1 ~ if entity @n[type=marker,tag=dungeon.special_rooms.minesweeper.marker,distance=..0.1] positioned ~ ~1 ~ run function system:dungeon/special_rooms/minesweeper/operation/dfs/recur