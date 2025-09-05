# 실행 인자: 지뢰찾기 관리자 마커
# $(size_x)     - X 길이
# $(size_z)     - Z 길이
# $(offset_x)   - X 시작점 위치
# $(offset_z)   - Z 시작점 위치

# 마커 위 진흙 블록 파괴 감지
$execute as @s at @s align xyz positioned ~ ~ ~ positioned ~$(offset_x) ~-2 ~$(offset_z) as @e[type=marker,tag=dungeon.special_rooms.minesweeper.marker,dx=$(size_x),dy=-1,dz=$(size_z)] at @s if score @s dungeon.special_rooms.minesweeper.block.state matches 1 unless block ~ ~1 ~ packed_mud run tag @s add dungeon.special_rooms.minesweeper.marker.open
execute as @e[type=marker,tag=dungeon.special_rooms.minesweeper.marker.open] at @s positioned ~ ~1 ~ run function system:dungeon/special_rooms/minesweeper/operation/dfs/recur

# 시간 초과 -> 패배
execute if score @s dungeon.special_rooms.minesweeper.has_started matches 1 if score @s dungeon.special_rooms.minesweeper.time_tick matches 1.. run scoreboard players remove @s dungeon.special_rooms.minesweeper.time_tick 1
execute if score @s dungeon.special_rooms.minesweeper.time_tick matches ..0 run function system:dungeon/special_rooms/minesweeper/operation/timeout/init with entity @s data

# 마커 범위 내 블록이 파괴된 경우 게임 관리 연산 타겟으로 지정
$execute as @s at @s align xyz positioned ~ ~ ~ positioned ~$(offset_x) ~-2 ~$(offset_z) if entity @e[type=marker,tag=dungeon.special_rooms.minesweeper.marker.open,dx=$(size_x),dy=-1,dz=$(size_z)] run tag @s add dungeon.special_rooms.minesweeper.operation_target

# 블록이 파괴된 경우 게임 시작 감지
$execute as @s[tag=dungeon.special_rooms.minesweeper.operation_target] at @s if score @s dungeon.special_rooms.minesweeper.has_started matches 0 align xyz positioned ~ ~ ~ positioned ~$(offset_x) ~-2 ~$(offset_z) if entity @e[tag=dungeon.special_rooms.minesweeper.start_pos,dx=$(size_x),dy=-1,dz=$(size_z)] run tag @e[tag=dungeon.special_rooms.minesweeper.start_pos,dx=$(size_x),dy=-1,dz=$(size_z)] remove dungeon.special_rooms.minesweeper.start_pos
execute as @s[tag=dungeon.special_rooms.minesweeper.operation_target] at @s if score @s dungeon.special_rooms.minesweeper.has_started matches 0 align xyz positioned ~0.5 ~2.5 ~0.5 run summon text_display ~ ~ ~ {alignment:"center",Tags:[dungeon.special_rooms.minesweeper.time_tick_display], billboard:"center", see_through:true, text:[{"text":"⌚ ","color":"#55ff55","italic":false}, {"score":{"name":"@s", "objective":"dungeon.special_rooms.minesweeper.time_tick"},"color":"#55ff55","italic":false}]}
execute as @s[tag=dungeon.special_rooms.minesweeper.operation_target] at @s if score @s dungeon.special_rooms.minesweeper.has_started matches 0 run scoreboard players set @s dungeon.special_rooms.minesweeper.has_started 1

# 타이머 작동
scoreboard players operation @s dungeon.special_rooms.minesweeper.time_quotient = @s dungeon.special_rooms.minesweeper.time_tick
scoreboard players operation @s dungeon.special_rooms.minesweeper.time_modulo = @s dungeon.special_rooms.minesweeper.time_tick
scoreboard players operation @s dungeon.special_rooms.minesweeper.time_quotient /= #20 scoreboardConstant
scoreboard players operation @s dungeon.special_rooms.minesweeper.time_modulo %= #20 scoreboardConstant
execute at @s if score @s dungeon.special_rooms.minesweeper.time_modulo matches 0 align xyz positioned ~0.5 ~2.5 ~0.5 run scoreboard players operation @n[type=text_display,tag=dungeon.special_rooms.minesweeper.time_tick_display,distance=..0.1] dungeon.special_rooms.minesweeper.time_quotient = @s dungeon.special_rooms.minesweeper.time_quotient
execute at @s if score @s dungeon.special_rooms.minesweeper.time_modulo matches 0 align xyz positioned ~0.5 ~2.5 ~0.5 as @n[type=text_display,tag=dungeon.special_rooms.minesweeper.time_tick_display,distance=..0.1] run data modify entity @s text set value [{"text":"⌚ ","color":"#55ff55","italic":false}, {"score":{"name":"@s", "objective":"dungeon.special_rooms.minesweeper.time_quotient"}}]

# 지뢰 위 블록이 파괴된 경우 -> 패배
$execute as @s[tag=dungeon.special_rooms.minesweeper.operation_target] at @s align xyz positioned ~ ~ ~ positioned ~$(offset_x) ~-2 ~$(offset_z) if entity @e[tag=dungeon.special_rooms.minesweeper.marker.open,tag=dungeon.special_rooms.minesweeper.mine,dx=$(size_x),dy=-1,dz=$(size_z)] run function system:dungeon/special_rooms/minesweeper/operation/failed/init with entity @s data

# 남은 블록 수 계산 후 블록 수 == 지뢰 수라면 -> 승리
execute as @s[tag=dungeon.special_rooms.minesweeper.operation_target] at @s run function system:dungeon/special_rooms/minesweeper/operation/count_blocks/init with entity @s data
execute as @s[tag=dungeon.special_rooms.minesweeper.operation_target] at @s if score @s dungeon.special_rooms.minesweeper.block_count <= @s dungeon.special_rooms.minesweeper.mine_count run function system:dungeon/special_rooms/minesweeper/operation/success/init with entity @s data

execute as @e[tag=dungeon.special_rooms.minesweeper.marker.open] run tag @s remove dungeon.special_rooms.minesweeper.marker.open
tag @s[tag=dungeon.special_rooms.minesweeper.operation_target] remove dungeon.special_rooms.minesweeper.operation_target