# offset_x, offset_z    - 각각 size_x, size_z 값의 절반(소숫점 버림) * -1

### 층 설정을 변경할 경우 숫자 설정에 주의!

execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:[dungeon.special_rooms.marker.minesweeper_manager], data:{level:0, size_x:0, size_z:0, offset_x:0, offset_z:0, count:0, manageruuid:""}}
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=marker,tag=dungeon.special_rooms.marker.minesweeper_manager,distance=..0.1] run function system:utils/uuid_tokenizer/init
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=marker,tag=dungeon.special_rooms.marker.minesweeper_manager,distance=..0.1] run data modify entity @s data.manageruuid set from storage timeisgold:uuid_tokenizer output
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=marker,tag=dungeon.special_rooms.marker.minesweeper_manager,distance=..0.1] run scoreboard players set @s dungeon.special_rooms.minesweeper.has_started 0

execute unless score #SYSTEM dungeon.floor matches 0.. align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=marker,tag=dungeon.special_rooms.marker.minesweeper_manager] run function system:dungeon/special_rooms/minesweeper/create/config/floor1
execute if score #SYSTEM dungeon.floor matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=marker,tag=dungeon.special_rooms.marker.minesweeper_manager] run function system:dungeon/special_rooms/minesweeper/create/config/floor1
execute if score #SYSTEM dungeon.floor matches 2 align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=marker,tag=dungeon.special_rooms.marker.minesweeper_manager] run function system:dungeon/special_rooms/minesweeper/create/config/floor2