# 지뢰찾기 관리자 마커에 현재 남은 블록 수 저장

execute as @s run scoreboard players set @s dungeon.special_rooms.minesweeper.block_count 0
$execute as @s at @s align xyz positioned ~$(offset_x) ~-2 ~$(offset_z) as @e[tag=dungeon.special_rooms.minesweeper.marker,dx=$(size_x),dy=-1,dz=$(size_z)] at @s run function system:dungeon/special_rooms/minesweeper/operation/count_blocks/add_count with entity @s data