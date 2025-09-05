# 실행 인자: 지뢰찾기 관리자 마커
# $(size_x)     - X 길이
# $(size_z)     - Z 길이
# $(offset_x)   - X 시작점 위치
# $(offset_z)   - Z 시작점 위치

$execute at @s align xyz positioned ~ ~ ~ positioned ~$(offset_x) ~-2 ~$(offset_z) as @e[tag=dungeon.special_rooms.minesweeper.marker,dx=$(size_x),dy=-1,dz=$(size_z)] at @s run kill @s
execute at @s align xyz positioned ~0.5 ~2.5 ~0.5 as @n[type=text_display,tag=dungeon.special_rooms.minesweeper.time_tick_display,distance=..0.1] run kill @s
kill @s