# 지뢰찾기 미니게임 성공 시 실행되는 함수
# 실행 인자: 지뢰찾기 관리자 마커
# $(size_x)     - X 길이
# $(size_z)     - Z 길이
# $(offset_x)   - X 시작점 위치
# $(offset_z)   - Z 시작점 위치

execute as @a at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2
tellraw @a [{"text": "太棒了！ ","color":"dark_green","bold":true},{"text":"你成功及时发现了所有隐藏的炸弹！","color":"green","bold":false}]

execute at @s positioned ~-1 ~ ~-1 as @n[type=marker,tag=dungeon.special_rooms.minesweeper.reward_display.marker,dx=3,dy=16,dz=3] at @s run function system:dungeon/special_rooms/minesweeper/reward_display/success/init
execute at @s run function system:dungeon/special_rooms/minesweeper/operation/finish_game with entity @s data