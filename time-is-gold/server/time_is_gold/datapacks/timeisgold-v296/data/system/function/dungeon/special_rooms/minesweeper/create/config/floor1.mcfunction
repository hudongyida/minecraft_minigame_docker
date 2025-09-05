# 지뢰찾기 미니게임 관리자 마커 1층 컨피그
# 실행 인자: 지뢰찾기 관리자 마커
# offset_x, offset_z    - 각각 size_x, size_z 값의 절반(소숫점 버림) * -1

### 층 설정을 변경할 경우 숫자 설정에 주의!

data modify entity @s data.level set value 1
data modify entity @s data.size_x set value 9
data modify entity @s data.size_z set value 9
data modify entity @s data.offset_x set value -4
data modify entity @s data.offset_z set value -4
data modify entity @s data.count set value 13

execute store result score @s dungeon.special_rooms.minesweeper.mine_count run data get entity @s data.count
scoreboard players set @s dungeon.special_rooms.minesweeper.time_tick 5000
scoreboard players operation @s dungeon.special_rooms.minesweeper.time_operate_by_player = @s system.gamemanager.count.player_alive
scoreboard players operation @s dungeon.special_rooms.minesweeper.time_operate_by_player *= #500 scoreboardConstant
scoreboard players operation @s dungeon.special_rooms.minesweeper.time_tick -= @s dungeon.special_rooms.minesweeper.time_operate_by_player
execute if score @s dungeon.special_rooms.minesweeper.time_tick matches ..0 run scoreboard players set @s dungeon.special_rooms.minesweeper.time_tick 500

execute positioned ~-4 ~-2 ~-4 run function system:dungeon/special_rooms/minesweeper/create/place_marker/init with entity @s data
execute positioned ~-4 ~-2 ~-4 run function system:dungeon/special_rooms/minesweeper/create/place_mine/init with entity @s data
execute positioned ~-4 ~-2 ~-4 run function system:dungeon/special_rooms/minesweeper/create/place_indicator/init with entity @s data
execute positioned ~-4 ~-2 ~-4 run function system:dungeon/special_rooms/minesweeper/create/start_pos/init with entity @s data
execute positioned ~-4 ~-1 ~-4 run fill ~ ~ ~ ~8 ~ ~8 minecraft:packed_mud